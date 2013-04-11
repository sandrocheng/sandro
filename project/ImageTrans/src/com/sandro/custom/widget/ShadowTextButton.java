package com.sandro.custom.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;

import com.sandro.ImageTrans.R;

/**
 * 
* @ClassName: ShadowTextButton
 * 作用：点击按钮 button上的字的阴影颜色发生变化
 * 
 * 使用方式：如下
 *<com.tencent.onesecurity.ui.customview.view.CustomButtonView
 *   xmlns:client="http://schemas.android.com/apk/res/com.tencent.onesecurity"
 *       android:layout_width="wrap_content"
 *       android:layout_height="wrap_content"
 *       android:id="@+id/join_text"
 *       android:shadowDx="3"
 *       android:shadowDy="3"
 *       android:shadowRadius="1"
 *       android:text="测试阴影"
 *       client:shadowColors="@color/btn_green_shadow_color"/>
 *       
 * btn_green_shadow_color.xml可以调整颜色，目前默认为黑色，押上为白色  
* @author: Sandro
* @date: 2012-11-14 下午04:37:18
*
 */
public class ShadowTextButton extends Button{

    private ColorStateList mShadowColors;
    private float mShadowDx;
    private float mShadowDy;
    private float mShadowRadius;

	public ShadowTextButton(Context context) {
		super(context);
	}
	
	public ShadowTextButton(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context, attrs,0);

	}

	public ShadowTextButton(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context, attrs, defStyle);

	}

	/**
     * Initialization process
     * 增加设定阴影颜色的部分
     * @param context
     * @param attrs
     * @param defStyle
     */
    private void init(Context context, AttributeSet attrs, int defStyle)
    {
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CustomButtonView, defStyle, 0);

        final int attributeCount = a.getIndexCount();
        for (int i = 0; i < attributeCount; i++) {
            int curAttr = a.getIndex(i);

            switch (curAttr) {                  
                case R.styleable.CustomButtonView_shadowColors:
                    mShadowColors = a.getColorStateList(curAttr);
                    break;

                case R.styleable.CustomButtonView_android_shadowDx:
                    mShadowDx = a.getFloat(curAttr, 0);
                    break;

                case R.styleable.CustomButtonView_android_shadowDy:
                    mShadowDy = a.getFloat(curAttr, 0);
                    break;

                case R.styleable.CustomButtonView_android_shadowRadius:
                    mShadowRadius = a.getFloat(curAttr, 0);
                    break;  

                default:
                break;
        }
    }

        a.recycle();

        updateShadowColor();
    }

    /**
     * 更改阴影颜色
     */
    private void updateShadowColor()
    {
        if (mShadowColors != null) {
            setShadowLayer(mShadowRadius, mShadowDx, mShadowDy, mShadowColors.getColorForState(getDrawableState(), 0));
            invalidate();
        }
    }

    @Override
    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        updateShadowColor();
    }
}
