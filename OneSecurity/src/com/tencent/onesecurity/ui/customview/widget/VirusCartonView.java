package com.tencent.onesecurity.ui.customview.widget;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Random;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;
import com.tencent.onesecurity.util.DeviceUtil;

public class VirusCartonView extends ImageView implements CartonCallBackLisener{
	
	/**
	 * 未杀毒状态 
	 */
	private static final int  VIRUS_STATUS_NORMAL = 0;
	
	/**
	 * 杀毒进行中 
	 */
	private static final int  VIRUS_STATUS_SCANNING = 1;
	
	
	/**
	 * 描述杀毒的状态
	 */
	private int virusStatus = VIRUS_STATUS_NORMAL;
	
	private Path mPath ;
	private int viewWidth;
	
	/**
	 * view的尺寸（dip）
	 * 为了在构造函数中就初始化好laser图片，所以写死view的尺寸，更关图片时需要注意修改该尺寸
	 * 其他地方尽量不用该变量
	 */
	private static int VIEW_SIZE = 221;
	
	/**
	 * 实际圆尺寸
	 */
	private static int CIRCLE_SIZE = 160;
	
	private static float INTER_CIRCLE_SIZE = 0;
	
	private int interCircleRadius = 0;
	
	private int laserX;
	
	private static final int LASER_SPEED = 10;
	
	/**
	 * 扫描最大走到的区域
	 */
	private int laserMaxPosX = 0;
	
	/**
	 * laser扫描的方向
	 * 1 向右
	 * -1向左
	 */
	private int laserDir = 1;
	
	
	/**
	 * 切圆的半径
	 */
	private int clipReginRadius;
	private int center;
//	/**
//	 * 内圆直径和外圆直径的比例
//	 */
//	private final static float  INTER_CIRCLE_LENGTH_RATE = 0.4f;

	/**
	 * 开始杀毒和结束杀毒时闪屏的左右clip边界
	 */
	private int leftSide,rightSide;
	
	/**
	 * 默认/扫描的数字移动步长
	 */
	private static final int NORMAL_STEP = 1;
	
	private static final int NUM_MATRIX_DY = 12;
	
	private int step = NORMAL_STEP;
	
	/**
	 * 正常的小子背景速度
	 */
	private static final int NORMAL_BG_SPEED = 2;
	
	/**
	 * 扫描期间小子背景速度
	 */
	private static final int SCAN_BG_SPEED = 1;
	
	/**
	 * 背景字的移动速度
	 */
	private int bg_speed = NORMAL_BG_SPEED;
	
	/**
	 * 00: 浅色数字0
	 * 01: 浅色数字1
	 * 10: 高亮字0
	 * 11：高亮字1
	 */
	private Bitmap[][] numBipmaps;
	
	/**
	 * 正向扫描图片
	 */
	private Bitmap laserBitmap;
	
	/**
	 * 反向扫描图片
	 */
	private Bitmap anitLaserBitmap;
	
	/**
	 * 背景中慢慢移动的小数字
	 */
	private BgNumMoudle[] backgroundNums;
	
	/**
	 * 背景小字字体大小
	 */
	private static final int NUM_BG_TEXT_SIZE = 15;
	
	/**
	 * 非杀毒状态背景小子颜色
	 */
	private static final int NOR_NUM_BG_TEXT_COLOR = 0x22ffffff;
	
	/**
	 * 杀毒状态背景小子颜色
	 */
	private static final int SCAN_NUM_BG_TEXT_COLOR = 0x44ffffff;
	
	
	/**
	 * 背景小字行数
	 */
	private static final int NUM_BG_TEXT_ROWS = 16;
	
	/**
	 * 背景小字每行的个数
	 */
	private static final int NUM_BG_TEXT_ROW_COUNTS = 100;
	
	private Paint middlePaint;
	
	private Paint bgNumPaint;
	
	private ArrayList<ArrayList<NumberMoudle>> numberMatrix ;

	private Random random;
	
	/**
	 * 计算移动的计数器
	 */
	private long moveCount = 0;
	
	/**
	 * 用于计算laser每次从左往右间隔的计数器
	 */
	private int laserCount;
	
