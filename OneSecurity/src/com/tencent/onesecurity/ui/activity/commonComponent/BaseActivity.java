package com.tencent.onesecurity.ui.activity.commonComponent;

import com.tencent.onesecurity.R;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * 通用Activity基类 用来处理页面全局事件
 * 
 * @author gordon
 * 
 */
public class BaseActivity extends Activity {
	
	
	protected CartonEngine cartonEngine;
	
	/**
	 * 初始化引擎
	 */
	protected void initCarton() {
		cartonEngine = new CartonEngine();
	}
	
	@Override
	protected void onDestroy(){
		if(this.cartonEngine!=null){
			cartonEngine.destory();
		}
		super.onDestroy();
	}

	/**
	 * 
	 * @param view
	 * @param title
	 *            居中文字
	 * @param leftIconResourceId
	 *            左边icon的资源id 为-1 隐藏组件
	 * @param leftClickListener
	 * @param rightIconResourceId
	 *            右边icon的资源id 为-1隐藏组件
	 * @param rightClickListener
	 */
	protected void updateSubTitleBar(Context context, View view,
			final String title, int leftIconResourceId,
			OnClickListener leftClickListener, int rightIconResourceId,
			OnClickListener rightClickListener,
			boolean isNormalFont) {
		TextView tv = (TextView) view.findViewById(R.id.sub_title_bar_tv_title);
		if (tv != null) {
			if (!isNormalFont) {
				tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16.7f);
			}
			tv.setText(title);
		}
		TextView leftIcon = (TextView) view
				.findViewById(R.id.sub_title_bar_iv_left);
		TextView rightIcon = (TextView) view
				.findViewById(R.id.sub_title_bar_iv_right);
		if (leftIcon != null) {
			leftIcon.setText(null);
			leftIcon.setVisibility(View.VISIBLE);
			if (leftIconResourceId != -1) {
				leftIcon.setBackgroundDrawable(context.getResources().getDrawable(
						leftIconResourceId));
			} else {
				leftIcon.setBackgroundDrawable(null);
			}
		}
		if (rightIcon != null) {
			rightIcon.setText(null);
			rightIcon.setVisibility(View.VISIBLE);
			if (rightIconResourceId != -1) {
				rightIcon.setBackgroundDrawable(context.getResources().getDrawable(
						rightIconResourceId));
			} else {
				rightIcon.setBackgroundDrawable(null);
			}
		}
		
		LinearLayout leftLL = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_left);
		LinearLayout rightLL = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_right);
		if(leftLL != null){
			leftLL.setOnClickListener(leftClickListener);
		}
		if(rightLL != null){
			rightLL.setOnClickListener(rightClickListener);
		}
	}

	/**
	 * 
	 * @param view
	 * @param title
	 *            居中文字
	 * @param leftString
	 *            左边String 为null 隐藏组件
	 * @param leftClickListener
	 * @param rightString
	 *            右边String 为null隐藏组件
	 * @param rightClickListener
	 */
	protected void updateSubTitleBar(Context context, View view,
			final String title, String leftString,
			OnClickListener leftClickListener, String rightString,
			OnClickListener rightClickListener,
			boolean isNormalFont) {
		TextView tv = (TextView) view.findViewById(R.id.sub_title_bar_tv_title);
		/*--Sean fix bug ID  9617708----20121225-------Sart*/ 
		String tip=title;
		if (tv != null) {
			if(null == tip){
				tv.setText("");
			}else{
				/**  大个字母转为小字体  */
				if (!isNormalFont&&(!tip.equals("")) ) {
					tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16.7f);
				}
				if (tip.length() > 12&&(leftString!=null||rightString!=null)) {
					tip = tip.substring(0, 10)+"...";
				}	
				tv.setText(tip);			
			}
		}
		tip=null;
		/*--Sean fix bug ID  9617708----20121225-------End*/ 
		TextView leftIcon = (TextView) view
				.findViewById(R.id.sub_title_bar_iv_left);
		TextView rightIcon = (TextView) view
				.findViewById(R.id.sub_title_bar_iv_right);
		if (leftIcon != null) {
			leftIcon.setBackgroundDrawable(null);
			leftIcon.setVisibility(View.VISIBLE);
			leftIcon.setText(leftString);
		}
		if (rightIcon != null) {
			rightIcon.setText(rightString);
			rightIcon.setBackgroundDrawable(null);
			rightIcon.setVisibility(View.VISIBLE);
		}
		
		LinearLayout leftLL = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_left);
		LinearLayout rightLL = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_right);
		if(leftLL != null){
			leftLL.setOnClickListener(leftClickListener);
		}
		if(rightLL != null){
			rightLL.setOnClickListener(rightClickListener);
		}
	}
	
	public void setSubTitleBarBtn(View view, boolean leftClickable, boolean rightClickable) {
		LinearLayout leftIcon = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_left);
		LinearLayout rightIcon = (LinearLayout) view
				.findViewById(R.id.sub_title_bar_ll_right);
		if(leftIcon != null){
			leftIcon.setEnabled(leftClickable);
		}
		if(rightIcon != null){
			rightIcon.setEnabled(rightClickable);
		}
	}
	/**
	 * 设置是否可见
	 * @param view
	 * @param leftClickable
	 * @param rightClickable
	 */
	public void setSubTitleBarBtnVisible(View view, boolean leftVisible, boolean rightVisible) {
		LinearLayout leftIcon = (LinearLayout) view.findViewById(R.id.sub_title_bar_ll_left);
		LinearLayout rightIcon = (LinearLayout) view.findViewById(R.id.sub_title_bar_ll_right);
		if (leftIcon != null) {
			leftIcon.setVisibility(leftVisible ? View.VISIBLE : View.GONE);
		}
		if (rightIcon != null) {
			rightIcon.setVisibility(rightVisible ? View.VISIBLE : View.GONE);
		}
	}
	/**
	 * 设置title Bar 的左右按钮是否可见。
	 * add by sean
	 * @param view
	 * @param leftVisible 小于零 不做处理
	 * @param rightVisible 小于零 不做处理
	 */
	public void setSubTitleBarBtnVisable(View view, int leftVisible, int rightVisible) {
		
		if (leftVisible >= 0) {
			TextView leftIcon = (TextView) view.findViewById(R.id.sub_title_bar_iv_left);
			leftIcon.setVisibility(leftVisible);
			/*--Sean fix bug ID  9575280----20121203-------Sart*/ 

//			if (leftVisible == View.VISIBLE) {
//				leftIcon.setClickable(true);
//			} else if (leftVisible == View.INVISIBLE) {
//				leftIcon.setClickable(false);
//			}
			/*--Sean fix bug ID  9575280----20121203-------end*/ 
		}
		if (rightVisible >= 0) {
			TextView rightIcon = (TextView) view.findViewById(R.id.sub_title_bar_iv_right);
			rightIcon.setVisibility(rightVisible);
			/*--Sean fix bug ID  9575280----20121203-------Sart*/ 
//			if (rightVisible == View.VISIBLE) {
//				rightIcon.setClickable(true);
//			} else if (rightVisible == View.INVISIBLE) {
//				rightIcon.setClickable(false);
//			}
			/*--Sean fix bug ID  9575280----20121203-------end*/ 
		}
	}
}
