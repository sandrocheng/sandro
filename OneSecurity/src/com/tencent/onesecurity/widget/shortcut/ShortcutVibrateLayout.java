package com.tencent.onesecurity.widget.shortcut;

import com.tencent.one.battery.core.device.DeviceManager;
import com.tencent.one.battery.core.device.VibrateAndRingDevice;
import com.tencent.onesecurity.R;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

/**
 * 快捷方式音量控制布局
 * @author gordonbi
 *
 */
public class ShortcutVibrateLayout extends RelativeLayout implements OnClickListener {
	private Context mContext = null;
	private VibrateAndRingDevice mManger;
	private SeekBar mSeekBar;
	private ImageView mSoundOn;
	private ImageView mSoundOff;
	private AudioManager mAudioManage;
	private int curType = 0;
	private int maxVolume = 100;

	public ShortcutVibrateLayout(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
		mContext = context;
	}

	public ShortcutVibrateLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	public ShortcutVibrateLayout(Context context) {
		super(context);
		mContext = context;
	}
	
	public void initView() {
		mManger = (VibrateAndRingDevice) VibrateAndRingDevice.getInstance(getContext());
		
		mSoundOff = (ImageView)findViewById(R.id.widget_shortcut_mute);
		mSoundOff.setOnClickListener(this);
		mSoundOn = (ImageView)findViewById(R.id.widget_shortcut_voice);
		mSoundOn.setOnClickListener(this);
		mSeekBar = (SeekBar)findViewById(R.id.widget_shortcut_seekbar_sound);
		maxVolume = mManger.getMaxVolume();
		mSeekBar.setMax(maxVolume);   //拖动条最高值与系统最大声匹配  
	    int currentVolume = mManger.getCurrentVolumn();  //获取当前值  
	    curType = mManger.getValue();
	    if(curType == DeviceManager.RING_AND_VIBRATE || curType == DeviceManager.ONLY_RING) {
	    	mSeekBar.setProgress(currentVolume);
	    }
	    else {
	    	mSeekBar.setProgress(0);
	    }
		mSeekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
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
				if(fromUser) {
					setVolume(progress);
					int curVolume = mManger.getCurrentVolumn();
					mSeekBar.setProgress(curVolume);
				}
			}
		});
	}

	/* (non-Javadoc)
	 * @see android.view.View.OnClickListener#onClick(android.view.View)
	 */
	@Override
	public void onClick(View v) {
		int viewId = v.getId();
		if(viewId == R.id.widget_shortcut_mute) {
			mManger.setVolume(0);
			mSeekBar.setProgress(0);
		}
		else if(viewId == R.id.widget_shortcut_voice) {
			mSeekBar.setProgress(maxVolume);
			setVolume(maxVolume);
		}		
	}

	private void setVolume(int value) {
		if(curType == DeviceManager.ONLY_VIBRATE) {
			int newType = DeviceManager.RING_AND_VIBRATE;
			mManger.setValue(newType);
		}
		else if(curType == DeviceManager.SILENT){
			mManger.setValue(DeviceManager.ONLY_RING);
		}
		mManger.setVolume(value);
	}
}
