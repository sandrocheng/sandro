package com.tencent.onesecurity.ui.customview.layout.vault;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.widget.ImageView;

public class CircleView extends ImageView{

	private Matrix matrix;
	private boolean isNeedMatrix;
	private int degree;
	
	private float x;
	private float y;
	
	public CircleView(Context context, AttributeSet attrs) {
		super(context, attrs);
		matrix = new Matrix();
	}

	@Override
	protected void onDraw(Canvas canvas) {
		
		if (isNeedMatrix) {
			canvas.concat(matrix);
			x = this.getWidth()/2;
			y = this.getHeight()/2;
			matrix.setRotate(degree, x, y);
		}
		
		super.onDraw(canvas);
	}
	
	public void setDegree(int degree, boolean isNeedMatrix) {
		this.degree = degree;
		this.isNeedMatrix = isNeedMatrix;
		this.invalidate();
	}
	
	public void clearDegree(){
		this.isNeedMatrix = false;
		this.invalidate();
	}

}
