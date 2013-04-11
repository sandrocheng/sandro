package com.tencent.onesecurity.ui.customview.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;

public class VirusMaskView extends ImageView implements CartonCallBackLisener{

	/**
	 * 扫描状态
	 */
//	private static final int TEXT_LASER_STATUS = 0;
	
	/**
	 * 文字渐显状态
	 */
	private static final int TEXT_SHOWING_STATUS = 1;
	
	/**
	 * 文字渐隐状态
	 */
	private static final int TEXT_HIDDING_STATUS = 2;
	
	private static final int SHOW_CANCEL = 3;
	
	private static final int CANCEL_HIDDENG = 4; 
	
	private static final int SAFE_ANIM_STATUS = 5;
	
	private int textStatus = TEXT_SHOWING_STATUS;
	
	private int colorIndex = 0;
	/**
	 * 记录呼吸效果次数
	 */
	private int alphaChangeTimes ;

	
	
//	private int clipX = 0;
	
//	private int clipEndX = 0;
	
//	private static final int CLIP_W = 15;
	
//	private static final int CLIP_SPEED = 4;
	
//	private int textWidth = 0;
	
	private int textHeight = 0;
	
	private Paint textPaint;
	
	private int viewSize = 0;
	
	private int textY = 0;
	
	private int textX = 0;
	
	private float scanTextSize = 0f;
	
	private float cancelTextSize = 0f;
	
	/**
	 * safe动画计时器
	 */
	private int safeAniIndex = 0;
	
	/**
	 * safe动画最大周期
	 */
	private static final int SAFE_DURATION_MAX = 20;
	
	/**
	 * cancel渐隐的速度
	 */
	private static final int CANCEL_HIDDING_SPEED = 15;
	
	private static final String SCAN_BUTTON_TEXT = "Scan";
	
	private static final String CANCEL_BUTTON_TEXT = "Cancel";
	
	private String progress = "0%";
	
	private final static int SLASH_TEXT_COLOR = 0xffffffff;
	
//	private final static int GRAY_TEXT_COLOR = 0x55ffffff;
	
	private boolean onPause = false;
	
	private MaskViewListener listener;
	
	public VirusMaskView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}
	
	public VirusMaskView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public VirusMaskView(Context context) {
		super(context);
		init(context);
	}
	
	public void prepare(MaskViewListener listener) {
		this.listener = listener;
	}
	
	private void init(Context context){
		// 适配xh屏幕，字体
		scanTextSize = context.getResources().getDimension(R.dimen.virus_mask_view_text_size);
		cancelTextSize = context.getResources().getDimension(R.dimen.virus_mask_view_text_size);
		textPaint =new Paint( Paint.ANTI_ALIAS_FLAG); 
		textPaint.setTextSize(scanTextSize);
		textPaint.setColor(SLASH_TEXT_COLOR);
		textPaint.setTypeface(Typeface.DEFAULT_BOLD);
		textPaint.setTextAlign(Align.CENTER);
	}
	
	private int getFontHeight(Paint paint,int offset) {
		FontMetrics fm = paint.getFontMetrics();
		int height = (int) fm.ascent;
		return (int) (Math.abs(height) - offset);
	}
	
	public void pause(boolean onPause){
		alphaChangeTimes = 0 ;
		this.onPause = onPause;
	}
	
	/**
	 * 开始scan动画
	 */
	public void turnToScan(){
		textStatus = TEXT_SHOWING_STATUS;
		textPaint.setTextSize(scanTextSize);
//		clipX = (this.viewSize>>1) - (this.textWidth>>1) - CLIP_W;
//		textWidth = this.getTextWidth(textPaint, SCAN_BUTTON_TEXT);
		this.textHeight = getFontHeight(textPaint,(int) (scanTextSize/4));
	}
	
	/**
	 * 切换到cancel状态
	 */
	public void turnToCancel(){
		this.viewSize = 0;
		textStatus = SHOW_CANCEL;
		textPaint.setTextSize(cancelTextSize);
		textPaint.setColor(SLASH_TEXT_COLOR);
//		textWidth = this.getTextWidth(textPaint, CANCEL_BUTTON_TEXT);
		this.textHeight = getFontHeight(textPaint,(int) (scanTextSize/4));
	}
	
	/**
	 * 开始cancel 的hidding流程
	 */
	public void trunToCancelHidding(){
		textStatus = CANCEL_HIDDENG;
		colorIndex = 255;
	}
	
	public void clear(){
	}
	
