package com.sandro.custom.widget;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Random;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.sandro.ImageTrans.R;
import com.sandro.util.DeviceUtil;
import com.sandro.util.CartonEngine.CartonCallBackLisener;

public class ClipView extends ImageView implements CartonCallBackLisener{

	private Path mPath ;
	private int viewWidth;
	
	/**
	 * 左半区x 最大坐标
	 */
	private int leftAreaX;
	
	/**
	 * 右半区x 最小坐标
	 */
	private int rightAreaX;
	
	/**
	 * 左高亮区最大x坐标
	 */
//	private int leftShedowAreaX;
	
	/**
	 * 右高亮区最小x坐标
	 */
//	private int rightShedowAreaX;
	
	/**
	 * 切圆的半径
	 */
	private int clipReginRadius;
	private int center;
	/**
	 * 内圆直径和外圆直径的比例
	 */
	private final static float  INTER_CIRCLE_LENGTH_RATE = 0.4f;
	
	/**
	 * 内圆直径
	 */
	private int interCircleLength;
	
	/**
	 * 默认的数字移动步长
	 */
	private static final int NORMAL_STEP = 1;
	
	/**
	 * 扫描时期的数字移动步长
	 */
	private static final int SCAN_STEP = 3;
	
	private static final int NUM_MATRIX_DY = 12;
	
	private int step = NORMAL_STEP;
	
	/**
	 * 00: 浅色数字0
	 * 01: 浅色数字1
	 * 10: 高亮字0
	 * 11：高亮字1
	 */
	private Bitmap[][] numBipmaps;
	
	private Paint middlePaint;
	
	private ArrayList<ArrayList<NumberMoudle>> numberMatrix ;

	private Random random;
	
