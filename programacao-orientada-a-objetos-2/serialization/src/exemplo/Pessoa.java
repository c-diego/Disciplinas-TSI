package exemplo;

import java.io.Serializable;

/**
 *
 * @author diego
 */
public class Pessoa implements Serializable {

    private final int id;
    private final int idade;
    private final String nome;

    public Pessoa(int id, String nome, int idade) {
        this.id = id;
        this.nome = nome;
        this.idade = idade;
    }

    public int getId() {
        return id;
    }

    public int getIdade() {
        return idade;
    }

    public String getNome() {
        return nome;
    }

}
