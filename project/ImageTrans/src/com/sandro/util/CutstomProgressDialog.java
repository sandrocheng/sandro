package com.sandro.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;

import com.sandro.ImageTrans.R;

public class CutstomProgressDialog extends ProgressDialog{

	public CutstomProgressDialog(Context context) {
		super(context);
	}

	public CutstomProgressDialog(Context context, int theme) {
		super(context, theme);
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.update_loading);
		ImageView image = (ImageView) this.findViewById(R.id.loading_img);
		Animation anim = new RotateAnimation(0, 360,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		anim.setRepeatCount(Animation.INFINITE); // 设置INFINITE，对应值-1，代表重复次数为无穷次
		anim.setDuration(1000); // 设置该动画的持续时间，毫秒单位
		anim.setInterpolator(new LinearInterpolator()); // 设置一个插入器，或叫补间器，用于完成从动画的一个起始到结束中间的补间部分
		image.startAnimation(anim);
	}
	
}
