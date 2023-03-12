/**
 *
 * @author diego
 */
public class App {

    private final ShapeAreaCalculator shapeAreaCalculator;
    private final TextUserInterface textUserInterface;

    public App() {

        this.shapeAreaCalculator = new ShapeAreaCalculator();
        this.textUserInterface = new TextUserInterface();

    }

    public void calculeRectangleArea() {

        float height = textUserInterface.readRectangleHeight();
        float width = textUserInterface.readRectangleWidth();
        float area = shapeAreaCalculator.rectangleArea(width, height);

        textUserInterface.printRectangleArea(width, height, area);
    }

    public void calculeParallelogramArea() {

        float base = textUserInterface.readParallelogramBase();
        float height = textUserInterface.readParallelogramHeigth();
        float area = shapeAreaCalculator.parallelogramArea(base, height);

        textUserInterface.printParallelogramArea(base, height, area);
    }

    public void calculeTrapeziumArea() {

        float biggestBase = textUserInterface.readTrapeziumBiggestBase();
        float smallestBase = textUserInterface.readTrapeziumSmallestBase();
        float height = textUserInterface.readTrapeziumHeigth();
        float area = shapeAreaCalculator.trapeziumArea(biggestBase, smallestBase, height);

        textUserInterface.printTrapeziumArea(biggestBase, smallestBase, height, area);
    }
    
    public static void main(String[] args) {
        
        App app = new App();
        app.calculeRectangleArea();
        app.calculeParallelogramArea();
        app.calculeTrapeziumArea();
        
    }
}

