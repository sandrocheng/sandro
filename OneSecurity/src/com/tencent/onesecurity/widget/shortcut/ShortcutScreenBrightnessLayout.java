package com.tencent.onesecurity.widget.shortcut;

import com.tencent.one.battery.core.device.ScreenBrightnessDevice;
import com.tencent.onesecurity.R;
import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

/**
 * 快捷方式widget展开页面 屏幕明暗度调节布局
 * @author gordonbi
 *
 */
public class ShortcutScreenBrightnessLayout extends RelativeLayout implements OnClickListener{
	private SeekBar mBrightnessBar;
	private ScreenBrightnessDevice mBrightnessManger = null;
	private Context mContext = null;
	private ImageView mBrightnessMoon;
	private ImageView mBrightnessSun;
	private BrightnessChangeLinstener mBrightnessChangeLinstener;
	private float seekbarToReal = (255 - 30) / 100.0f;
	private float realToSeekbar = 100.0f / (255 - 30);

	public ShortcutScreenBrightnessLayout(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
		mContext = context;
	}

	public ShortcutScreenBrightnessLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	public ShortcutScreenBrightnessLayout(Context context) {
		super(context);
		mContext = context;
	}
	
	public void initView() {
		mBrightnessManger = (ScreenBrightnessDevice) ScreenBrightnessDevice.getInstance(getContext());
		mBrightnessMoon = (ImageView)findViewById(R.id.widget_shortcut_moon);
		mBrightnessMoon.setOnClickListener(this);
		mBrightnessSun = (ImageView)findViewById(R.id.widget_shortcut_sun);
		mBrightnessSun.setOnClickListener(this);
		mBrightnessBar = (SeekBar)findViewById(R.id.widget_shortcut_seekbar_brightness);
	    int curValue = mBrightnessManger.getRealValue();//获取当前值  
	    mBrightnessBar.setProgress(calculateSeekbar(curValue));
		mBrightnessBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated constructor stub
			}
			
			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated constructor stub
			}
			
			@Override
			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
				int value = calculateReal(progress);
				mBrightnessManger.setValue(value);
				if(mBrightnessChangeLinstener != null)
					mBrightnessChangeLinstener.onBrightnessChanged(value);
			}
		});
	}

	/* (non-Javadoc)
	 * @see android.view.View.OnClickListener#onClick(android.view.View)
	 */
	@Override
	public void onClick(View v) {
		int viewId = v.getId();
		if(viewId == R.id.widget_shortcut_moon) {
			mBrightnessManger.setValue(30);
			mBrightnessBar.setProgress(0);
		}
		else if(viewId == R.id.widget_shortcut_sun) {
			mBrightnessManger.setValue(255);
			mBrightnessBar.setProgress(100);
		}
	}
	
	private int calculateReal(int value) {
		int calValue = (int) (value * seekbarToReal + 30);
		return calValue;
	}
	
	private int calculateSeekbar(int value) {
		int calValue = (int)((value - 30) * realToSeekbar);
		return calValue;
	}
	
	public void registerBrightnessChangeLinstener(BrightnessChangeLinstener bcl) {
		this.mBrightnessChangeLinstener = bcl;
	}
	
	public interface BrightnessChangeLinstener {
		void onBrightnessChanged(int value);
	}
}
