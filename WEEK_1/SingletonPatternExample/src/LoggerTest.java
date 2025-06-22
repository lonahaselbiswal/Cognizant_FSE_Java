public class LoggerTest {
    public static void main(String[] args) {
        Logger logger1= Logger.getInstance();
        Logger logger2= Logger.getInstance();

        logger1.log("The First Message");
        logger2.log("The Second Message");

        System.out.println("Are these same instances ??");
        System.out.println((logger1==logger2));
        //It must print "true" to justify that Only One instance of Logger is created and used across the application..

    }
}
