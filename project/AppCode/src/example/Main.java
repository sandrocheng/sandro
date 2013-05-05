package example;


public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		for(int i=0;i<10;i++){
			new Thread(){

				@Override
				public void run() {
					Test.getInstance().exec();
				}
				
			}.start();
		}
	}

}


