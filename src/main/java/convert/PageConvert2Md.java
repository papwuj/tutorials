package convert;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

/**
 * @author WuJing
 * @version 0.1
 * @since 2019-08-28
 */
public class PageConvert2Md {

    static String baseUri = "https://www.tutorialspoint.com";

    public static void main(String[] args) throws Exception {
        File input = new File("E:\\Workspaces\\Idea\\tutorials\\html\\tutorials\\yaml\\yaml_comments.htm");

        Document doc = Jsoup.parse(input, "UTF-8", baseUri);

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
                            String href = link.attr("href");
                            if(href != null) {
                                href = href.replace(".htm",".md");
                                href = ".." + href;
                            }
                            String text = link.text();
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
                    for (Element p: ps) {
                        String text = parseMdText(p);
                        buffer.append("   * " + text + "\n");
                    }
                }
                if("pre".equals(child.tagName())) {
                    String text = child.text();
                    buffer.append("```" + "\n");
                    buffer.append(text + "\n");
                    buffer.append("```" + "\n");
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

        System.out.println(buffer.toString());
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
        }
        return stringBuffer.toString();
    }

}
