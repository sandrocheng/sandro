package com.tencent.qqpimsecure.service;

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
import yl;
import ym;

public final class PrivacySafeSuspensionWindow
{
  public static PrivacySafeSuspensionWindow a;
  public Context b = QQPimApplication.a();
  public WindowManager c = (WindowManager)this.b.getSystemService("window");
  public WindowManager.LayoutParams d;
  public PrivacySafeSuspensionView e = null;
  public boolean f = false;
  public Handler g = new yl(this, QQPimApplication.a().getMainLooper());

  public class PrivacySafeSuspensionView extends LinearLayout
  {
    private Context b;
    private FrameLayout c;
    private ImageView d;
    private TextView e;

    public PrivacySafeSuspensionView(Context arg2)
    {
      super();
      this.b = localContext;
      setClickable(true);
      setEnabled(true);
      setFocusable(true);
      setFocusableInTouchMode(true);
      this.c = ((FrameLayout)LayoutInflater.from(this.b).inflate(2130903211, null));
      this.d = ((ImageView)this.c.findViewById(2131230990));
      this.e = ((TextView)this.c.findViewById(2131231256));
      this.c.setOnClickListener(new ym(this));
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      addView(this.c, localLayoutParams);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow
 * JD-Core Version:    0.6.2
 */