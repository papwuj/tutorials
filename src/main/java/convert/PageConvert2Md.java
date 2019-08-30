package convert;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * @author WuJing
 * @version 0.1
 * @since 2019-08-28
 */
public class PageConvert2Md {

    static String BASE_URI = "https://www.tutorialspoint.com";
    static String PAGE_PATH = "/Users/wujing/Workspaces/idea/tutorials/html/tutorials";
    static String MARKDOWN_PATH = "/Users/wujing/Workspaces/idea/tutorials/markdown/tutorials";
    static boolean OVERRIDE_FILE = false;
    static ExecutorService pool = Executors.newFixedThreadPool(5);

    public static void main(String[] args) throws Exception{
        parseDirectory(new File("/Users/wujing/Workspaces/idea/tutorials/html/tutorials"));
    }

    public static void parseDirectory(File parentFile) throws Exception {
        if(parentFile.exists()) {
            File[] files = parentFile.listFiles();
            for (File file: files) {
                if(file.isFile()) {
                    if(file.getName().endsWith(".htm")) {
                        // parseFile(file.getAbsolutePath());
//                        System.out.println(file.getAbsolutePath());
                        parseFileThread(file.getAbsolutePath());
                    }
                } else {
                    parseDirectory(file);
                }
            }
        }
    }

    private static void parseFileThread(String absolutePath) {
        pool.execute(new MyThread(absolutePath));
    }

    public static void parseFile(String fileName) throws Exception {

        String newFileName = fileName.replaceFirst(PAGE_PATH, MARKDOWN_PATH).replace(".htm",".md");
        System.out.println("Parse File " + fileName + " to " + newFileName);

        if(new File(newFileName).exists() && !OVERRIDE_FILE) {
            return;
        }

        File input = new File(fileName);

        Document doc = Jsoup.parse(input, "UTF-8", BASE_URI);

        StringBuffer buffer = new StringBuffer();
        Element contentElement = doc.selectFirst(".tutorial-content");
        if(contentElement != null) {
            Elements children = contentElement.children();
            for (Element child: children) {
                if("div".equals(child.tagName())) {
                    String clazz = child.attr("class");
                    if("cover".equals(clazz)) {
                        continue;
                    }
                    if(clazz.contains("tutorial-menu")) {
                        Elements links = child.select(".tp-btn a");
                        for (Element link: links) {
                            String text = link.text();
                            String href = link.attr("href");

//                            if("PDF Version".equals(text)) {
//                                href = getPdfFile(href);
//                                if(href == null) {
//                                    href = link.attr("href");
//                                }
//                            }
                            if(href != null) {
                                href = href.replace(".htm",".md");
                                href = ".." + href;
                            }
                            buffer.append("["+text+"]("+href+")" + "\n");
                        }
                        buffer.append("\n");
                    }
                }
                if("h1".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("# " +text+ "\n");
                }
                if("h2".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("## " +text+ "\n");
                }
                if("h3".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("### " +text+ "\n");
                }
                if("h4".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("#### " +text+ "\n");
                }
                if("h5".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("##### " +text+ "\n");
                }
                if("h6".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("###### " +text+ "\n");
                }
                if("h7".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("####### " +text+ "\n");
                }
                if("p".equals(child.tagName())) {
                    String text = parseMdText(child);
                    buffer.append(text + "\n\n");
                }
                if("ul".equals(child.tagName()) && "list".equals(child.attr("class"))) {
                    Elements ps = child.select("p");
                    if(ps != null && ps.size() > 0) {
                        for (Element p: ps) {
                            String text = parseMdText(p);
                            buffer.append("   * " + text + "\n");
                        }
                    } else {
                        Elements lis = child.select("li");
                        if(lis != null && lis.size() > 0) {
                            for (Element li: lis) {
                                String text = parseMdText(li);
                                buffer.append("   * " + text + "\n");
                            }
                        }
                    }

                    buffer.append("\n");
                }
                if("pre".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("```" + "\n");
                    buffer.append(text + "\n");
                    buffer.append("```" + "\n");
                }
                if("img".equals(child.tagName())) {
                    String src = child.attr("src");
                    String alt = child.attr("alt");

                    String imgSourcePath = BASE_URI + src;
                    String imgFilePath = MARKDOWN_PATH + src;

                    saveFile(imgSourcePath, imgFilePath, 5 * 1000);

                    src = ".." + src;

                    buffer.append("!["+alt+"]("+src+")\n\n");
                }

                if("iframe".equals(child.tagName())) {
                    String src = child.attr("src");
                    String height = child.attr("height");
                    String width = child.attr("width");

                    if(height == null || "".equals(height)) {
                        height = "200px";
                    }
                    if(width == null || "".equals(width)) {
                        width = "300px";
                    }

                    String sourcePath = BASE_URI + src;
                    String filePath = MARKDOWN_PATH + src;
                    saveFile(sourcePath, filePath, 5 * 1000);

                    src = ".." + src;
                    buffer.append("<iframe style=\"margin:5px;\" frameborder=\"0\" scrolling=\"0\" width=\""+width+"\" height=\""+height+"\" src=\""+src+"\"></iframe>\n\n");
                }
            }
        }

        buffer.append("\n");
        Element preElement = doc.selectFirst(".pre-btn a");
        if(preElement != null) {
            String href = preElement.attr("href");
            if(href != null) {
                href = href.replace(".htm",".md");
                href = ".." + href;
            }
            String text = preElement.text();
            buffer.append("["+text+"]("+href+")" + " ");
        }
        Element nxtElement = doc.selectFirst(".nxt-btn a");
        if(nxtElement != null) {
            String href = nxtElement.attr("href");
            if(href != null) {
                href = href.replace(".htm",".md");
                href = ".." + href;
            }
            String text = nxtElement.text();
            buffer.append("["+text+"]("+href+")" + " ");
        }
        buffer.append("\n");

        store2File(buffer, newFileName);
    }
    private static String parseMdText(Element p) {
        StringBuffer stringBuffer = new StringBuffer();
        List<Node> subps = p.childNodes();
        for (Node subp: subps) {
            String text = subp.nodeName();
            if("#text".equals(text)) {
                stringBuffer.append(subp.toString());
            }
            else if("b".equals(text)) {
                stringBuffer.append("**"+((Element) subp).text()+"**");
            }
            else if("a".equals(text)) {
                Element link = (Element) subp;
                String linkText = link.text();
                String linkHref = link.attr("href");
                stringBuffer.append("["+linkText+"]("+linkHref+") ");
            }
        }
        return stringBuffer.toString();
    }