	/**
	 * 数字矩阵的列数
	 */
	private int cols=0;
	
	private boolean onPause=false;
	
	private final static int MAX_LASER_COUNT = 200;
	

	
	/**
	 * 10天内没有杀毒的大字出现几率
	 */
	private static final int TEN_DAY_BIG_RATE = 15;
	
	/**
	 * 10天内没有杀毒的数字隐藏几率
	 */
	private static final int TEN_DAY_HIDDEN_RATE = 25;
	
	/**
	 * 超过10天内没有杀毒的大字出现几率
	 */
	private static final int OVER_TEN_DAY_BIG_RATE = 30;
	
	/**
	 * 超过10天内没有杀毒的数字隐藏几率
	 */
	private static final int OVER_TEN_DAY_HIDDEN_RATE = 50;
	
	/**
	 * 出现大数字的几率
	 */
	private int bigRate = 0;
	
	/**
	 * 隐藏数字的几率
	 */
	private int hiddenRate = 0;
	
	public VirusCartonView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public VirusCartonView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public VirusCartonView(Context context) {
		super(context);
		init(context);
	}
	
	private void init(Context context){
		VIEW_SIZE = context.getResources().getInteger(R.integer.main_circle_view_size);
		CIRCLE_SIZE = context.getResources().getInteger(R.integer.main_circle_size);
		INTER_CIRCLE_SIZE = context.getResources().getInteger(R.integer.main_inner_circle_size);
		interCircleRadius = ((int)(INTER_CIRCLE_SIZE * DeviceUtil.getDeviceDensity()))>>1;
		
		random = new Random();
        mPath = new Path();
       
        numBipmaps = new Bitmap[3][2];
		
		numBipmaps[0][0] = initBitmap(R.drawable.img_virus_main_circle_small_0,context);
		numBipmaps[0][1] = initBitmap(R.drawable.img_virus_main_circle_small_1,context);
		
		numBipmaps[1][0] = initBitmap(R.drawable.img_virus_main_circle_small_0,context);
		numBipmaps[1][1] = initBitmap(R.drawable.img_virus_main_circle_small_1,context);
		
		numBipmaps[2][0] = initBitmap(R.drawable.img_virus_main_circle_big_0,context);
		numBipmaps[2][1] = initBitmap(R.drawable.img_virus_main_circle_big_1,context);		
		
		Bitmap laserTemp = initBitmap(R.drawable.img_virus_main_scan_laser,context);
		
		this.laserBitmap = initLaserBitmap(laserTemp);
		anitLaserBitmap = initAntiLaserBitmap();
		numberMatrix = new ArrayList<ArrayList<NumberMoudle>>();
		
		middlePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
		

		bgNumPaint = new Paint();
		bgNumPaint.setTextSize(NUM_BG_TEXT_SIZE);
		bgNumPaint.setColor(NOR_NUM_BG_TEXT_COLOR);
		
		backgroundNums = new BgNumMoudle[NUM_BG_TEXT_ROWS];
		for(int i=0;i<backgroundNums.length;i++){
			String str = getRandomNums();
			int w = getTextWidth(this.bgNumPaint,str);
			backgroundNums[i] = new BgNumMoudle(str,w);
		}
	}
	
	public void clear(){
		if(numBipmaps!=null){
			for(Bitmap[] bitmaps : numBipmaps){
				if(bitmaps!=null){
					for(Bitmap bm : bitmaps){
						if(bm!=null && !bm.isRecycled()){
							bm.recycle();
							bm = null;
						}
					}
				}
				bitmaps = null;
			}
		}
		numBipmaps = null;
		
		if(laserBitmap!=null && !laserBitmap.isRecycled()){
			laserBitmap.recycle();
		}
		laserBitmap = null;
		
		if(anitLaserBitmap!=null && !anitLaserBitmap.isRecycled()){
			anitLaserBitmap.recycle();
		}
		anitLaserBitmap = null;
		
		if(backgroundNums!=null){
			for(BgNumMoudle bm : backgroundNums){
				bm.clear();
				bm = null;
			}
			backgroundNums = null;
		}
		for(ArrayList<NumberMoudle> list : numberMatrix){
			list.clear();
		}
		numberMatrix.clear();
	}
	
