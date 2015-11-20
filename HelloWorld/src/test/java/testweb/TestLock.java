package testweb;

import static org.junit.Assert.*;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import org.junit.Test;

import com.mysql.jdbc.TimeUtil;


public class TestLock {

//	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test 
	public void test1(){
		ToLockA t = new ToLockA();
		ExecutorService exec = Executors.newCachedThreadPool();
		exec.execute(new Runnable() {
			@Override
			public void run() {
				while(true){
					t.toL();
				}
			}
		});
		exec.execute(new Runnable() {
			@Override
			public void run() {
				while(true){
					t.toS();
				}
			}
		});
		try {
			TimeUnit.MICROSECONDS.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("End");
		System.exit(0);
	}

}

class A{
	void todo(){
		System.out.println("1:"+this.toString());
		try {
			TimeUnit.MILLISECONDS.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("2:"+this.toString());
	}
}

class ToLockA {
	A a;
	public ToLockA(){
		
	}
	public ToLockA(A a) {
		this.a=a;
	}
	synchronized void toS() {
		System.out.println("toS1");
		try {
			TimeUnit.MILLISECONDS.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("toS2");
	}
	void toL(){
		System.out.println("toL1");
		try {
			TimeUnit.MILLISECONDS.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("toL2");
	}
}
