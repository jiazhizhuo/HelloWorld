package testweb;

import static org.junit.Assert.*;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.junit.Test;

public class TestThreads {

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
//	@Test
	public void test1(){
		Thread t = new Thread(new LiftOff());
		t.start();
		System.out.println("Waiting fo LiftOff");
	}
	
//	@Test
	public void moreBasicThreads(){
		for(int i=0;i<5;i++){
			new Thread(new LiftOff()).start();
		}
		System.out.println("Waiting for LiftOff");

	}
	
//	@Test
	public void test2(){
		ExecutorService exe = Executors.newCachedThreadPool();
		ExecutorService exeD = Executors.newCachedThreadPool(new ThreadFactory() {
			@Override
			public Thread newThread(Runnable r) {
				Thread  t = new Thread(r);
				t.setDaemon(true);
				return t;
			}
		});
	}
	
//	@Test
	public void testThread(){
		Thread t= new Thread(){
			@Override
			public void run() {
				System.out.println("t is run");
//				super.run();
			}
		};
		t.start();
	}
	
	@Test
	public void testThread2(){
		
	}
	
	
}
