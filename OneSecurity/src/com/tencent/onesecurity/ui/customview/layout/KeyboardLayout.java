package com.tencent.onesecurity.ui.customview.layout;

import com.tencent.onesecurity.R;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
/**
 * 
* @ClassName: KeyboardLayout
* @Description:TODO私密箱 键盘
* @author: tony
* @date: 2012-11-23 下午04:22:14
*
 */
public class KeyboardLayout extends LinearLayout{
	/**消除键 长按返回值*/
	public static final int BACK_KEY_ON_LONG_CLICK = 101;
	private LinearLayout key [] = new LinearLayout[12];
	private ImageView keyEye;
	Context context;
	public KeyboardLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.context = context;
	}

	public KeyboardLayout(Context context) {
		super(context);
		this.context = context;
	}

	public void initView(final KeyboardCallback keyboardCallback) {
		keyEye = (ImageView) findViewById(R.id.iv_key_eye);
		key[0] = (LinearLayout) findViewById(R.id.key_1);
		key[1] = (LinearLayout) findViewById(R.id.key_2);
		key[2] = (LinearLayout) findViewById(R.id.key_3);
		key[3] = (LinearLayout) findViewById(R.id.key_4);
		key[4] = (LinearLayout) findViewById(R.id.key_5);
		key[5] = (LinearLayout) findViewById(R.id.key_6);
		key[6] = (LinearLayout) findViewById(R.id.key_7);
		key[7] = (LinearLayout) findViewById(R.id.key_8);
		key[8] = (LinearLayout) findViewById(R.id.key_9);
		key[9] = (LinearLayout) findViewById(R.id.key_eye);
		key[10] = (LinearLayout) findViewById(R.id.key_0);
		key[11] = (LinearLayout) findViewById(R.id.key_back);
		OnClickListener keyOnClickListener = new OnClickListener() {

			@Override
			public void onClick(View v) {
				int key = (Integer) v.getTag();
				keyboardCallback.OnKeyDown(key);
			}
		};
		int length = key.length;
		for (int i = 0; i < length; i++) {
			key[i].setTag(i);
			key[i].setOnClickListener(keyOnClickListener);
		}
		key[11].setOnLongClickListener(new OnLongClickListener() {
			
			@Override
			public boolean onLongClick(View v) {
				keyboardCallback.OnKeyDown(BACK_KEY_ON_LONG_CLICK);
				return false;
			}
		});
	}
	/**
	 * 设置眼睛按钮 
	 * @param isBlue   true:蓝色, false:灰色.
	 */
	public void setEye(boolean isBlue){
		if(keyEye != null){
			if(isBlue){
				keyEye.setBackgroundResource(R.drawable.btn_vault_keyboard_eye_open);
			}else{
				keyEye.setBackgroundResource(R.drawable.btn_vault_keyboard_eye_close);
			}
		}
	}

	// 回调函数
	public interface KeyboardCallback {
		public void OnKeyDown(int key);
	}
}
