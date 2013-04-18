package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.keniu.security.commui.c;

public final class l extends c
  implements View.OnClickListener, View.OnKeyListener
{
  private Button g;

  public l(FirewallSmsTipDialog paramFirewallSmsTipDialog, Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.width = (localDisplayMetrics.widthPixels - (int)(20.0F * localDisplayMetrics.density));
    this.c.format = 1;
    this.e = LayoutInflater.from(paramContext).inflate(2130903295, null);
    ImageView localImageView = (ImageView)this.e.findViewById(2131231628);
    if (paramBoolean)
      localImageView.setImageDrawable(paramContext.getResources().getDrawable(2130838023));
    while (true)
    {
      this.g = ((Button)this.e.findViewById(2131231626));
      a(this.e);
      return;
      localImageView.setImageDrawable(paramContext.getResources().getDrawable(2130838022));
    }
  }

  private void a(View paramView)
  {
    paramView.setOnClickListener(this);
    paramView.setOnKeyListener(this);
    if (paramView.getClass() == LinearLayout.class)
    {
      LinearLayout localLinearLayout = (LinearLayout)paramView;
      for (int i = 0; i < localLinearLayout.getChildCount(); i++)
        a(localLinearLayout.getChildAt(i));
    }
  }

  public final void onClick(View paramView)
  {
    paramView.setFocusable(true);
    if (paramView == this.g)
      c();
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    c();
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.l
 * JD-Core Version:    0.6.2
 */