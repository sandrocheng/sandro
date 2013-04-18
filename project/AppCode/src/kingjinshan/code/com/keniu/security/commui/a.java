package com.keniu.security.commui;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

public final class a extends c
{
  private TextView a;

  private a(Context paramContext)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.b.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.c.gravity = 81;
    this.c.flags = 24;
    this.e = LayoutInflater.from(paramContext).inflate(2130903293, null);
    this.a = ((TextView)this.e.findViewById(2131230854));
  }

  private void a(CharSequence paramCharSequence)
  {
    this.a.setText(paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commui.a
 * JD-Core Version:    0.6.2
 */