/**
 *
 * @author diego
 */
public class ShapeAreaCalculator {

    public float rectangleArea(float width, float height) {
        return width * height;
    }

    public float parallelogramArea(float base, float height) {
        return base * height;
    }

    public float trapeziumArea(float biggestBase, float smallestBase, float height) {
        return ((biggestBase + smallestBase) / 2) * height;
    }
}

