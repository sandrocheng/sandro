
package com.tencent.onesecurity.ui.customview.widget;

import java.util.ArrayList;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

import com.tencent.onesecurity.R;

/**
 * 字母索引，可快速定位(列表形式)
 */
public class CharIndexView extends View {

    // 字母列表
    private ArrayList<String> _charList = null;

    // 列表长度
    private int _size;

    // 点击监听器
    private OnTouchingLetterChangedListener _onTouchingLetterChangedListener;

    // 被选中的下标
    private int _choose = -1;

    // 是否是按下状态，用于控制背景颜色
    private boolean _showBkg = false;

    private Resources _resources;

    private Paint _paint;

    /** 构造方法 begin */
    public CharIndexView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init();
    }

    public CharIndexView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public CharIndexView(Context context) {
        super(context);
        init();
    }

    /** 构造方法 end */

    /**
     * 初始化方法
     */
    private void init() {
        _resources = getResources();
        _paint = new Paint();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (0 == _size) {
            return;
        }

//        int textColor;
        // 如果是用户touch状态，显示背景，字体变白
        if (_showBkg) {
            canvas.drawColor(_resources.getColor(R.color.blue_1_205791));
//            textColor = R.color.blue_4_77a4d4;
        } else {
//            textColor = R.color.blue_4_77a4d4;
        }

        int height = getHeight();
        int width = getWidth();
        // 计算每个字母应显示的高度
        int singleHeight = height / _size;
        for (int i = 0; i < _size; ++i) {
            //_paint.setTypeface(Typeface.DEFAULT_BOLD);
            _paint.setAntiAlias(true);
            _paint.setTextSize(15);
            _paint.setFakeBoldText(true);
            _paint.setColor(_resources.getColor(R.color.white_1_fafafa));
            _paint.setAlpha(127);
            String charString = _charList.get(i);
            float xPos = width / 2 - _paint.measureText(charString) / 2;
            float yPos = singleHeight * i + singleHeight;
            canvas.drawText(charString, xPos, yPos, _paint);
            _paint.reset();
        }

    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        final int oldChoose = _choose;
        final OnTouchingLetterChangedListener listener = _onTouchingLetterChangedListener;
        // 当前touch的index
        final int touchIndex = (int)(event.getY() / getHeight() * _size);

        switch (event.getAction()) {
            // 如果是按下状态，触发回调方法
            case MotionEvent.ACTION_DOWN:
                _showBkg = true;
            case MotionEvent.ACTION_MOVE:
                if (oldChoose != touchIndex && listener != null) {
                    if (touchIndex >= 0 && touchIndex < _size) {
                        listener.onTouchingLetterChanged(touchIndex, _charList.get(touchIndex));
                        _choose = touchIndex;
                        invalidate();
                    }
                }
                break;
            case MotionEvent.ACTION_UP:
                _showBkg = false;
                _choose = -1;
                invalidate();
                break;
        }
        return true;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        return super.onTouchEvent(event);
    }

    public void setCharList(ArrayList<String> charList) {
        _charList = charList;
        if (null != charList) {
            _size = charList.size();
        }
    }

    public void setOnTouchingLetterChangedListener(
            OnTouchingLetterChangedListener onTouchingLetterChangedListener) {
        this._onTouchingLetterChangedListener = onTouchingLetterChangedListener;
    }

    /**
     * 头字母列表 点击监听器
     * 
     * @author LionLiu
     */
    public interface OnTouchingLetterChangedListener {
        public void onTouchingLetterChanged(int index, String s);
    }

}
