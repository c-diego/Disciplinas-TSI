package limpeza;

import java.util.Random;

/**
 *
 * @author c-diego
 */
public class Enxugador implements Runnable {

    private final Escorredor escorredor;
    private boolean done;

    public Enxugador(Escorredor escorredor) {
        this.escorredor = escorredor;
    }

    public void enxugar() {
        
        Random rand = new Random();
        
        synchronized (escorredor) {
            
            while (escorredor.isEmpty()) {
                try {
                    escorredor.wait();
                } catch (InterruptedException e) {
                    System.err.println(e);
                }
            }

            //System.out.println("Enxugando");
            try {
                Thread.sleep(rand.nextInt(7) + 3);
            } catch (InterruptedException e) {
                System.err.println(e);
            }
            
            escorredor.take();
            escorredor.notifyAll();

        }

    }

    public void done() {
        this.done = true;
    }

    @Override
    public void run() {
        done = false;
        while (!done) {
            enxugar();
        }
    }

}
