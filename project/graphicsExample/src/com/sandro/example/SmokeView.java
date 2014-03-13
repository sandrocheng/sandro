package com.sandro.example;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class SmokeView extends View{
	
	private final static int WIDTH = 480;
	private final static int HEIGHT = 400;
	
	private Paint mPaint;
	
	private int[] array ;
	private ParticleManager patricleManager;
	
	@Override
	protected void onDraw(Canvas canvas){
		canvas.drawBitmap(array, 0, WIDTH, 0, 0, WIDTH, HEIGHT, false, mPaint);
	}	
	
	private void init(Context context){
		mPaint = new Paint();
		array = new int[WIDTH*HEIGHT];
		patricleManager = new ParticleManager(WIDTH,HEIGHT);
	}
	
	public void changeSmoke(){
		long time=System.currentTimeMillis();
		blurAll();
		array = patricleManager.getBitmapArray(array);
		Log.i("sandro", "time : " + (System.currentTimeMillis() - time));
		this.invalidate();
	}
	
	private void blurAll(){
		for(int i = 0;i<array.length;i++){
			if(array[i]>0){
				array[i]=0;
			}
		}
	}
	
	public SmokeView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public SmokeView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}

	public SmokeView(Context context) {
		super(context);
		init(context);
	}	
}
