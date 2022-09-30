package atividade;

/**
 *
 * @author c-diego
 */
public class MyWorkerThread implements Runnable {

    ThreadSafeArrayListWrapper<String> list;

    public MyWorkerThread(ThreadSafeArrayListWrapper<String> list) {
        this.list = list;
    }

    @Override
    public void run() {

        while (list.add()) {}
            
        System.out.printf("Thread finished : %s\n", Thread.currentThread().getName());
    }
}
