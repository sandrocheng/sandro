package com.avast.android.mobilesecurity.app.widget;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.app.manager.ManagerPagerActivity;
import com.avast.android.mobilesecurity.app.manager.a.i;
import com.avast.android.mobilesecurity.app.manager.a.j;
import com.avast.android.mobilesecurity.app.manager.a.n;
import com.avast.android.mobilesecurity.app.manager.a.q;
import java.text.NumberFormat;

public class WidgetControlBigActivity extends BaseActivity
{
  private i a;
  private g b;
  private h c;
  private Looper g;
  private ProgressBar h;
  private ProgressBar i;
  private ProgressBar j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private final NumberFormat q = NumberFormat.getNumberInstance();

  private void a()
  {
    this.a = new j(new q(), new n());
    this.b = new g(this, null);
    HandlerThread localHandlerThread = new HandlerThread("SystemSummaryInfo", 1);
    localHandlerThread.start();
    this.g = localHandlerThread.getLooper();
    this.c = new h(this, this.g, (ActivityManager)getSystemService("activity"));
  }

  private void a(int paramInt)
  {
    ManagerPagerActivity.call(this, paramInt);
    finish();
  }

  private void b()
  {
    this.h = ((ProgressBar)findViewById(2131165310));
    this.i = ((ProgressBar)findViewById(2131165315));
    this.j = ((ProgressBar)findViewById(2131165320));
    this.k = ((TextView)findViewById(2131165309));
    this.l = ((TextView)findViewById(2131165314));
    this.m = ((TextView)findViewById(2131165319));
    this.n = ((TextView)findViewById(2131165316));
    this.o = ((TextView)findViewById(2131165321));
    this.p = ((TextView)findViewById(2131165324));
    findViewById(2131165325).setOnClickListener(new a(this));
    ((RelativeLayout)findViewById(2131165306)).setOnClickListener(new b(this));
    ((RelativeLayout)findViewById(2131165307)).setOnLongClickListener(new c(this));
    ((RelativeLayout)findViewById(2131165312)).setOnLongClickListener(new d(this));
    ((RelativeLayout)findViewById(2131165317)).setOnLongClickListener(new e(this));
    ((RelativeLayout)findViewById(2131165322)).setOnLongClickListener(new f(this));
  }

  private void c()
  {
    this.c.sendEmptyMessage(5);
    this.c.sendEmptyMessage(1);
    this.c.sendEmptyMessage(3);
    this.c.sendEmptyMessage(2);
    this.c.sendEmptyMessage(4);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(true);
    setContentView(2130903076);
    a();
    b();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.g.quit();
  }

  protected void onStart()
  {
    super.onStart();
    c();
  }

  protected void onStop()
  {
    super.onStop();
    this.c.sendEmptyMessage(5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.WidgetControlBigActivity
 * JD-Core Version:    0.6.2
 */