	private Bitmap initAntiLaserBitmap(){
		Matrix matrix = new Matrix();
		matrix.postRotate(180, (laserBitmap.getWidth() >> 1), (laserBitmap.getHeight() >> 1));
		Bitmap resizeBmp = Bitmap.createBitmap(laserBitmap, 0, 0, laserBitmap
				.getWidth(), laserBitmap.getHeight(), matrix, true);
		return resizeBmp;
	}
	
	private Bitmap initLaserBitmap(Bitmap laserTemp) {
		float scale = (float) (VIEW_SIZE * DeviceUtil.getDeviceDensity())/laserTemp.getHeight();
		Matrix matrix = new Matrix();
		matrix.postScale(scale, scale);
		Bitmap resizeBmp = Bitmap.createBitmap(laserTemp, 0, 0, laserTemp
				.getWidth(), laserTemp.getHeight(), matrix, true);
		return resizeBmp;
	}
	
	private String getRandomNums(){
		StringBuffer sb = new StringBuffer();
		for(int i = 0;i<NUM_BG_TEXT_ROW_COUNTS;i++){
			sb.append(random.nextInt(2));
		}
		return sb.toString();
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
	
    private void drawScene(Canvas canvas) {
    	for(ArrayList<NumberMoudle> numberList : this.numberMatrix){
        	for(NumberMoudle nm : numberList){
        		if(!nm.isShow){
        			continue;
        		}
        		int index = 0;
        		if(nm.isBig){
        			index = 2;
        		}
        		canvas.drawBitmap(nm.getNumBitmap(index),nm.numX,nm.numY,null);
        	}
    	}
    }
    
    private void drawMiddle(Canvas canvas,int alpha){
    	for(ArrayList<NumberMoudle> numberList : this.numberMatrix){
        	for(NumberMoudle nm : numberList){
        		if(nm.isShow){
            		this.middlePaint.setAlpha(alpha);
            		int index = 1;
            		if(nm.isBig){
            			index = 2;
            		}
            		canvas.drawBitmap(nm.getNumBitmap(index),nm.numX,nm.numY,middlePaint);
        		}
        	}
    	}
    }
    
	@Override
	protected void onDraw(Canvas canvas) {
		// long time = System.currentTimeMillis();
		canvas.drawColor(0x00ffffff);
		if (viewWidth == 0) {
			initDraw();
		}
		drawBGNums(canvas);

		switch (virusStatus) {
		case VIRUS_STATUS_NORMAL:
			drawOutSideArea(canvas);
			if(leftSide < rightSide){
				drawMiddleAreaNum(canvas, this.leftSide, this.rightSide, 200);
			}
			break;
		case VIRUS_STATUS_SCANNING:
			if(rightSide < this.viewWidth){
				drawOutSideArea(canvas);
			}
			drawMiddleAreaNum(canvas, this.leftSide, this.rightSide, 200);
			drawLaser(canvas);
			break;
		}
		// Log.i("ClipView", "" + (System.currentTimeMillis() - time));
	}

	private void drawLaser(Canvas canvas) {
		clipArea(canvas);
		if(laserDir > 0){
			canvas.drawBitmap(this.laserBitmap, this.laserX, 0, null);
		}else{
			canvas.drawBitmap(this.anitLaserBitmap, this.laserX, 0, null);
		}
		canvas.restore();
	}
	
	/**
	 * 中间区
	 * @param canvas
	 */
	private void drawMiddleAreaNum(Canvas canvas,int startX,int endX,int alpha) {
		clipArea(canvas);  
		canvas.clipRect(startX, 0, endX, viewWidth);
        drawMiddle(canvas,alpha);
        canvas.restore();
	}

	/**
	 * 右半区
	 * @param canvas
	 */
//	private void drawRightAreaNum(Canvas canvas) {
//		drawOutSideArea(canvas,rightAreaX,viewWidth);
//	}

	/**
	 * 左半区
	 * @param canvas
	 */
//	private void drawLeftAreaNum(Canvas canvas) {
//        drawOutSideArea(canvas,0,leftAreaX);
//	}

	/**
	 * 左半区和右半区数字阵列的绘制
	 * @param canvas
	 * @param startX
	 * @param endX
	 */
	private void drawOutSideArea(Canvas canvas){
		clipArea(canvas);
        drawScene(canvas);
        canvas.restore();
	}

	private void clipArea(Canvas canvas) {
		canvas.save();
        canvas.translate(0, 0);//canvas移动到当前view的 x,y位置	
        mPath.reset();
        canvas.clipPath(mPath); // 清空path
        mPath.addCircle(center, center, clipReginRadius, Path.Direction.CW);
        mPath.addCircle(center, center, interCircleRadius, Path.Direction.CCW);
        canvas.clipPath(mPath, Region.Op.REPLACE);
	}
	
	/**
	 * 绘制背景小字
	 */
	private void drawBGNums(Canvas canvas){
		canvas.save();
        canvas.translate(0, 0);//canvas移动到当前view的 x,y位置	
        mPath.reset();
        canvas.clipPath(mPath); // 清空path
        mPath.addCircle(center, center, clipReginRadius, Path.Direction.CW);
        canvas.clipPath(mPath, Region.Op.REPLACE);
        for(BgNumMoudle nm : backgroundNums){
        	canvas.drawText(nm.numStr, nm.numX, nm.numY, bgNumPaint);
        }
		canvas.restore();
	}

	private void initDraw() {
		viewWidth = this.getWidth();
		center = (viewWidth >> 1);
		clipReginRadius = ((int) (CIRCLE_SIZE * DeviceUtil.getDeviceDensity()))>>1;
		laserMaxPosX = clipReginRadius + ((viewWidth - clipReginRadius)>>1);
		int countRow = (viewWidth / numBipmaps[0][0].getHeight()) + 2;
		ArrayList<NumberMoudle> numberList;
		int y = (int) (NUM_MATRIX_DY * DeviceUtil.getDeviceDensity());
		for (int i = 0; i < countRow; i++) {
			int x = -numBipmaps[0][0].getWidth();
			int count = (viewWidth / numBipmaps[0][0].getWidth()) + 2;
			numberList = new ArrayList<NumberMoudle>();
			for (int j = 0; j < count; j++) {
				NumberMoudle numMoudle = new NumberMoudle(random.nextInt(2), x,y,j);
				numberList.add(numMoudle);
				x += numMoudle.getNumBitmap(0).getWidth();
			}
			numberMatrix.add(numberList);
			y += numBipmaps[0][0].getHeight();
		}
		cols = numberMatrix.get(0).size();
		
		int numBgHeight = viewWidth / backgroundNums.length;
		for (int i = 0; i < backgroundNums.length; i++) {
			backgroundNums[i].numX = -random.nextInt(backgroundNums[i].strWidth);
			backgroundNums[i].numY = i * numBgHeight;
		}
	}
	
	private int getTextWidth(Paint paint, String str) {
		int iRet = 0;
		if (str != null && str.length() > 0) {
			int len = str.length();
			float[] widths = new float[len];
			paint.getTextWidths(str, widths);
			for (int j = 0; j < len; j++) {
				iRet += (int) Math.ceil(widths[j]);
			}
		}
		return iRet;
	}
	
	public void pause(boolean onPause){
		this.onPause = onPause;
	}
	
	@Override
	public int getCircleMultiple() {
		return 1;
	}

	@Override
	public boolean isPause() {
		return onPause;
	}
	
	/**
	 * 刚杀完毒一天之内的扫描情况
	 */
	public void setOneDayEffect(){
		bigRate = 0;
		hiddenRate = 0;
		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			for (NumberMoudle nm : numberList) {
				nm.isBig = false;
				nm.isShow = true;
			}
		}
	}
	

