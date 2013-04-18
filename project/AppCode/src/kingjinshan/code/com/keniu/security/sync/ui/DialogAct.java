package com.keniu.security.sync.ui;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.android.internal.R.styleable;

public class DialogAct extends Activity
{
  View.OnClickListener a = new f(this);
  private int b = 0;
  private Button c;
  private Button d;

  private void a()
  {
    TextView localTextView1 = (TextView)findViewById(2131231344);
    this.c = ((Button)findViewById(2131231462));
    this.d = ((Button)findViewById(2131231464));
    TextView localTextView2 = (TextView)findViewById(2131231456);
    findViewById(2131231463).setVisibility(8);
    findViewById(2131231459).setVisibility(8);
    findViewById(2131231458).setBackgroundDrawable(null);
    findViewById(2131231335).setVisibility(0);
    this.b = getIntent().getIntExtra("dialog_type", -1);
    switch (this.b)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (this.b != 4)
      {
        this.c.setOnClickListener(new d(this));
        this.d.setOnClickListener(new e(this));
      }
      return;
      localTextView2.setText(getString(2131427865));
      localTextView1.setText(getString(2131429477));
      this.c.setText(getString(2131427864));
      this.d.setText(getString(2131428398));
      continue;
      localTextView2.setText(getString(2131429441));
      localTextView1.setText(getString(2131429469));
      this.d.setText(getString(2131428298));
      this.c.setVisibility(8);
      continue;
      localTextView2.setText(getString(2131429545));
      localTextView1.setText(getString(2131429471));
      this.d.setText(getString(2131428298));
      this.c.setVisibility(8);
      continue;
      localTextView2.setText(getString(2131427865));
      localTextView1.setText(getString(2131429619));
      this.c.setText(getString(2131429620));
      this.d.setText(getString(2131429621));
      this.c.setOnClickListener(this.a);
      this.d.setOnClickListener(this.a);
    }
  }

  private void b()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f = localDisplayMetrics.density;
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    if ((i <= 240) || (j <= 320));
    for (localLayoutParams.width = i; ; localLayoutParams.width = ((int)(300.0F * f)))
    {
      localLayoutParams.gravity = 17;
      getWindow().setAttributes(localLayoutParams);
      return;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    getWindow().setFlags(131072, 131072);
    setContentView(2130903232);
    TypedArray localTypedArray = obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f = localDisplayMetrics.density;
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    TextView localTextView1;
    TextView localTextView2;
    if ((i <= 240) || (j <= 320))
    {
      localLayoutParams.width = i;
      localLayoutParams.gravity = 17;
      getWindow().setAttributes(localLayoutParams);
      localTextView1 = (TextView)findViewById(2131231344);
      this.c = ((Button)findViewById(2131231462));
      this.d = ((Button)findViewById(2131231464));
      localTextView2 = (TextView)findViewById(2131231456);
      findViewById(2131231463).setVisibility(8);
      findViewById(2131231459).setVisibility(8);
      findViewById(2131231458).setBackgroundDrawable(null);
      findViewById(2131231335).setVisibility(0);
      this.b = getIntent().getIntExtra("dialog_type", -1);
      switch (this.b)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      if (this.b != 4)
      {
        this.c.setOnClickListener(new d(this));
        this.d.setOnClickListener(new e(this));
      }
      localTypedArray.recycle();
      return;
      localLayoutParams.width = ((int)(300.0F * f));
      break;
      localTextView2.setText(getString(2131427865));
      localTextView1.setText(getString(2131429477));
      this.c.setText(getString(2131427864));
      this.d.setText(getString(2131428398));
      continue;
      localTextView2.setText(getString(2131429441));
      localTextView1.setText(getString(2131429469));
      this.d.setText(getString(2131428298));
      this.c.setVisibility(8);
      continue;
      localTextView2.setText(getString(2131429545));
      localTextView1.setText(getString(2131429471));
      this.d.setText(getString(2131428298));
      this.c.setVisibility(8);
      continue;
      localTextView2.setText(getString(2131427865));
      localTextView1.setText(getString(2131429619));
      this.c.setText(getString(2131429620));
      this.d.setText(getString(2131429621));
      this.c.setOnClickListener(this.a);
      this.d.setOnClickListener(this.a);
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.b == 4) && ((paramInt == 4) || (paramInt == 3)))
    {
      Context localContext = getApplicationContext();
      NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
      Intent localIntent = new Intent(getApplicationContext(), DialogAct.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("dialog_type", 4);
      PendingIntent localPendingIntent = PendingIntent.getActivity(localContext, 0, localIntent, 268435456);
      String str = localContext.getString(2131429623);
      Notification localNotification = new Notification(2130838031, str, System.currentTimeMillis());
      localNotification.flags = (0x10 | localNotification.flags);
      localNotification.setLatestEventInfo(localContext, localContext.getString(2131429622), str, localPendingIntent);
      localNotificationManager.notify(4884, localNotification);
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.DialogAct
 * JD-Core Version:    0.6.2
 */