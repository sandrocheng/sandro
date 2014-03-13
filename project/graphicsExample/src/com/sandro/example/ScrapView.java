package com.sandro.example;

import java.util.Random;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;


public class ScrapView extends View{
	
	private float x = 1f;
	private float y = 2f;
	private float z = 1f;
	
	private Paint mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
	
	private Bitmap mBitmap; 
	
	private float array[] = {
			1,0,200,
			0,1,100,
			0,0,1
	};

	public ScrapView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public ScrapView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public ScrapView(Context context) {
		super(context);
		init(context);
	}	
	
	@Override
	protected void onDraw(Canvas canvas){
		Matrix cm = new Matrix(); 
		//为坐标变换矩阵设置响应的值 
		 cm.setValues(array); 
		//按照坐标变换矩阵的描述绘图 
		 canvas.drawBitmap(mBitmap, cm, this.mPaint); 
	}	
	
	private void init(Context context){
		BitmapFactory.Options options = new BitmapFactory.Options();
		options.inSampleSize = 2;
		mBitmap= BitmapFactory.decodeResource(context.getResources(), 
				 R.drawable.icon,options); 
		mPaint.setAntiAlias(true); 
	}
	
	private Random random = new Random();
	
	public void changeView(){
		
		if(x<360){
			x+=5 + random.nextInt(5);
		}else{
			x = 1;
		}
//		if(z<2f){
//			z += 0.01; 
//		}else{
//			z = 1f;
//		}
		xFun();
//		yFun();
		zFun();
		this.invalidate();
	}
	
	private void xFun() {
//		array[0] = (float) Math.cos(x * Math.PI / 180);
//		array[1] = -(float) Math.sin(x * Math.PI / 180);
		
		array[2] =  200;
	}
	
	private void yFun() {
//		array[3] = (float) Math.cos(x * Math.PI / 180);
//		array[4] = (float) Math.sin(x * Math.PI / 180);
	}
	
	private void zFun(){
//		array[6] = (float) Math.cos(x*Math.PI/180)/100;
		array[7] = (float) Math.sin(x*Math.PI/180)/100;			
//		array[8] = z;
	}	

}
