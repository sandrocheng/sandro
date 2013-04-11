package com.tencent.onesecurity.ui.customview.layout;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.util.DeviceUtil;

/**
 * 
* @ClassName: MainTitleLayout2
* @Description:主菜单titlelayout, 新交互，文字不动
* @author: Jess
* @date: 2013-3-25 下午05:35:18
*
 */
public class MainTitleLayout2 extends LinearLayout{

	private int pageCount = 3;						// page个数
	private int titleZoneWidth = 0;					// title区域的width。3个title宽度和
	private int titleWidth = 0;						// 每一个title的宽度
	private int rightWidth = 0;						// 右侧非title区域的宽度
	private float minification = 0;					// 缩小率。title区域的宽度由于和下面页面的宽度有一定差距，需要计算出百分比用于滑动时的调整。
	private TextView title1, title2, title3;		// 三个Title
    
	public MainTitleLayout2(Context context, AttributeSet attrs) {
		super(context, attrs);
	}
	
	/**
	 * 设置Title
	 * @param title1
	 * @param title2
	 * @param title3
	 */
	public void setTitlesView(TextView title1, TextView title2, TextView title3) {
		this.title1 = title1;
		this.title2 = title2;
		this.title3 = title3;
		
		// 初始化数据
		pageCount = 3;
		
		// 右侧非title区域的宽度
		rightWidth = (int)(62 * DeviceUtil.getDeviceDensity());
		
		// 屏幕宽度 - 菜单按钮宽度 - Title与菜单按钮的距离
		titleZoneWidth = DeviceUtil.getScreenWidth() - rightWidth;
		
		// 每个title的width
		titleWidth = titleZoneWidth / pageCount;
		
		// 计算调整值。
		minification = (float)titleZoneWidth / DeviceUtil.getScreenWidth();
	}
	
	/**
	 * 对title移动处理
	 */
	public void move(int position, float offset, int offsetPixels){
//		Log.d("TEST", "position:" + position + " offsetPixels:" + offsetPixels);
		
		// 由于右侧有菜单，需要对offsetPixels修正（offsetPixels 是按屏幕宽度算的）
		offsetPixels = (int)(offsetPixels * minification);
		
		int pos = offsetPixels / pageCount;
		pos += position * titleWidth;
//		Log.d("TEST", "pos(" + pos + ") += startPos("+") + position("+position+") * titleWidth("+titleWidth+");");
//		if (pos > (2 * titleWidth)) pos = 2 * titleWidth;
		this.scrollTo(-pos , 0);

		if (pos == 0) {
			title1.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
			title2.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title3.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title1.setTextColor(Color.argb(255, 250, 250, 250));
			title2.setTextColor(Color.argb(178, 250, 250, 250));
			title3.setTextColor(Color.argb(178, 250, 250, 250));
		} else if (pos == titleWidth) {

			title1.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title2.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
			title3.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title1.setTextColor(Color.argb(178, 250, 250, 250));
			title2.setTextColor(Color.argb(255, 250, 250, 250));
			title3.setTextColor(Color.argb(178, 250, 250, 250));
		} else if (pos == 2 * titleWidth) {

			title1.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title2.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
			title3.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
			title1.setTextColor(Color.argb(178, 250, 250, 250));
			title2.setTextColor(Color.argb(178, 250, 250, 250));
			title3.setTextColor(Color.argb(255, 250, 250, 250));
		} else {
			;
		}
	}
}
