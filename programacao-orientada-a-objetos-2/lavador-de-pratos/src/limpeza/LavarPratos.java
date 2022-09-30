package limpeza;

/**
 *
 * @author c-diego
 */
public class LavarPratos {

    private final Escorredor escorredor;
    private final Lavador lavador;
    private final Enxugador enxugador;
    private final Thread t1;
    private final Thread t2;
    
    public LavarPratos() {
        escorredor = new Escorredor(10);
        lavador = new Lavador(escorredor);
        enxugador = new Enxugador(escorredor);
        t1 = new Thread(lavador);
        t2 = new Thread(enxugador);
    }

    public void work() {
        t1.start(); t2.start();
    }

    public void stop() {
        lavador.done();
        enxugador.done();
    }

}
