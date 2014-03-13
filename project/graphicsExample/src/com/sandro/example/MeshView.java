package com.sandro.example;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

public class MeshView extends View{

	private Bitmap mBitmap; 
	
	public MeshView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public MeshView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}

	public MeshView(Context context) {
		super(context);
		init(context);
	}
	
	private void init(Context context){
		mBitmap= BitmapFactory.decodeResource(context.getResources(), 
				 R.drawable.rocket_fire); 		
	}
	
	@Override
	protected void onDraw(Canvas canvas){
		
	}
}
