
package com.tencent.onesecurity.ui.customview.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.RelativeLayout;

import com.tencent.onesecurity.R;

/**
 * Setting项Layout
 * 
 * @Description 1. 点击整个layout，响应其中一个组件
 * @version 1.0
 * @author LionLiu
 */
public class SettingItemLayout extends RelativeLayout implements OnClickListener {

    // 默认类型
    private final int TYPE_DEFAULT = 0;

    // CompoundButton类型 (Checkbox, RadioButton, ToggleButton)
    private final int TYPE_COMPOUNDBUTTON = 1;

    private int _type;

    public SettingItemLayout(Context context) {
        super(context);

        _type = TYPE_DEFAULT;
        setOnClickListener(this);
    }

    public SettingItemLayout(Context context, AttributeSet attrs) {
        super(context, attrs);

        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SettingItem);
        _type = typedArray.getInteger(R.styleable.SettingItem_itemType, TYPE_DEFAULT);
        typedArray.recycle();

        setOnClickListener(this);
    }

    public SettingItemLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SettingItem);
        _type = typedArray.getInteger(R.styleable.SettingItem_itemType, TYPE_DEFAULT);
        typedArray.recycle();

        setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (_type) {
            case TYPE_COMPOUNDBUTTON:
                CompoundButton button = (CompoundButton)getChildAt(2);
                button.setChecked(!button.isChecked());
                break;
            default:
                break;
        }
    }
}
