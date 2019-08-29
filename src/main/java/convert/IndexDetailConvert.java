package convert;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author WuJing
 * @version 0.1
 * @since 2019-08-28
 */
public class IndexDetailConvert {

    static String baseUri = "https://www.tutorialspoint.com";
    static Stack<String> STACK = new Stack<String>();

    public static void main(String[] args){
        String parentName = "/Users/wujing/Workspaces/idea/tutorials/html/tutorials";
        getFile(new File(parentName));

        if(STACK.size() > 0) {
            for (int i = 0; i < 5; i++) {
                new Thread(() -> {
                    while(!STACK.empty()) {
                        String fileName = STACK.pop();
                        System.out.println("=======" + STACK.size() + "======");
                        try {
                            main222(fileName);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
            }
        }
    }

    private static void getFile(File file) {
        if(file.exists()) {
            if(file.isFile() && file.getName().endsWith("index.htm")) {
                STACK.push(file.getAbsolutePath());
            } else if(file.isDirectory()) {
                File[] files = file.listFiles();
                for (File file2 :files) {
                    getFile(file2);
                }
            }
        }
    }

    public static void main222(String fileName) throws Exception {
        File input = new File(fileName);
        String parentPathName = input.getParentFile().getAbsolutePath();

        Document doc = Jsoup.parse(input, "UTF-8", baseUri);

        List<Model> list = new ArrayList<Model>();
        Elements uls = doc.select(".tutorial-toc .chapters");
        for (Element ul : uls) {
            Element titleElement = ul.selectFirst(".heading");

            Model parentModel = new Model();
            list.add(parentModel);

            if (titleElement != null) {
                String title = titleElement.text();
                parentModel.setTitle(title);
            }

            Elements links = ul.select("a");
            if (links.size() > 0) {
                parentModel.setChildren(new ArrayList<Model>(links.size()));
            }

            for (Element link : links) {
                String text = link.text();
                String href = link.attr("href");
                Model model = new Model();
                model.setTitle(text);
                if(!href.startsWith(baseUri)) {
                    model.setUrl(baseUri + "/" + href);
                }
                parentModel.getChildren().add(model);
            }
        }

        storeList2File(list, parentPathName);
    }

    private static void storeList2File(List<Model> list, String parentPathName) {
        if (list.size() > 0) {
            for (Model model : list) {
                if(model.getUrl() != null) {
                    String url = model.getUrl();
                    String urlFileName = url;
                    if(urlFileName.contains("/")) {
                        urlFileName = urlFileName.substring(urlFileName.lastIndexOf("/") + 1);
                    }
                    String toFileName = parentPathName + "/" + urlFileName;
                    System.out.println(url + " : " +toFileName);
                    if(!new File(toFileName).exists()) {
                        storeUrl2File(url, toFileName);
                    }
                }
                if(model.getChildren() != null) {
                    storeList2File(model.getChildren(), parentPathName);
                }
            }
        }
    }

    public static void storeUrl2File(String urlStr, String fileName) {
        try {
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            //设置超时间为3秒
            conn.setConnectTimeout(3 * 1000);
            //防止屏蔽程序抓取而返回403错误
            conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
            //得到输入流
            InputStream inputStream = conn.getInputStream();

            File file = new File(fileName);
            if (file.exists()) {
                file.delete();
            }

            FileOutputStream fileOutputStream = new FileOutputStream(file);

            byte[] buffer = new byte[1024];
            int len = 0;
            while ((len = inputStream.read(buffer)) != -1) {
                fileOutputStream.write(buffer, 0, len);
            }
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static class Model {
        String title;
        String url;
        List<Model> children;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public List<Model> getChildren() {
            return children;
        }

        public void setChildren(List<Model> children) {
            this.children = children;
        }
    }
}
