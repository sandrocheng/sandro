package com.sandro.example;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

public class ColorMatirxTestView extends View{
	
	private float[] colorArray;

	private Paint mPaint = new Paint(Paint.ANTI_ALIAS_FLAG); 
	private Bitmap mBitmap; 
	
	public ColorMatirxTestView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public ColorMatirxTestView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public ColorMatirxTestView(Context context) {
		super(context);
		init(context);
	}	
	
	@Override
	protected void onDraw(Canvas canvas){
		if(this.colorArray!=null){
			mPaint.setColorFilter(null);  
			ColorMatrix cm = new ColorMatrix();
			cm.set(colorArray); 
			mPaint.setColorFilter(new ColorMatrixColorFilter(cm)); 
			canvas.drawBitmap(mBitmap, 0, 0, mPaint);
		}

	}
	
	private void init(Context context){
		mBitmap= BitmapFactory.decodeResource(context.getResources(), 
				 R.drawable.rocket_fire); 

	}
	
	public void changeColor(float[] array){
		this.colorArray = array;
		invalidate();
	}

}
