package com.tencent.qqpimsecure.uilib.view.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import dp;

public class SwitchButton extends LinearLayout
  implements View.OnClickListener
{
  private ImageView mButton_Icon;
  private TextView mButton_Text;
  private int mIconRid_Close;
  private int mIconRid_Open;
  private boolean mIsOpen;
  private View mMainView;
  private View.OnClickListener mOnClickListener;

  public SwitchButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
    String str = paramContext.obtainStyledAttributes(paramAttributeSet, dp.SwitchButton).getString(0);
    if (str != null)
      this.mButton_Text.setText(str);
  }

  private void initView(Context paramContext)
  {
    this.mMainView = LayoutInflater.from(paramContext).inflate(2130903111, null);
    this.mButton_Text = ((TextView)this.mMainView.findViewById(2131230884));
    this.mButton_Icon = ((ImageView)this.mMainView.findViewById(2131230869));
    addView(this.mMainView);
    super.setOnClickListener(this);
  }

  public boolean isOpen()
  {
    return this.mIsOpen;
  }

  public void onClick(View paramView)
  {
    if (!this.mIsOpen);
    for (boolean bool = true; ; bool = false)
    {
      setIsOpen(bool);
      if (this.mOnClickListener != null)
        this.mOnClickListener.onClick(paramView);
      return;
    }
  }

  public void setButtonTextColor(int paramInt)
  {
    this.mButton_Text.setTextColor(paramInt);
  }

  public void setIconRid(int paramInt1, int paramInt2)
  {
    this.mIconRid_Open = paramInt1;
    this.mIconRid_Close = paramInt2;
    setIsOpen(this.mIsOpen);
  }

  public void setIsOpen(boolean paramBoolean)
  {
    this.mIsOpen = paramBoolean;
    if (this.mIsOpen)
      this.mButton_Icon.setImageResource(this.mIconRid_Open);
    while (true)
    {
      return;
      this.mButton_Icon.setImageResource(this.mIconRid_Close);
    }
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.mOnClickListener = paramOnClickListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.button.SwitchButton
 * JD-Core Version:    0.6.2
 */