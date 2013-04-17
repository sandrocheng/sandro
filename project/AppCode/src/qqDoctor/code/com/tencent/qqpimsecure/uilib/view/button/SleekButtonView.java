package com.tencent.qqpimsecure.uilib.view.button;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;

public class SleekButtonView extends LinearLayout
{
  private final int MSG_ANIM_NEXT_FRAME = 0;
  private ImageView mArrow1;
  private ImageView mArrow2;
  private ImageView mArrow3;
  private ArrayList<ImageView> mArrowList;
  private Context mContext;
  private Handler mHandler = new SleekButtonView.1(this);
  private boolean mIsDoAnim;
  private int mLastLightIndex;
  private int mLightIndex;

  public SleekButtonView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public SleekButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void doAnim()
  {
    int i = 0;
    if (i < this.mArrowList.size())
    {
      if (i == this.mLastLightIndex)
        ((ImageView)this.mArrowList.get(i)).setImageResource(2130838236);
      while (true)
      {
        i++;
        break;
        if (i == this.mLightIndex)
          ((ImageView)this.mArrowList.get(i)).setImageResource(2130838237);
      }
    }
    this.mHandler.sendEmptyMessageDelayed(0, 500L);
  }

  private void initView(Context paramContext)
  {
    this.mContext = paramContext;
    View localView = LayoutInflater.from(this.mContext).inflate(2130903248, null);
    this.mArrow1 = ((ImageView)localView.findViewById(2131231330));
    this.mArrow2 = ((ImageView)localView.findViewById(2131231331));
    this.mArrow3 = ((ImageView)localView.findViewById(2131231332));
    this.mArrowList = new ArrayList();
    this.mArrowList.add(this.mArrow1);
    this.mArrowList.add(this.mArrow2);
    this.mArrowList.add(this.mArrow3);
    addView(localView, new FrameLayout.LayoutParams(-1, -2));
  }

  public void startAnim()
  {
    if (this.mIsDoAnim);
    while (true)
    {
      return;
      this.mIsDoAnim = true;
      this.mLightIndex = 0;
      this.mLastLightIndex = -1;
      doAnim();
    }
  }

  public void stopAnim()
  {
    this.mIsDoAnim = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.button.SleekButtonView
 * JD-Core Version:    0.6.2
 */