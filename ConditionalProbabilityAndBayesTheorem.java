/*

Conditional Probability and Bayes' theorem

Bob has an important meeting tomorrow and he has to reach office on time in morning. 
His general mode of transport is by car and on a regular day (no car trouble) the probability that he will reach on time is pot. 
The probability that he might have car trouble is pct. 
If the car runs into trouble he will have to take a train and only 2 trains out of the available N trains will get him to office on time.
What are the chances that he will reach office on time tomorrow?

Input constraints

0=pct=1
0=pot=1
N=2

Input format :
First line: pct
Second line: pot
Third line: N

Output format :
Probability he will reach in time, rounded to six decimal digits

*/
import java.util.Scanner;
class ConditionalProbabilityAndBayesTheorem {
    public static void main(String args[] ) throws Exception {
        Scanner scanner = new Scanner(System.in);
        double pct = scanner.nextDouble();
        double pot = scanner.nextDouble();
        int n = scanner.nextInt();
        /*
        
        X = Reaches On Time
        Y = Car Works
        Y' = Car Does Not Work = pct
        P(X|Y) = Reaches On Time Given Car Works = pot  
        P(X) = P(X U' Y) + P(X U' Y')
        P(X) = P(X|Y)*P(Y) + P(X|Y')*P(Y')
        P(X) = pot*(1-pct) + (2/n)*pct
        
        */
        double p = (pot*(1.0 - pct)) + ((2.0 / n)*pct);
        String str = String.format("%.6f", p );
        System.out.println(str);
    }
}
