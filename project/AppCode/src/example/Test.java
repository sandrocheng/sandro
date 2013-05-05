package example;

public class Test {
	
	private static Test instance;
	
	private int x = 0;
	
	private Test(){}
	
	public static synchronized Test getInstance(){
		if(instance == null){
			instance = new Test();
		}
		return instance;
	}
	
	public synchronized void exec(){
		x++;
		System.out.println(x);
	}

}