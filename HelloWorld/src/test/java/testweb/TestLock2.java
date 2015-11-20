package testweb;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;



public class TestLock2 {
		
	public static void main(String[] args) {
		ToLockA2 t = new ToLockA2();
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
		exec.execute(new Runnable() {
			@Override
			public void run() {
				while(true){
					t.toSS();
				}
			}
		});
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("End");
		System.exit(0);
	}

}

class ToLockA2 {
	private Lock lock = new ReentrantLock();
	A a;
	int i = 1;
	public ToLockA2(){
		
	}
	public ToLockA2(A a) {
		this.a=a;
	}
	synchronized void toS() {
		System.out.println("toS1");
		try {
			TimeUnit.MILLISECONDS.sleep(10);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("toS2");
	}
	 void toL(){
		lock.lock();
		System.out.println("toL1");
		try {
			TimeUnit.MILLISECONDS.sleep(10);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			System.out.println("toL2");
			lock.unlock();
		}
	}
	void toSS(){
		synchronized(this){
			System.out.println("toSS1");
			try {
				TimeUnit.MILLISECONDS.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				System.out.println("toSS2");
			}
		}
	}
}
