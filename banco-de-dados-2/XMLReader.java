import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class XMLReader extends DefaultHandler {

    private int titleCounter;
    private Set<String> authors;
    private StringBuilder stringBuilder;

    @Override
    public void startDocument() throws SAXException {
        authors = new HashSet<>();
        titleCounter = 0;
        stringBuilder = new StringBuilder();
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        stringBuilder.setLength(0);
    }
    
    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        stringBuilder.append(ch,start, length);
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        
        if (qName.equals("title"))
            titleCounter++;
        
        if (qName.equals("author"))
            authors.add(stringBuilder.toString());
    }

    @Override
    public void endDocument() throws SAXException {
        System.out.println("Número de pesquisas: " + titleCounter);
        System.out.println(Arrays.toString(authors.toArray()));
    }
    
    public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
        SAXParserFactory.newInstance().newSAXParser().parse(args[0], new XMLReader());
    }

}