	public ClipView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}

	public ClipView(Context context) {
		super(context);
		init(context);
	}
	
	public void change(){
		step = step == NORMAL_STEP?SCAN_STEP:NORMAL_STEP;
	}
	
	private void init(Context context){
		random = new Random();
        mPath = new Path();
       
        numBipmaps = new Bitmap[4][2];
		
		numBipmaps[0][0] = initBitmap(R.drawable.small_0,context);
		numBipmaps[0][1] = initBitmap(R.drawable.small_1,context);
		
		numBipmaps[1][0] = initBitmap(R.drawable.light_0,context);
		numBipmaps[1][1] = initBitmap(R.drawable.light_1,context);
		
		numberMatrix = new ArrayList<ArrayList<NumberMoudle>>();
		
		middlePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
	}
	
	private Bitmap initBitmap(int resId ,Context context){
		InputStream is = context.getResources().openRawResource(resId);
		Bitmap bitmap = BitmapFactory.decodeStream(is);
		try {
			is.close();
		} catch (IOException e) {
		}	
		return bitmap;
	}
	
    private void drawScene(Canvas canvas,int index) {
    	for(ArrayList<NumberMoudle> numberList : this.numberMatrix){
        	for(NumberMoudle nm : numberList){
//        		if(!(nm.numX<(startx - this.bitmapSmall0.getWidth())
//            			|| nm.numX > (endx + this.bitmapSmall0.getWidth()))){
        			canvas.drawBitmap(nm.getNumBitmap(index),nm.numX,nm.numY,null);
//        		}
        	}
    	}
    }	
    
    private void drawMiddle(Canvas canvas,int alpha){
    	for(ArrayList<NumberMoudle> numberList : this.numberMatrix){
        	for(NumberMoudle nm : numberList){
        		this.middlePaint.setAlpha(alpha);
        		canvas.drawBitmap(nm.getNumBitmap(1),nm.numX,nm.numY,middlePaint);
        	}
    	}
    }
    
	@Override
	protected void onDraw(Canvas canvas) {
//		long time = System.currentTimeMillis();
		canvas.drawColor(0x00ffffff);  
		if(viewWidth == 0){
			initDraw();
		}
        drawLeftAreaNum(canvas);
        drawRightAreaNum(canvas);
        drawMiddleAreaNum(canvas,0 ,viewWidth,255);
//        drawMiddleAreaNum(canvas,leftShedowAreaX,rightShedowAreaX,255);
//        drawMiddleAreaNum(canvas,rightShedowAreaX,rightAreaX ,180);
        
//        Log.i("ClipView", "" + (System.currentTimeMillis() - time));
	}

	/**
	 * 中间区
	 * @param canvas
	 */
	private void drawMiddleAreaNum(Canvas canvas,int startX,int endX,int alpha) {
		clipArea(canvas, startX, endX);    
        drawMiddle(canvas,alpha);
        canvas.restore();
	}

	/**
	 * 右半区
	 * @param canvas
	 */
	private void drawRightAreaNum(Canvas canvas) {
		drawOutSideArea(canvas,rightAreaX,viewWidth);
	}

	/**
	 * 左半区
	 * @param canvas
	 */
	private void drawLeftAreaNum(Canvas canvas) {
        drawOutSideArea(canvas,0,leftAreaX);
	}
	
	/**
	 * 左半区和右半区数字阵列的绘制
	 * @param canvas
	 * @param startX
	 * @param endX
	 */
	private void drawOutSideArea(Canvas canvas,int startX,int endX){
		clipArea(canvas, startX, endX);
        drawScene(canvas,0);
        canvas.restore();
	}

	private void clipArea(Canvas canvas, int startX, int endX) {
		canvas.save();
        canvas.translate(0, 0);//canvas移动到当前view的 x,y位置	
        mPath.reset();
        canvas.clipPath(mPath); // 清空path
        mPath.addCircle(center, center, clipReginRadius, Path.Direction.CW);
        canvas.clipPath(mPath, Region.Op.REPLACE);
        canvas.clipRect(startX, 0, endX, viewWidth);
	}

	private void initDraw() {
		//背景图圈外有6个dip的光晕，为了切图方便，减去这部分
		viewWidth = this.getWidth();
		center = (viewWidth >> 1);
		clipReginRadius = (int) ((viewWidth >> 1) - (int) 8
				* DeviceUtil.getDeviceDensity());
		interCircleLength = (int)((float)viewWidth * (float)INTER_CIRCLE_LENGTH_RATE);

		leftAreaX = (viewWidth - interCircleLength)>>1;
		rightAreaX = center + (interCircleLength>>1);
		
//		leftShedowAreaX = leftAreaX + (interCircleLength>>2);
//		rightShedowAreaX = rightAreaX - (interCircleLength>>2);
		
		int countRow = (viewWidth / numBipmaps[0][0].getHeight()) + 2;
		ArrayList<NumberMoudle> numberList;
		int y = (int) (NUM_MATRIX_DY * DeviceUtil.getDeviceDensity());
		for (int i = 0; i < countRow; i++) {
			int x = -numBipmaps[0][0].getWidth();
			int count = (viewWidth / numBipmaps[0][0].getWidth()) + 2;
			numberList = new ArrayList<NumberMoudle>();
			for (int j = 0; j < count; j++) {
				NumberMoudle numMoudle = new NumberMoudle(random.nextInt(2), x,y);
				numberList.add(numMoudle);
				x += numMoudle.getNumBitmap(0).getWidth();
			}
			numberMatrix.add(numberList);
			y += numBipmaps[0][0].getHeight();
		}
	}

	@Override
	public int getCircleMultiple() {
		return 1;
	}

	@Override
	public boolean isPause() {
		return false;
	}

	@Override
	public void onTime() {
		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			if (numberList.get(0).numX > 0) {
				int y = numberList.get(0).numY;
				numberList.remove(numberList.size() - 1);
				numberList
						.add(0, new NumberMoudle(random.nextInt(2), -numBipmaps[0][0].getWidth(), y));
			}
			for (NumberMoudle nm : numberList) {
				nm.move(step);
			}
		}	

		this.invalidate();
	}
	
	private class NumberMoudle{
		private int num;
		private int numX;
		private int numY;
		
		private NumberMoudle(int num,int numX,int numY){
			this.num = num;
			this.numX = numX;
			this.numY = numY;
		}
		
		/**
		 * 
		 * @param index 0:浅色字 1 高亮字 2：大号字
		 * @return
		 */
		private Bitmap getNumBitmap(int index){
			if(num==0){
				return numBipmaps[index][0];
			}else{
				return numBipmaps[index][1];
			}
		}
		
		private void move(int dx){
			numX +=dx;
		}
	}
}
