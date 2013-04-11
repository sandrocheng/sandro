/**
* FileName: MyProgressBar.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2013-3-29 下午04:28:12
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2013-3-29 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.widget.booster;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.R.id;
import com.tencent.onesecurity.util.Log;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.text.style.TypefaceSpan;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

/**
 * @ClassName: MyProgressBar
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2013-3-29 下午04:28:12
 *
 */
public class MyProgressBar extends LinearLayout{
	private ProgressBar mMemoryUsage;
	private Context mContext;

	/**
	 * @param context
	 */
	public MyProgressBar(Context context) {
		super(context);
		mContext = context;
	}
	
	public MyProgressBar(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

//	public void initView() {
////		Drawable d1 = getResources().getDrawable(R.drawable.bg_common_list);
////		mMemoryUsage.setBackgroundDrawable(d1);
////		Drawable d2 = getResources().getDrawable(R.drawable.bg_menu_list_press_top_item);
////		mMemoryUsage.setProgressDrawable(d2);
//		mMemoryUsage = (ProgressBar)findViewById(R.id.widget_optimize_memory_usage);
//		mMemoryUsage.setMax(100);
//		mMemoryUsage.setProgress(50);
//		mMemoryUsage.setIndeterminate(false);
//	}
	
	/* (non-Javadoc)
	 * @see android.view.View#onDraw(android.graphics.Canvas)
	 */
	@Override
	protected void onDraw(Canvas canvas) {
		Log.i("QQDOCTOR_TEST", "onDraw");
		super.onDraw(canvas);
//		drawMemoryUsage(canvas);
	}

	/**
	 * 
	 */
	private void drawMemoryUsage(Canvas canvas) {
		Log.i("QQDOCTOR_TEST", "drawMemoryUsage");
		Paint p = new Paint();
		p.setTextSize(18);
		p.setColor(0xFFFF0000);
		p.setAntiAlias(true);
		p.setDither(true);
		p.setFakeBoldText(true);
		
		FontMetrics metrics = p.getFontMetrics();
		float textWidth = p.measureText("200M");
		float textHeight = Math.abs(metrics.top - metrics.bottom);
		float w = (float) this.getWidth();
		float h = (float) this.getHeight();
		float bottom = (float) this.getBottom();
		
		float x = (w * mMemoryUsage.getProgress() / (float)mMemoryUsage.getMax() - textWidth) / 2;
		float y = bottom - (h - textHeight) / 2;
		
		canvas.drawText("200M", x, y, p);
		
		canvas.drawRect(x, 0, y, bottom, p);
	}
}
