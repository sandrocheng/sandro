package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public abstract class BasePreferenceView extends LinearLayout
{
  public static final byte Type_BaseButton = 6;
  public static final byte Type_CheckBox = 2;
  public static final byte Type_CheckBox_Title = 7;
  public static final byte Type_CheckBox_white = 10;
  public static final byte Type_Dialog = 4;
  public static final byte Type_Expand = 9;
  public static final byte Type_List = 3;
  public static final byte Type_Preference = 1;
  public static final byte Type_Preference_white = 11;
  public static final byte Type_RadioButton = 8;
  public static final byte Type_SimpleButton = 12;
  public static final byte Type_Title = 5;
  private CharSequence key;
  protected View mContentView;
  protected Context mContext;
  protected Drawable mDrawable_default;
  protected Drawable mDrawable_disable;
  protected LayoutInflater mLayoutInflater;

  public BasePreferenceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    onCreateView();
  }

  public BasePreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    this.key = paramCharSequence;
    this.mDrawable_default = this.mContext.getResources().getDrawable(2130837920);
    this.mDrawable_disable = this.mContext.getResources().getDrawable(2130837921);
    onCreateView();
  }

  private void onCreateView()
  {
    this.mContentView = createMainView();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    onBindView(this.mContentView);
    addView(this.mContentView, localLayoutParams);
  }

  protected abstract View createMainView();

  public void doClickEvent()
  {
  }

  public abstract void doClickEvent(int paramInt1, int paramInt2);

  public abstract void doClickEvent(String paramString1, String paramString2);

  public CharSequence getKey()
  {
    return this.key;
  }

  protected abstract void onBindView(View paramView);

  public void setBackgroudDisable(Drawable paramDrawable)
  {
    this.mDrawable_disable = paramDrawable;
  }

  public void setBackground(int paramInt)
  {
    this.mContentView.setBackgroundColor(paramInt);
  }

  public void setBackground(Drawable paramDrawable)
  {
    this.mDrawable_default = paramDrawable;
    this.mContentView.setBackgroundDrawable(paramDrawable);
  }

  public void setItemMinHeight(int paramInt)
  {
    this.mContentView.setMinimumHeight(paramInt);
  }

  public void setKey(CharSequence paramCharSequence)
  {
    this.key = paramCharSequence;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.BasePreferenceView
 * JD-Core Version:    0.6.2
 */