//	private int getTextWidth(Paint paint, String str) {
//		int iRet = 0;
//		if (str != null && str.length() > 0) {
//			int len = str.length();
//			float[] widths = new float[len];
//			paint.getTextWidths(str, widths);
//			for (int j = 0; j < len; j++) {
//				iRet += (int) Math.ceil(widths[j]);
//			}
//		}
//		return iRet;
//	}
	
	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
		if(this.viewSize == 0){
			this.initDraw(canvas);
		}  

		switch(textStatus){
//		case TEXT_LASER_STATUS:
//			textPaint.setColor(GRAY_TEXT_COLOR);
//			canvas.drawText(SCAN_BUTTON_TEXT, textX, textY, textPaint);
			
//			canvas.save();
//			canvas.translate(0, 0);// canvas移动到当前view的 x,y位置
//			canvas.clipRect(clipX, 0, clipX + CLIP_W, this.viewSize);
//			textPaint.setColor(SLASH_TEXT_COLOR);
//			canvas.drawText(SCAN_BUTTON_TEXT, textX, textY, textPaint);
//			canvas.restore();
//			break;
			
		case TEXT_SHOWING_STATUS:
		case TEXT_HIDDING_STATUS:	
			textPaint.setColor(SLASH_TEXT_COLOR);
			textPaint.setAlpha(this.colorIndex);
			canvas.drawText(SCAN_BUTTON_TEXT, textX, textY, textPaint);
			break;		
		case SHOW_CANCEL:
//			canvas.drawText(CANCEL_BUTTON_TEXT, textX,textY, textPaint);
			canvas.drawText(progress, textX,textY, textPaint);
			break;
		case CANCEL_HIDDENG:
			textPaint.setAlpha(this.colorIndex);
//			canvas.drawText(CANCEL_BUTTON_TEXT, textX,textY, textPaint);
			canvas.drawText(progress, textX,textY, textPaint);
			break;
		}
	}
	
	public void setProgress(String progress){
		this.progress = progress;
	}
	
	private void initDraw(Canvas canvas){
		viewSize = this.getWidth();
		textY = ((viewSize)>>1) + (textHeight>>1);
		textX = (viewSize)>>1;
//		clipEndX = (this.viewSize>>1) + (this.textWidth>>1);
	}

	@Override
	public int getCircleMultiple() {
		return 1;
	}

	@Override
	public boolean isPause() {
		return onPause;
	}

	@Override
	public void onTime() {
		switch(textStatus){
//		case TEXT_LASER_STATUS:
//			clipX += CLIP_SPEED;
//			if(clipX > clipEndX){
//				textStatus = TEXT_SHOWING_STATUS;
//				colorIndex = 100;
//			}	
//			textStatus = TEXT_SHOWING_STATUS;
//			colorIndex = 150;
//			break;
		case TEXT_SHOWING_STATUS:
			colorIndex+=4;
			if(colorIndex>=255){
				colorIndex = 255;
				textStatus = TEXT_HIDDING_STATUS;
				alphaChangeTimes ++ ;
			}
			this.invalidate() ;
			break;
		case TEXT_HIDDING_STATUS:
			// 三次之后不渐隐
			if(alphaChangeTimes < 4){
				colorIndex-=4;
				if(colorIndex<=50){
					textStatus = TEXT_SHOWING_STATUS;
//				clipX = (this.viewSize>>1) - (this.textWidth>>1) - CLIP_W;
				}
				this.invalidate() ;
			}else{
				pause(true) ;
			}
			break;
		case CANCEL_HIDDENG:
			colorIndex -= CANCEL_HIDDING_SPEED;
			if(this.colorIndex <=0 ){
				this.listener.startSafeAnimation();
				textStatus = SAFE_ANIM_STATUS;
				safeAniIndex = SAFE_DURATION_MAX;
			}
			this.invalidate() ;
			break;
		case SAFE_ANIM_STATUS:
			safeAniIndex --;
			if(safeAniIndex<=0){
				this.turnToScan();
			}
			this.invalidate() ;
			break;
		}
	}
	
	public void resetColorIndex(){
		colorIndex = 0;
		//add-s matt for bug 切屏回来后，呼吸效果会闪一下
		textStatus = TEXT_SHOWING_STATUS;
		//add-e matt for bug
	}
	
	public interface MaskViewListener {
		/**
		 * cancel渐隐后通知外部调用者，启动其他模块的动画
		 */
		public void startSafeAnimation();
	}
}