    public static void store2File(StringBuffer contentStr, String fileName) {
        try {
            InputStream inputStream = new ByteArrayInputStream(contentStr.toString().getBytes());

            File file = new File(fileName);
            if (file.exists()) {
                file.delete();
            }

            File parentFile = file.getParentFile();
            if(!parentFile.exists()) {
                parentFile.mkdirs();
            }

            FileOutputStream fileOutputStream = new FileOutputStream(file);

            synchronized (PageConvert2Md.class) {
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len = inputStream.read(buffer)) != -1) {
                    fileOutputStream.write(buffer, 0, len);
                }
                fileOutputStream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void saveFile(String urlStr, String filePath, int timeout) {
        try {

            File file = new File(filePath);
            if(file.exists()) {
                return;
            }

            File parent = file.getParentFile();
            if(!parent.exists()) {
                parent.mkdirs();
            }

            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            //设置超时间为3秒
            conn.setConnectTimeout(timeout);
            //防止屏蔽程序抓取而返回403错误
            conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
            //得到输入流
            InputStream inputStream = conn.getInputStream();

            synchronized (PageConvert2Md.class) {
                byte[] buffer = new byte[1024];
                int len = 0;
                OutputStream bos = new FileOutputStream(file);
                while((len = inputStream.read(buffer)) != -1) {
                    bos.write(buffer, 0, len);
                }
                bos.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String getPdfFile(String href)  {
        String retUrl = null;
        try{
            String pdfUrl = BASE_URI + href;
            Document doc = Jsoup.connect(pdfUrl).get();
            Element element = doc.selectFirst(".sub_pdf a");
            if(element != null) {
                String pdfHref = element.attr("href");
                retUrl = ".." + pdfHref;
                if(pdfHref != null && !"".equals(pdfHref)) {
                    pdfHref = BASE_URI + pdfHref;
                    String pdfFileName = pdfHref.replaceAll(BASE_URI, MARKDOWN_PATH);
                    if(!new File(pdfFileName).exists()) {
                        saveFile(pdfHref, pdfFileName, 5 * 1000);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retUrl;
    }


    static class MyThread extends Thread {
        static int index = 0;
        static int indexInit = 0;
        String filePath;
        public MyThread(String filePath){
            this.filePath = filePath;
            indexInit++;
            System.out.println(indexInit + "：正在执行初始化方法。");
        }
        @Override
        public void run() {
            try{
                index++;
                System.out.println(index + "：正在执行解析方法。" + filePath);
                parseFile(filePath);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
