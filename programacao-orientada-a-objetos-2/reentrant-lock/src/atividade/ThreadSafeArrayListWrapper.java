package atividade;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 *
 * @author c-diego
 */
@SuppressWarnings("unchecked")
public class ThreadSafeArrayListWrapper<E> {

  private final Lock lock = new ReentrantLock(true);
  private final List<E> list = new ArrayList();

  private static int count = 0;

  static String thread = "";
  static long time = System.nanoTime();
  private String start = "";
  private String end = "";

  public boolean add() {
    lock.lock();
    try {

      if (count < 600 && !thread.equalsIgnoreCase(Thread.currentThread().getName())) {
        list.add((E) String.valueOf(count));
        start = end;
        end = String.valueOf(count);
        thread = Thread.currentThread().getName();
        System.out.printf("T name %s %d - %s:%s\n", thread, System.nanoTime() - time, start, end);
        time = System.nanoTime();
        count++;
        return true;
      }

    } finally {
      lock.unlock();
    }

    return false;
  }
}
