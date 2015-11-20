package testweb;

public class TestNative {

	public static void main(String[] args) {
		TestNative tn = new TestNative();
		System.out.println(tn.toString());
		System.out.println( tn.getClass().getName() + "@" + Integer.toHexString(tn.hashCode()) );
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "This is a TestNative class";
	}
	
}
