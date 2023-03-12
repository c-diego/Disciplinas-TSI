import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author diego
 */
public class ArithmeticProgression {

    private static int calculateTerm(int initialTerm, int nTerm, int commonDifference) {
        return initialTerm + (nTerm) * commonDifference;
    }

    public static List<Integer> calculateAP(int numberOfTerms, int initialTerm, int commonDifference) {
        List<Integer> arithmeticProgression = new ArrayList<>();

        for (int i = 0; i < numberOfTerms; i++) {
            int term = calculateTerm(initialTerm, i, commonDifference);
            arithmeticProgression.add(term);
        }

        return arithmeticProgression;
    }

    public static int sum(List<Integer> arithmeticProgression) {
        return arithmeticProgression.stream()
                .mapToInt(Integer::intValue).sum();
    }

}
