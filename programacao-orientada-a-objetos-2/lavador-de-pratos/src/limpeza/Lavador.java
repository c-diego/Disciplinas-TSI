package limpeza;

import modelos.Prato;
import factories.PratosSujosFactory;

/**
 *
 * @author c-diego
 */
public class Lavador implements Runnable {

    private final Escorredor escorredor;
    private final PratosSujosFactory psf;
    private Prato pt;
    private boolean done;

    public Lavador(Escorredor escorredor) {
        this.escorredor = escorredor;
        psf = new PratosSujosFactory();
    }

    public void lavar() {
        synchronized (escorredor) {
            while (escorredor.isFull()) {
                try {
                    escorredor.wait();
                } catch (InterruptedException e) {
                    System.err.println(e);
                }
            }

            pt = psf.getNewPrato();
            int milis;

            switch (pt.getNivelSujeira()) {
                case BAIXO:
                    milis = 3;
                    break;
                case MEDIO:
                    milis = 5;
                    break;
                case ENGORDURADO:
                    milis = 10;
                    break;
                default:
                    milis = 10;
            }

            //System.out.println("Lavando");
            try {
                Thread.sleep(milis);
            } catch (InterruptedException e) {
                System.err.println(e);
            }
            
            escorredor.put(pt);
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
            lavar();
        }
    }

}
