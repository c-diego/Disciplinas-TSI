import java.util.List;
import java.util.Scanner;

/**
 *
 * @author diego
 */
public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int numberOfTerms = askNumber(input, "Digite o número de termos da PA: ");
        int initialTerm = askNumber(input, "Digite o primeiro termo da PA: ");
        int commonDifference = askNumber(input, "Digite a razão da PA: ");

        input.close();

        List<Integer> sequence = ArithmeticProgression
                .calculateAP(numberOfTerms, initialTerm, commonDifference);

        System.out.println("Sequencia: " + sequence);
        System.out.println("Soma: " + ArithmeticProgression.sum(sequence));
    }

    public static int askNumber(Scanner input, String message) {
        int num;
        do {
            System.out.print(message);
            num = input.nextInt();
        } while (num < 0);

        return num;
    }
}
