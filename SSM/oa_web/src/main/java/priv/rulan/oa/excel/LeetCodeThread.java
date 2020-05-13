package priv.rulan.oa.excel;



import java.util.Scanner;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class LeetCodeThread {

    Lock lock = new ReentrantLock();

    void m1(){
       try{
           lock.lock();
           for (int i = 0; i <3 ; i++) {
               TimeUnit.SECONDS.sleep(1);
               System.out.println(i);
           }
       }catch (InterruptedException ignore){}finally {
           lock.unlock();
       }
    }

    void m2(){
        boolean locked = false;
        try{
            locked = lock.tryLock(5,TimeUnit.SECONDS);
            System.out.println(locked);
        }catch (InterruptedException ignore){}finally {
            if(locked){
                lock.unlock();
            }
        }
    }


    public static void main(String[] args){
        LeetCodeThread leetCodeThread = new LeetCodeThread();
        new Thread(leetCodeThread::m1).start();
        try{
            TimeUnit.SECONDS.sleep(1);
        }catch (InterruptedException ignore){}

        new Thread(leetCodeThread::m2).start();

    }

}
