package atividade;

/**
 *
 * @author c-diego
 */
@SuppressWarnings("unchecked")
public class ReentrantLockExample {

	public static void main(String[] args) {

		ThreadSafeArrayListWrapper<String> list = new ThreadSafeArrayListWrapper();

		Thread t1 = new Thread(new MyWorkerThread(list));
		Thread t2 = new Thread(new MyWorkerThread(list));
		Thread t3 = new Thread(new MyWorkerThread(list));
		Thread t4 = new Thread(new MyWorkerThread(list));
		long t0 = System.nanoTime();
		t1.start(); t2.start(); t3.start(); t4.start();

		try {
			t1.join(); t2.join(); t3.join(); t4.join();
		} catch (InterruptedException e) {
			System.err.println(e);
		}

		System.out.printf("Time: %d nanoseconds\n", System.nanoTime() - t0);
	}
}
