package app;

import limpeza.LavarPratos;

/**
 *
 * @author c-diego
 */
public class App {

    public static void main(String args[]) {

        LavarPratos lp = new LavarPratos();
        lp.work();

        try {
            Thread.sleep(1000 * 120);
        } catch (InterruptedException e) {
            System.err.println(e);
        }

        lp.stop();
    }

}
