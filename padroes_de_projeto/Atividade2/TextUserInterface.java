import java.util.Scanner;

/**
 *
 * @author diego
 */
public class TextUserInterface {

    private final Scanner scanner = new Scanner(System.in);

    private float promptAndReadIntGreaterThan(String promptMessage, int minValue) {
        int number;
        do {
            System.out.print(promptMessage);
            number = scanner.nextInt();
        } while (number <= minValue);
        return number;
    }

    public float readRectangleWidth() {
        return promptAndReadIntGreaterThan("Digite a largura do retângulo: ", 1);
    }

    public float readRectangleHeight() {
        return promptAndReadIntGreaterThan("Digite a altura do retângulo: ", 1);
    }

    public void printRectangleArea(float width, float height, float area) {
        String messageFormat = "Um retângulo de altura %.2f e largura %.2f"
                + " tem a área de %.2f.%n";
        System.out.printf(messageFormat, width, height, area);
    }

    public float readParallelogramBase() {
        return promptAndReadIntGreaterThan("Digite a base do paralelogramo: ", 1);
    }

    public float readParallelogramHeigth() {
        return promptAndReadIntGreaterThan("Digite a altura do paralelogramo: ", 1);
    }

    public void printParallelogramArea(float base, float height, float area) {
        String messageFormat = "Um paralelogramo de base %.2f e altura %.2f"
                + " tem a área de %.2f.%n";
        System.out.printf(messageFormat, base, height, area);
    }

    public float readTrapeziumHeigth() {
        return promptAndReadIntGreaterThan("Digite a altura do trapézio: ", 1);
    }

    public float readTrapeziumSmallestBase() {
        return promptAndReadIntGreaterThan("Digite a menor base do trapézio: ", 1);
    }

    public float readTrapeziumBiggestBase() {
        return promptAndReadIntGreaterThan("Digite a maior base do trapézio: ", 1);
    }

    public void printTrapeziumArea(float biggestBase, float smallestBase, float height, float area) {
        String messageFormat = "Um paralelogramo com a maior base %.2f, menor base %.2f"
                + " e altura de %.2f tem a área de %.2f.%n";
        System.out.printf(messageFormat, biggestBase, smallestBase, height, area);
    }

}

