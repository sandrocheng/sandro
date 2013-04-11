package com.sandro.custom.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;

import com.sandro.util.DeviceUtil;
import com.sandro.util.DrawUtil;

/**
 * 
* @ClassName: CustomBackageImageView
* @Description:对imageview中的背景做特殊处理
* @author: Sandro
* @date: 2012-11-19 下午07:12:04
*
 */
public class CustomBackageImageView extends ImageView{
	
    private Paint mPaint;
    private DrawUtil mCenterRect;
    private Bitmap mSCBitmap;
	
	public CustomBackageImageView(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}
	
	public CustomBackageImageView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public CustomBackageImageView(Context context) {
		super(context);
		init(context);
	}
	
	private void init(Context context){
	}
	
	@Override
	protected void onDraw(Canvas canvas){
		drawInit();
		super.onDraw(canvas);
		canvas.drawBitmap(mSCBitmap, 0, 0, mPaint);
	}
	
	private void drawInit(){
		if(mCenterRect == null){
			int w = this.getWidth();
			int h = this.getHeight();
			int d = Math.min(w, h);
			mCenterRect = new DrawUtil();
			mCenterRect.init(w / 4, h / 4, d / 4 * 3, d / 4 * 3, 0, 360);
			mCenterRect.mPaints.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
			Drawable bg=this.getBackground(); 
			BitmapDrawable bd = (BitmapDrawable) bg;
			Bitmap mBitQQ = bd.getBitmap();


			mSCBitmap = Bitmap.createBitmap(mBitQQ.getWidth(), mBitQQ.getHeight(), Config.ARGB_8888); 
			Log.i("xformode", "w : " + w + 
					" ,h: " + h + 
					" ,mBitQQ.w : " + mBitQQ.getWidth() + 
					" ,mBitQQ.h : " + mBitQQ.getHeight());
			Log.i("xformode", "getScreenWidth"+
					DeviceUtil.getScreenWidth()+
					" ,screenHeight : " + DeviceUtil.getScreenHeight());
			mPaint = new Paint();  
			Canvas canvas = new Canvas();
			canvas.setBitmap(mSCBitmap);
			canvas.drawBitmap(mBitQQ, 0, 0, null);
			mCenterRect.draw(canvas);
			this.setBackgroundColor(0x00000000);
		}
	}

}
