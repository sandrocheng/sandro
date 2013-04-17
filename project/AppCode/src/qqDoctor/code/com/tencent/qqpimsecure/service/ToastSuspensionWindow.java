package com.tencent.qqpimsecure.service;

import abv.b;
import acd;
import ace;
import acf;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import zo;

public final class ToastSuspensionWindow
{
  public static ToastSuspensionWindow a;
  public Context b = QQPimApplication.a();
  public WindowManager c = (WindowManager)this.b.getSystemService("window");
  public zo d = zo.a();
  public WindowManager.LayoutParams e;
  public ToastSuspensionView f = null;
  public boolean g = false;
  public Handler h = new acd(this, QQPimApplication.a().getMainLooper());
  public abv.b i = new ace(this);

  public class ToastSuspensionView extends LinearLayout
  {
    private Context b;
    private FrameLayout c;
    private ImageView d;
    private TextView e;
    private LinearLayout f;

    public ToastSuspensionView(Context arg2)
    {
      super();
      this.b = localContext;
      setClickable(true);
      setEnabled(true);
      setFocusable(true);
      setFocusableInTouchMode(true);
      this.c = ((FrameLayout)LayoutInflater.from(this.b).inflate(2130903271, null));
      this.d = ((ImageView)this.c.findViewById(2131230990));
      this.e = ((TextView)this.c.findViewById(2131231256));
      this.f = ((LinearLayout)this.c.findViewById(2131231471));
      this.f.setOnClickListener(new acf(this));
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      addView(this.c, localLayoutParams);
    }

    public void setInfo(int paramInt1, int paramInt2)
    {
      if (paramInt1 <= 0)
      {
        this.d.setVisibility(8);
        if (paramInt2 > 0)
          break label46;
        this.e.setVisibility(8);
      }
      while (true)
      {
        return;
        this.d.setVisibility(0);
        this.d.setImageResource(paramInt1);
        break;
        label46: this.e.setVisibility(0);
        this.e.setText(2131427812);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.ToastSuspensionWindow
 * JD-Core Version:    0.6.2
 */