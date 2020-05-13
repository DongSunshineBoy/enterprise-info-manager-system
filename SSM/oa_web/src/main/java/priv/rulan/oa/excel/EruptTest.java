package priv.rulan.oa.excel;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.LongAdder;

public class EruptTest {

    static long count2 = 0L;

    static AtomicLong count1 = new AtomicLong(0L);

    static LongAdder count3 = new LongAdder();



    //AtomicInteger atomicInteger = new AtomicInteger(0);
  long count = 0;
  void test(){
      synchronized (this){
          for (int i = 0; i <1000 ; i++) {
              count++;
          }
      }
    }

    public static void main(String[] args) throws Exception{

      Thread [] threads = new Thread[1000];

        for (int i = 0; i <threads.length ; i++) {
            threads[i] =
                    new Thread(()->{
                        for (int j = 0; j <100000 ; j++) {
                            count1.incrementAndGet();
                        }
                    });
        }

        long start = System.currentTimeMillis();

        for (Thread t:threads) t.start();

        for (Thread t:threads) t.join();

        long end = System.currentTimeMillis();

        System.out.println("AtomicLong:"+count1.get()+"time"+(end-start));

        Object object = new Object();

        for (int i = 0; i <threads.length ; i++) {
            threads[i] = new Thread(new Runnable() {
                @Override
                public void run() {
                    for (int j = 0; j <100000 ; j++) {
                        synchronized (object){
                            count2++;
                        }
                    }
                }
            });
        }

        start = System.currentTimeMillis();

        for (Thread thread:threads) thread.start();

        for (Thread thread:threads) thread.join();

        end = System.currentTimeMillis();

        System.out.println("long:"+count1.get()+"time"+(end-start));

        for (int i = 0; i <threads.length ; i++) {
            threads[i] =
                    new Thread(()->{
                        for (int j = 0; j <100000 ; j++) {
                            count3.increment();
                        }
                    });
        }
        start = System.currentTimeMillis();
        for (Thread thread:threads) thread.start();

        for (Thread thread:threads) thread.join();
        end = System.currentTimeMillis();

        System.out.println("LongAdder:"+count1.get()+"time"+(end-start));



//        EruptTest eruptTest = new EruptTest();
//
//        List<Thread> threads = new ArrayList<>();
//
//        for (int i = 0; i <10 ; i++) {
//            threads.add(new Thread(eruptTest::test,"Thread"+i));
//        }
//
//        //启动所有线程
//        threads.forEach(Thread::start);
//
//        threads.forEach((thread)->{
//            try{
//                thread.join();
//            }catch (InterruptedException e){
//                e.printStackTrace();
//            }
//        });
//        System.out.println(eruptTest.count);
    }
}
