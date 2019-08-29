package convert;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.FileOutputStream;

/**
 * @author WuJing
 * @version 0.1
 * @since 2019-08-28
 */
public class TutorialsLibraryConvert {

    public static void main(String[] args) throws Exception {
        String filePath = "/Users/wujing/Workspaces/idea/tutorials/html/chapters";
        String toPath = "/Users/wujing/Workspaces/idea/tutorials/markdown/catalog/";
        File[] lists = new File(filePath).listFiles();
        for (File file : lists) {
            String toFileName = file.getName();
            String fileName =filePath + "/"+ file.getName();
            toFileName = toFileName.replaceAll(".html",".md");
            toFileName = toFileName.replaceAll(".htm",".md");
            toFileName = toPath + "/" +  toFileName;
            System.out.println(fileName);

            String str = main(fileName);
            FileOutputStream outputStream = new FileOutputStream(new File(toFileName));
            outputStream.write(str.getBytes());
            outputStream.close();
        }

    }

    public static String main(String fileName) throws Exception {

        StringBuffer strBuff = new StringBuffer();

        File input = new File(fileName);
        Document doc = Jsoup.parse(input, "UTF-8", "https://www.tutorialspoint.com");

        String title = "";
        String sub_title = "";

        Elements h2s = doc.select(".home-intro-sub h2");
        for (Element h2 : h2s) {
            title = h2.text();
        }
        Elements sub_titles = doc.select(".home-intro-sub p");
        for (Element p : sub_titles) {
            sub_title = p.text();
        }


        strBuff.append("## " + title + "\n");
        strBuff.append("### " + sub_title + "\n");

        Elements links = doc.select(".course-box a");
        for (Element link : links) {
            String link_href = link.attr("href");
            String link_title = link.attr("title");
            String link_img = "";
            String link_alt = "";

            Elements imgs = link.select("img");
            for (Element img : imgs) {
                link_img = img.attr("src");
                link_alt = img.attr("alt");
            }
            if (link_href != null && link_href.startsWith("https://www.tutorialspoint.com")) {
                link_href = link_href.replaceFirst("https://www.tutorialspoint.com", "");
            }
            if (link_img != null && !link_img.startsWith("https://www.tutorialspoint.com")) {
                link_img = "https://www.tutorialspoint.com" + link_img;
            }


            strBuff.append("* [" + link_title + "](" + link_href + ") <!--" + link_img + "--> " + "\n");

        }

        return strBuff.toString();
    }
}
