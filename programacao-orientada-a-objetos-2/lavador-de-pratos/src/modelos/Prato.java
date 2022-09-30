package modelos;

import enums.Estado;

/**
 *
 * @author c-diego
 */
public final class Prato {

    private final int num_serie;
    private final Estado nivel_sujeira;
    
    public Prato(int num_serie, Estado nivel_sujeira) {
        this.num_serie = num_serie;
        this.nivel_sujeira = nivel_sujeira;
    }
    
    public int getNumSerie() {
        return num_serie;
    }
    
    public Estado getNivelSujeira() {
        return nivel_sujeira;
    }
}
