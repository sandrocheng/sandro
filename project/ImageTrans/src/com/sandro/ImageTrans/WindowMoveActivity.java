package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;

/**
 * 
* @ClassName: WindowMoveActivity
* @Description:拖拽效果
* @author: Sandro
* @date: 2012-11-10 下午02:07:42
*
 */
public class WindowMoveActivity extends Activity {

	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.window_move_layout);
        initSubViews();
    }
    
    /**
     * 初始化各个子view
     */
    private void initSubViews(){
    }
}
