package limpeza;

import modelos.Prato;

/**
 *
 * @author c-diego
 */
public class Escorredor {

    private final Prato pratos[];
    private final int size;
    private int putptr, takeptr, count;

    public Escorredor(int size) {
        this.size = size;
        this.pratos = new Prato[size];
    }

    public boolean isEmpty() {
        return count == 0;
    }

    public boolean isFull() {
        return count == size;
    }

    public void put(Prato p) {

        pratos[putptr] = p;
        if (++count == size)
            System.out.println("Escorredor está cheio!");
        if (++putptr == size) 
            putptr = 0;
    }

    public Prato take() {

        Prato temp = pratos[takeptr];
        if (++takeptr == size)
            takeptr = 0;
        if (--count == 0)
            System.out.println("Escorredor está vazio!");
        return temp;
    }

}
