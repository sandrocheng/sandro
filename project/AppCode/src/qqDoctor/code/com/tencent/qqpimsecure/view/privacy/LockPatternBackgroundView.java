package com.tencent.qqpimsecure.view.privacy;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import gw;

public class LockPatternBackgroundView extends LinearLayout
{
  private LinearLayout a;
  private LinearLayout b;
  private LockPatternBackgroundImage c;
  private LockPatternBackgroundImage d;
  private LinearLayout e;
  private LinearLayout f;
  private ImageView g;

  public LockPatternBackgroundView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public LockPatternBackgroundView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903168, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -1));
    this.a = ((LinearLayout)localView.findViewById(2131231078));
    this.b = ((LinearLayout)localView.findViewById(2131231082));
    this.c = ((LockPatternBackgroundImage)localView.findViewById(2131231079));
    this.d = ((LockPatternBackgroundImage)localView.findViewById(2131231081));
    this.e = ((LinearLayout)localView.findViewById(2131231077));
    this.f = ((LinearLayout)localView.findViewById(2131231080));
    this.g = ((ImageView)localView.findViewById(2131231076));
  }

  public final int a()
  {
    return this.a.getHeight();
  }

  public final void a(Animation.AnimationListener paramAnimationListener)
  {
    this.g.setVisibility(0);
    this.c.setImageResource(2130837684);
    this.d.setImageResource(2130837685);
    TranslateAnimation localTranslateAnimation1 = new TranslateAnimation(0.0F, 0.0F, 0.0F, -this.e.getHeight());
    localTranslateAnimation1.setDuration(1000L);
    localTranslateAnimation1.setFillAfter(true);
    localTranslateAnimation1.setInterpolator(new AccelerateDecelerateInterpolator());
    localTranslateAnimation1.setAnimationListener(paramAnimationListener);
    this.e.startAnimation(localTranslateAnimation1);
    TranslateAnimation localTranslateAnimation2 = new TranslateAnimation(0.0F, 0.0F, 0.0F, this.f.getHeight());
    localTranslateAnimation2.setDuration(1200L);
    localTranslateAnimation2.setFillAfter(true);
    localTranslateAnimation2.setInterpolator(new AccelerateDecelerateInterpolator());
    this.f.startAnimation(localTranslateAnimation2);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.a.getMeasuredHeight();
    if (gw.a < gw.b);
    for (int j = gw.a; ; j = gw.b)
    {
      int k = (int)(0.321F * j);
      this.f.setPadding(0, k + i, 0, 0);
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }

  public void setFooterView(View paramView)
  {
    if (paramView != null)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      this.b.addView(paramView, localLayoutParams);
    }
  }

  public void setHeaderView(View paramView)
  {
    if (paramView != null)
    {
      this.a.addView(paramView);
      if (gw.b > 320)
        this.a.setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.privacy.LockPatternBackgroundView
 * JD-Core Version:    0.6.2
 */