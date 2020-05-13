package priv.rulan.oa.dto;

import org.openjdk.jol.info.ClassLayout;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class Test01 {
    public static void main(String[] args) {
    }


    public static int row(int x){
        return -x;
    }

    static void m(){
        Object o = new Object();
        System.out.println(ClassLayout.parseInstance(o).toPrintable());

        synchronized (o){
            System.out.println(ClassLayout.parseInstance(o).toPrintable());
        }
    }
    public static int reversing(int x) {
        long n = 0;  //123
        while(x != 0) {
            n = n*10 + x%10;  //230 + 1
            x = x/10;   //12
        }
        return (int)n==n? (int)n:0;
    }
    public  boolean reverse(int x) {
        StringBuffer stringBuffer = new StringBuffer();
        String consequence = null;
        if(x>0&&x<Math.pow(2,31)-1){
            stringBuffer.append(x).reverse();
            long temp = Long.valueOf(stringBuffer.toString());
            temp = temp<(Math.pow(2,31)-1)?temp:0;
            int result =Integer.parseInt(String.valueOf(temp));
            consequence = String.valueOf(result);
        }else{
            x = Math.abs(x);
            stringBuffer.append(x).reverse();
            long temp = Long.valueOf(stringBuffer.toString());
            temp = temp<(Math.pow(2,31)-1)?temp:0;
            int result =Integer.parseInt(String.valueOf(temp));
            consequence =  String.valueOf(result+"-");
        }
        if(consequence.equals(String.valueOf(x))){
            return  true;
        }else{
            return false;
        }
    }

    public void atomic(){
        new AtomicInteger().incrementAndGet();
    }

    public static int[] twoSum(int[] nums, int target) {
            int [] index = new int [2];
        for (int i = 0; i <nums.length ; i++) {
            for (int j = i+1; j <nums.length ; j++) {
                if((nums[i]+nums[j])==target){
                    index[0] = i;
                    index[1] = j;
                }
            }
        }
        return index;
    }
}