	/**
	 * 10天内没有杀毒的情况
	 */
	public void setTenDayEffect(){
		bigRate = TEN_DAY_BIG_RATE;
		hiddenRate = TEN_DAY_HIDDEN_RATE;
	}
	
	/**
	 * 超过10天没有杀毒的情况
	 */
	public void setOverTenDayEffect(){
		bigRate = OVER_TEN_DAY_BIG_RATE;
		hiddenRate = OVER_TEN_DAY_HIDDEN_RATE;		
	}

	@Override
	public void onTime() {
		moveCount ++;
		switch (virusStatus) {
		case VIRUS_STATUS_NORMAL:
			if (leftSide < rightSide) {
				leftSide += LASER_SPEED;
			} else {
				leftSide = rightSide;
			}
			break;
		case VIRUS_STATUS_SCANNING:
			if(rightSide < this.viewWidth){
				leftSide += numBipmaps[0][0].getWidth();
			}else{
				rightSide = viewWidth;
			}
			laserMove();
			laserNum();
			break;
		}
		
		if(numberMatrix.size() == 0){
			return;
		}
		
		boolean addNums = false;
		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			if (numberList.get(0).numX > 0) {
				int y = numberList.get(0).numY;
				numberList.remove(numberList.size() - 1);
				numberList
						.add(0, new NumberMoudle(random.nextInt(2), -numBipmaps[0][0].getWidth(), y,cols));
				addNums = true;
			}
			for (NumberMoudle nm : numberList) {
				nm.move(step);
			}
		}	
		if(addNums){
			cols++;
		}

//		if (moveCount % 2 == 0) {
			for (BgNumMoudle bg : backgroundNums) {
				bg.move();
			}
//		}
		this.invalidate();
	}
	
	private void laserNum(){
		int numXOffSet = center - clipReginRadius - numberMatrix.get(0).get(0).getNumBitmap(0).getWidth();
		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			for (NumberMoudle nm : numberList) {
				if(nm.numX > numXOffSet &&
						this.laserX > nm.numX + 100){
					
					nm.isBig = false;
					nm.isShow = true;
				}
			}
		}	
	}

	private void laserMove() {
		if(laserDir > 0){//向右
			laserCount++;
			if(laserCount>MAX_LASER_COUNT){
				if(laserX > laserMaxPosX + 200){
					laserDir = -1;
					laserX = laserMaxPosX + 200;
				}
			}
			else{
				return;
			}
			
		}else{//向左
			if(laserX < -  this.laserBitmap.getWidth()){
				laserDir = 1;
				laserX = - this.laserBitmap.getWidth();
				laserCount = 0;
			}
		}
		laserX += laserDir * LASER_SPEED;
	}
	
	/**
	 * 
	* @ClassName: bgNumMoudle
	* @Description:背景小字
	* @author: Sandro
	* @date: 2012-11-25 上午10:33:18
	*
	 */
	private class BgNumMoudle{
		private String numStr;
		private int numX;
		private int numY;
		private int strWidth;
		
		private BgNumMoudle(String numStr,int strWidth){
			this.numStr = numStr;	
			this.strWidth = strWidth;
		}
		
		private void move(){
			if(moveCount%bg_speed == 0){
				numX ++;
				if(numX > viewWidth){
					numX = -strWidth;
				}
			}
		}
		
		private void clear(){
			numStr = null;
		}
	}
	
	private class NumberMoudle{
		private int num;
		private int numX;
		private int numY;
		private boolean isBig = false;
		private boolean isShow = true;
		
		private NumberMoudle(int num,int numX,int numY,int numIndex){
			this.num = num;
			this.numX = numX;
			this.numY = numY;
			if(numIndex%2==0){
				this.isBig = random.nextInt(100)<bigRate?true:false;
			}
			if(!isBig){
				this.isShow = random.nextInt(100)<hiddenRate?false:true;
			}
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
	
	/**
	 * 外部调用接口，
	 * @param scan true:开始杀毒 false:杀毒结束
	 */
	public void changeStatus(boolean scan){
		if(scan){
			laserCount = MAX_LASER_COUNT + 1;
			laserDir = 1;
			laserX = -this.laserBitmap.getWidth();
			virusStatus = VIRUS_STATUS_SCANNING;
			bg_speed = SCAN_BG_SPEED;
			bgNumPaint.setColor(SCAN_NUM_BG_TEXT_COLOR);
			leftSide = 0;
			rightSide = 0;
		}else{
			virusStatus = VIRUS_STATUS_NORMAL;
			bg_speed = NORMAL_BG_SPEED;
			bgNumPaint.setColor(NOR_NUM_BG_TEXT_COLOR);
			leftSide = 0;
			rightSide = this.viewWidth;
		}
	}

}
