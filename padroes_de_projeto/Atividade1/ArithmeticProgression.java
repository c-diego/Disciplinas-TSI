package refactoring;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author diego
 */
public class ArithmeticProgression {

    private final Scanner input;

    public ArithmeticProgression() {
        input = new Scanner(System.in);
    }

    private int readInput(String message) {

        int num;

        do {
            System.out.print(message);
            num = input.nextInt();
        } while (num < 0);

        return num;
    }

    private List<Integer> calculateAP() {
        List<Integer> arithmeticProgression = new ArrayList<>();

        int numberOfTerms = readInput("Digite o número de termos da PA: ");
        int initialTerm = readInput("Digite o primeiro termo da PA: ");
        int commonDifference = readInput("Digite a razão da PA: ");

        for (int i = 0; i < numberOfTerms; i++) {
            int term = initialTerm + (i) * commonDifference;
            arithmeticProgression.add(term);
        }

        return arithmeticProgression;
    }

    public static void main(String[] args) {
        ArithmeticProgression arithmeticProgression = new ArithmeticProgression();

        List<Integer> sequence = arithmeticProgression.calculateAP();

        int sum = sequence.stream().mapToInt(Integer::intValue).sum();

        System.out.println("Sequencia: " + sequence);
        System.out.println("Soma: " + sum);
    }

//    Old method
//    public void calculaSomaPA() {
//        int j, n, a1, an, r, t, s;
//        PrintStream w = System.out;
//        Scanner sc = new Scanner(System.in);
//
//        do {
//            w.println("Digite o número de termos da PA:");
//            n = sc.nextInt();
//        } while (n < 1);
//
//        do {
//            w.println("Digite o primeiro termo da PA:");
//            a1 = sc.nextInt();
//        } while (a1 < 1);
//
//        do {
//            w.println("Digite a razão da PA:");
//            r = sc.nextInt();
//        } while (r < 1);
//
//        an = a1 + (n - 1) * r;
//        s = ((a1 + an) * n) / 2;
//        for (j = 1; j <= n; j++) {
//            t = a1 + (j - 1) * r;
//            w.printf("a%d=%d\n", j, t);
//        }
//
//        w.printf("A soma é:%d\n", s);
//    }

}
