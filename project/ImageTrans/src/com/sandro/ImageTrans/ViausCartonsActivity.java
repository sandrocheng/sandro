package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

import com.sandro.custom.view.VirusView;
import com.sandro.util.CartonEngine;

/**
 * 
* @ClassName: ViausCartonsActivity
* @Description:杀毒动画
* @author: Sandro
* @date: 2012-11-16 下午08:12:09
*
 */
public class ViausCartonsActivity extends Activity{
	
	private CartonEngine cartonEngine;
	
	private VirusView virusView;

    @Override
    public void onCreate(Bundle savedInstanceState){
    	super.onCreate(savedInstanceState);
    	requestWindowFeature(Window.FEATURE_NO_TITLE);
    	cartonEngine = new CartonEngine();
    	setContentView(R.layout.lay_virous);
    	virusView = (VirusView)this.findViewById(R.id.virus_view);
    	cartonEngine.addListener(virusView);
    }
    
	@Override
	protected void onDestroy() {
		if (cartonEngine != null) {
			cartonEngine.destory();
		}
		super.onDestroy();
	}
}
