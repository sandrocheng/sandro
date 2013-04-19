package example;

public class Test {

	public int x = 0;
	
	private StaticSub staticSub1 = new StaticSub(1);
	
	private StaticSub staticSub2 = new StaticSub(2);
	
	private Sub sub = new Sub();
	
	private void privateMat(){
		System.out.println("privateMat");
	}
	
	public void exec(){
		System.out.println(staticSub1.subValue);
		System.out.println(staticSub2.subValue);
		System.out.println(sub.bbb);
	}
	
	public static final class StaticSub{
		public StaticSub(int value){
			subValue = value;
		}
		private int subValue;
	};
	
	public class Sub{
		private String bbb = "bbb"; 
		
		public Sub(){
			privateMat();
		}
	}

}
