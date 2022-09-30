package exemplo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 *
 * @author c-diego
 */
public class Exemplo {

  public static void main(String[] args) {

    Pessoa p1 = new Pessoa(1, "Diego", 20);

    if (write(p1)) {
      Pessoa p2 = read("pessoa.ser");
      System.out.println("P2: id=" + p2.getId() + " nome=" + p2.getNome() +
          " idade=" + p2.getIdade() + ".");
      System.exit(0);
    }

    System.err.println("Programa falhou");
    System.exit(1);
  }

  public static boolean write(Pessoa p) {
    try (DataOutputStream out = new DataOutputStream(
        new BufferedOutputStream(new FileOutputStream("pessoa.ser")))) {

      out.writeInt(p.getId());
      out.writeUTF(p.getNome());
      out.writeInt(p.getIdade());

      out.flush();

      return true;

    } catch (IOException e) {
      System.err.println(e);
    }

    return false;

  }

  public static Pessoa read(String file) {
    try (DataInputStream in = new DataInputStream(
        new BufferedInputStream(new FileInputStream(file)))) {

      int id = in.readInt();
      String nome = in.readUTF();
      int idade = in.readInt();

      Pessoa p = new Pessoa(id, nome, idade);
      return p;

    } catch (IOException e) {
      System.err.println(e);
    }

    return null;
  }
}
