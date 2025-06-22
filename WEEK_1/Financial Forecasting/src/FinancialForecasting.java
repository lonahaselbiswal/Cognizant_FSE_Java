public class FinancialForecasting {
    //Recursion Simply means A Function calling itself..
    // Recursive method to calculate future value
    public static double futureValue(double amount, double rate, int years) {
        if (years == 0) {
            return amount; // base case
        }
        return futureValue(amount * (1 + rate), rate, years - 1); // recursive step
    }

    public static void main(String[] args) {
        double initialInvestment = 100000; 
        double annualRate = 0.1;         
        int years = 10;

        double result = futureValue(initialInvestment, annualRate, years);
        System.out.println("Future Value after " + years + " years is " + result);
    }
}
