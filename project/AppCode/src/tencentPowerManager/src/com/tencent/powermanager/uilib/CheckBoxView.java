package com.tencent.powermanager.uilib;

import a.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cx;
import dv;

public class CheckBoxView extends RelativeLayout
{
  private ImageView a = null;
  private ImageView b = null;
  private Context c = null;
  private int d = 1;
  private boolean e = false;

  public CheckBoxView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }

  private CheckBoxView(Context paramContext, byte paramByte)
  {
    super(paramContext);
    this.d = 1;
    this.c = paramContext;
    a(this.c, 1);
  }

  public CheckBoxView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.a.CheckBoxView);
    int i = localTypedArray.getInteger(0, 1);
    boolean bool = localTypedArray.getBoolean(1, false);
    this.d = i;
    this.e = bool;
    this.c = paramContext;
    a(this.c, i);
    localTypedArray.recycle();
  }

  private void a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      this.b = new ImageView(paramContext);
      this.b.setId(101);
      this.b.setImageResource(2130837747);
      this.a = new ImageView(paramContext);
      this.a.setId(100);
      addView(this.a, localLayoutParams1);
      addView(this.b, localLayoutParams2);
      setChecked(this.e);
    }
  }

  public final boolean a()
  {
    return this.e;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.e = paramBoolean;
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    if (paramBoolean)
    {
      this.a.setImageResource(2130837749);
      localLayoutParams.addRule(7, this.a.getId());
      if (!dv.c())
        break label97;
      this.b.setPadding(6, 0, 6, 0);
    }
    while (true)
    {
      findViewById(101).setLayoutParams(localLayoutParams);
      return;
      this.a.setImageResource(2130837748);
      localLayoutParams.addRule(5, this.a.getId());
      break;
      label97: if (dv.d())
        this.b.setPadding(10, 0, 10, 0);
      else if (dv.f())
        this.b.setPadding(20, 0, 20, 0);
      else if (dv.e())
        this.b.setPadding(12, 0, 12, 0);
      else if (dv.b())
        this.b.setPadding(4, 0, 4, 0);
    }
  }

  public void setCheckedWithAnimation(boolean paramBoolean)
  {
    this.e = paramBoolean;
    switch (this.d)
    {
    default:
      return;
    case 1:
    }
    new StringBuilder().append(this.e).toString();
    if (this.e);
    for (TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, -0.39F, 2, 0.0F, 2, 0.0F); ; localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, 0.39F, 2, 0.0F, 2, 0.0F))
    {
      localTranslateAnimation.setDuration(100L);
      localTranslateAnimation.setFillAfter(true);
      localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
      localTranslateAnimation.setAnimationListener(new cx(this));
      this.b.startAnimation(localTranslateAnimation);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.CheckBoxView
 * JD-Core Version:    0.6.2
 */