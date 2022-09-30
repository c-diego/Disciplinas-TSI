/**
 *
 * @author c-diego
 */
import java.util.Random;

public class Forecast {

    private static String message;
    private static final Object obj = new Object();
    private static boolean chuva = false;

    private static class ForecastThread implements Runnable {

        private final Random r = new Random();

        @Override
        public void run() {
            try {
                Thread.sleep(r.nextInt(2000));
            } catch (InterruptedException e) {
            }

            synchronized (obj) {
                message = "Hoje vai chover.";
                obj.notifyAll();
                chuva = true;
            }

        }
    }

    public static void main(String args[]) throws InterruptedException {
        Random rnd = new Random();

        message = "Hoje não vai chover.";
        Thread t = new Thread(new ForecastThread());
        t.start();
        Thread.sleep(rnd.nextInt(1000));
     
        synchronized (obj) {
            while(!chuva)
                obj.wait();
        }

        // Como garantir que sempre haverá chuva?
        System.out.println(message);
    }

}
