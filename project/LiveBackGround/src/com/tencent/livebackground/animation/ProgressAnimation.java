package com.tencent.livebackground.animation;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class ProgressAnimation extends Animation {
    private float mSweepDegrees = 0;
    private float mFromDegrees = 0;
    
    public ProgressAnimation(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ProgressAnimation() {
    	super();
    }

    public ProgressAnimation(float fromProgress, float toProgress) {
    	super();
    	mFromDegrees = fromProgress;
        mSweepDegrees = toProgress - fromProgress;
    }

    public void setFromToForProgress(float fromProgress, float toProgress) {
    	mFromDegrees = fromProgress;
        mSweepDegrees = toProgress - fromProgress;
    }
    
    @Override
    protected void applyTransformation(float interpolatedTime, Transformation t) {
        float f[] = {0.0F,0.0F,0.0F,
	        		0.0F,0.0F,0.0F,
	        		0.0F,0.0F,0.0F};
        Matrix m = t.getMatrix();
        f[0] = mFromDegrees + mSweepDegrees * interpolatedTime;
        m.setValues(f);
    }

    @Override
    public void initialize(int width, int height, int parentWidth, int parentHeight) {
        super.initialize(width, height, parentWidth, parentHeight);
    }
}
