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
public class IndexConvert {

    static Stack<FileVo> LISTS = new Stack<FileVo>();


    public static void main(String[] args) throws Exception {
        String filePath = "/Users/wujing/Workspaces/idea/tutorials/markdown/tutorials/all_list.txt";
        String toFilePath = "/Users/wujing/Workspaces/idea/tutorials/html/tutorials";
        BufferedReader reader = new BufferedReader(new FileReader(filePath));

        Pattern pattern = Pattern.compile("https://www.tutorialspoint.com/(.*)/index.htm");

        String line = null;

        while ((line = reader.readLine()) != null) {
            Matcher matcher = pattern.matcher(line);
            if(matcher.matches()) {
                String title = matcher.group(1);

                FileVo vo = new FileVo();
                vo.setTitle(title);
                vo.setUrl(line);
                LISTS.push(vo);
            }
        }

        if(LISTS.size() > 0) {
            for (int i = 0; i < 5; i++) {
                new Thread(() -> {
                    while(!LISTS.empty()) {
                        FileVo vo = LISTS.pop();
                        String title2 = vo.getTitle();
                        String url2 = vo.getUrl();

                        String toParentName = toFilePath + "/" + title2;
                        File parent = new File(toParentName);
                        if(!parent.exists()) {
                            parent.mkdirs();
                        }
                        String toFileName = toFilePath + "/" + title2 + "/index.htm";
                        System.out.println(LISTS.size() + " : " + toFileName);
                        if(!new File(toFileName).exists()) {
                            storeUrl2File(url2, toFileName);
                        }
                    }
                }).start();
            }
        }


    }

    public static String readFileByUrl(String urlStr) {
        String res=null;
        try {
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            //设置超时间为3秒
            conn.setConnectTimeout(3*1000);
            //防止屏蔽程序抓取而返回403错误
            conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
            //得到输入流
            InputStream inputStream = conn.getInputStream();
            res = readInputStream(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
    /**
     * 从输入流中获取字符串
     * @param inputStream
     * @return
     * @throws IOException
     */
    public static String readInputStream(InputStream inputStream) throws IOException {
        byte[] buffer = new byte[1024];
        int len = 0;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        while((len = inputStream.read(buffer)) != -1) {
            bos.write(buffer, 0, len);
        }
        bos.close();
        return new String(bos.toByteArray(),"utf-8");
    }

    public static void storeUrl2File(String urlStr, String fileName) {
        try {
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            //设置超时间为3秒
            conn.setConnectTimeout(3*1000);
            //防止屏蔽程序抓取而返回403错误
            conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
            //得到输入流
            InputStream inputStream = conn.getInputStream();

            File file = new File(fileName);
            if(file.exists()) {
                file.delete();
            }

            FileOutputStream fileOutputStream = new FileOutputStream(file);

            byte[] buffer = new byte[1024];
            int len = 0;
            while((len = inputStream.read(buffer)) != -1) {
                fileOutputStream.write(buffer, 0, len);
            }
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static class FileVo {
        String title;
        String url;

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
    }
}
