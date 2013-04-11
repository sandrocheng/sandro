package com.tencent.onesecurity.safebox.ui;



import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.EditText;
/**
 * @ClassName: NoteManager
 * @Description:TODO(note逻辑处理类)
 * @author: Sean
 * @date: 2012-11-11 上午11:35:16
 *
 */
public class MemoEditText extends EditText
 {
	private Rect mRect;
	private Paint mPaint;
	public int countOfOneScreen=30;
    public int LineHeight;
	// we need this constructor for LayoutInflater
	public MemoEditText(Context context, AttributeSet attrs) {
		super(context, attrs);
		mRect = new Rect();
		mPaint = new Paint();
		mPaint.setStyle(Paint.Style.STROKE);
		mPaint.setColor(0xFFc1c3c5);
		LineHeight=getLineHeight();
	}

	@Override
	protected void onDraw(Canvas canvas) {
		int count = getLineCount();
        
		Rect r = mRect;
		Paint paint = mPaint;
        if(count>countOfOneScreen){
        	/*--Sean fix bug NO  9575253----20121203-------S-*/
        	for (int i = 1; i <= count; i++) {
        	/*--Sean fix bug NO  9575253----20121203-------E-*/
    			getLineBounds(0, r);

    			canvas.drawLine(0, LineHeight * i, r.right+9+ getScrollX(), LineHeight * i, paint);
    		}	
        }else{
        	/*--Sean fix bug NO  9575253----20121203-------S-*/
        	for (int i = 1; i <= countOfOneScreen; i++) {
        	/*--Sean fix bug NO  9575253----20121203-------E-*/
    			getLineBounds(0, r);

    			canvas.drawLine(0, LineHeight * i, r.right+9+ getScrollX(), LineHeight * i, paint);
    		}
        }
		super.onDraw(canvas);
	}}
