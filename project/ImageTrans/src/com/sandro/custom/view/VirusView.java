package com.sandro.custom.view;

import java.io.InputStream;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.Bitmap.Config;
import android.graphics.Paint.Align;
import android.util.AttributeSet;
import android.view.View;

import com.sandro.ImageTrans.R;
import com.sandro.util.CartonEngine.CartonCallBackLisener;

public class VirusView extends View implements CartonCallBackLisener{

	private Bitmap scanser;
	private Paint paint;
	
	public VirusView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	public VirusView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public VirusView(Context context) {
		super(context);
		init(context);
	}
	
	private void init(Context context){
		InputStream is = context.getResources().openRawResource(R.drawable.icon_result_find_virus);
		Bitmap temp = BitmapFactory.decodeStream(is);
		scanser = Bitmap.createBitmap(temp.getWidth(), temp.getHeight(), Config.ARGB_4444);
		for(int i = 0;i<temp.getWidth();i++){
			for(int j = 0;j<temp.getHeight();j++){
				int color = temp.getPixel(i, j);
				scanser.setPixel(i, j, color);
			}
		}
//		for(int i = temp.getWidth()/4;i<3*temp.getWidth()/4;i++){
//			for(int j = temp.getHeight()/4;j<3*temp.getHeight()/4;j++){
//				scanser.setPixel(i, j,0x00000000);
//			}
//		}
		int centerx = scanser.getWidth()>>1;
		int centery = scanser.getHeight()>>1;
		int r2 = 2500;
		for(int i = 0;i<temp.getWidth();i++){
			for(int j = 0;j<temp.getHeight();j++){
				int x2 = (centerx - i)*(centerx - i);
				int y2 = (centery - j)*(centery - j);
				if (r2>x2+y2){
					scanser.setPixel(i, j,0x00000000);
				}
			}
		}		
		
		paint = new Paint();
		paint.setStyle(Paint.Style.FILL);
	}
	
	private Path mPath = new Path();

	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
//		canvas.drawBitmap(scanser, 
//				(this.getWidth() - scanser.getWidth())/2 , 
//				(this.getHeight() - scanser.getHeight())/2, 
//				null); 
		int y = this.getHeight()>>1;
		Paint textPaint =new Paint( Paint.ANTI_ALIAS_FLAG); 
		textPaint.setTextSize(30);
		textPaint.setColor(Color.RED);
		textPaint.setTypeface(Typeface.DEFAULT);
		textPaint.setTextAlign(Align.CENTER);

		canvas.save();
        canvas.translate(0, 0);//canvas移动到当前view的 x,y位置	
        mPath.reset();
        canvas.clipPath(mPath); // 清空path
        mPath.addCircle(this.getWidth()>>1, y, 200, Path.Direction.CW);
        mPath.addCircle(this.getWidth()>>1, y, 50, Path.Direction.CCW);
        canvas.clipPath(mPath, Region.Op.REPLACE);
        y -= 250;
        for(int i = 0;i<20;i++){
        	canvas.drawText("1010110011101011010110011101010101011011010110011001", this.getWidth()>>1, y, textPaint);
        	y+=30;
        }
		canvas.restore();
	}

	@Override
	protected void onLayout(boolean changed, int left, int top, int right,
			int bottom) {
		super.onLayout(changed, left, top, right, bottom);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
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
	}
	
	
}
