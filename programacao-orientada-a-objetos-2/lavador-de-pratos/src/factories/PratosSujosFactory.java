package factories;

import java.util.Random;
import enums.Estado;
import modelos.Prato;

/**
 *
 * @author c-diego
 */
public class PratosSujosFactory {

    private final Random rand;
    private static int num_pratos;
    

    public PratosSujosFactory() {
        rand = new Random();
        num_pratos = 0;
    }
    
    public Prato getNewPrato() {
        int i = rand.nextInt(100) + 1;
        Prato p;
        
        if (i < 10) {
            p = new Prato(++num_pratos, Estado.ENGORDURADO);
            
        } else if (i >= 10 && i < 30) {
            p = new Prato(++num_pratos, Estado.BAIXO);
            
        } else {
            p = new Prato(++num_pratos, Estado.MEDIO);
        }
        
        return p;
    }
    
    
    
}
