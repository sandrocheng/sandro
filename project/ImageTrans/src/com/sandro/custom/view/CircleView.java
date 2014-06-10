package com.sandro.custom.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;

@SuppressLint("DrawAllocation")
public class CircleView extends View{
	
	private Handler mHandler;

	private RectF oval;
	
	private Paint mPaints;
	
    private float mSweep;
    
    /**
     * 静止状态
     */
    private	static final int STOP = 0;
    
    /**
     * 画圆状态
     */
    private static final int DRAW_CIRCLE = 1;
    
    /**
     * 园的扩散状态
     */
    private static final int DRAW_SPREAD = 2;
    
    private int anim_status = STOP;
    
    private static final long CIRCLE_TIME = 400l;
    private long startTime;
    
    private static final int POS_SIZE = 60;
    
    private int alpha = 255;
    
    private int size = POS_SIZE;
	
	public CircleView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init();
	}

	public CircleView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public CircleView(Context context) {
		super(context);
		init();
	}
	
	public void setHandler(Handler handler){
		this.mHandler = handler;
	}
	
	@Override
	protected void onLayout(boolean changed, int left, int top, int right,
			int bottom) {
		super.onLayout(changed, left, top, right, bottom);
		oval = new RectF(POS_SIZE, POS_SIZE, this.getWidth()-POS_SIZE, this.getHeight()-POS_SIZE);
	}

	private void init(){
		mPaints = new Paint();
		mPaints.setAntiAlias(true);
		mPaints.setStyle(Paint.Style.STROKE);
		mPaints.setStrokeWidth(1f);
		mPaints.setColor(0xffffffff);		
	}
	
	
	
	public void startCircleDraw(){
		startTime = System.currentTimeMillis();
		anim_status = DRAW_CIRCLE;
		this.invalidate();
	}

	@Override
	protected void onDraw(Canvas canvas) {
		drawCircleAnim(canvas);
	}
	
	private void prepareSpread(){
		anim_status = DRAW_SPREAD;
		size = POS_SIZE;	
		alpha = 255;
	}
	
	public void startSpread(){
		prepareSpread();
		this.invalidate();
	}
	
	private void drawCircleAnim(Canvas canvas){
		switch(anim_status){
		case DRAW_CIRCLE:
			long time = System.currentTimeMillis() - this.startTime;
			
			if(time<CIRCLE_TIME){
				mSweep = (time * 360 /CIRCLE_TIME);
				canvas.drawArc(oval, 270, mSweep, false, mPaints);
			}else{
				prepareSpread();
				canvas.drawArc(oval, 270, 360, false, mPaints);
				mHandler.sendEmptyMessage(AppScanCircleLayout.MSG_DRAW_CIRCLE_FINISH);
			}
			this.invalidate();
			break;
		case DRAW_SPREAD:
			if(size>0){
				size -=3;
				alpha -=10;
				mPaints.setARGB(alpha, 255, 255, 255);
				oval = new RectF(size, size, this.getWidth()-size, this.getHeight()-size);
				canvas.drawArc(oval, 270, 360, false, mPaints);
				this.invalidate();
			}
			break;
		}
	}
	
}
