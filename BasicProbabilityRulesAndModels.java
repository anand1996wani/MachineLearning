/*

Basic probability rules and models

Mike wants to go fishing this weekend to nearby lake. His neighbour Alice (is the one Mike was hoping to ask out since long time) is also planing to go to the same spot for fishing this weekend. 
The probability that it will rain this weekend is p1. 
There are two possible ways to reach the fishing spot (bus or train). The probability that Mike will take the bus is pmb and that Alice will take the bus is pab. 
Travel plans of both are independent of each other and rain.

What is the probability prs that Mike and Alice meet each other only (should not meet in bus or train) in a romantic setup (on a lake in rain)?

Input constraints
(0=p1=1), (0=pab=1), (0=pmb=1)

Input format :
FIrst line: pmb
Second line: pab
Third line: p1

Output format :
prs , rounded up to six decimal places.

*/
import java.util.Scanner;
import java.text.DecimalFormat;
class BasicProbabilityRulesAndModels {
    public static void main(String args[] ) throws Exception {
        Scanner scanner = new Scanner(System.in);
        double pmb = scanner.nextDouble();
        double pab  = scanner.nextDouble();
        double p1 = scanner.nextDouble();
        double prs = p1*((pmb*(1.0-pab))+(pab*(1.0-pmb)));
        //DecimalFormat f = new DecimalFormat("##.000000");
        //String formattedValue = f.format(prs);
        String str = String.format("%.6f", prs );
        System.out.println(str);
    }
}
