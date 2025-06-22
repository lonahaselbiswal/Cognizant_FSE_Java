public class FactoryTest {
    public static void main(String[] args) {
        //For PDF Document
        DocumentFactory factory = new PdfFactory();
        Document doc =factory.createDocument();
        doc.open();

        //For Word Document
        DocumentFactory factory1 = new WordFactory();
        Document doc1 =factory1.createDocument();
        doc1.open();
    }
    
}
