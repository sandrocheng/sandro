package com.sandro.ImageTrans;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;

public class FlashActivity extends Activity{

	private Handler mHandler = new Handler(){
		
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(new SampleView(this));
	}

    private class SampleView extends View {
        private Paint mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private LinearGradient linearGradient = null;
        private RectF oval;

        int x = 0;
        int y = 0;
        public SampleView(Context context) {
            super(context);
    		linearGradient = new LinearGradient(x, y, 90, 90, new int[] {Color.WHITE,Color.BLACK }, null,
    				Shader.TileMode.MIRROR);     
    		oval = new RectF(0, 0, 450, 450);
    		mPaint.setAntiAlias(true);
    		mPaint.setStyle(Paint.Style.FILL);    		
        }
        
        @Override protected void onDraw(Canvas canvas) {
    		super.onDraw(canvas);
    		linearGradient = new LinearGradient(x, y, x+230, y+230, new int[] {Color.WHITE,Color.BLACK,Color.BLACK,Color.BLACK }, null,
    				Shader.TileMode.MIRROR);         		
    		mPaint.setShader(linearGradient);

    		if(x<460){
        		x+=25;
        		y+=25;
        		canvas.drawArc(oval, 0, 360, false, mPaint);
        		this.invalidate();
    		}else{
    			mHandler.postDelayed(new Runnable(){

					@Override
					public void run() {
						x = 0;
						y = 0;
						SampleView.this.invalidate();
					}
    				
    			}, 2000);
    		}
    		
        }

    
    }	
}
