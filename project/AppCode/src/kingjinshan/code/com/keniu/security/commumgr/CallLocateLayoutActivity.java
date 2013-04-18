package com.keniu.security.commumgr;

import android.app.Activity;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.keniu.security.e;

public class CallLocateLayoutActivity extends Activity
{
  private c a;
  private float b;
  private View c;
  private View d;
  private View e;

  private void a()
  {
    com.keniu.security.a.a(this).a(this.c.getPaddingLeft(), this.c.getPaddingTop());
  }

  private static void a(TextView paramTextView, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837520);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837519);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837516);
      continue;
      paramTextView.setTextColor(-16777216);
      paramTextView.setBackgroundResource(2130837517);
      continue;
      paramTextView.setTextColor(-1);
      paramTextView.setBackgroundResource(2130837518);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903222);
    this.c = findViewById(2131231330);
    this.d = findViewById(2131231393);
    this.e = findViewById(2131231394);
    Button localButton1 = (Button)findViewById(2131231395);
    Button localButton2 = (Button)findViewById(2131231396);
    localButton1.setOnClickListener(new a(this));
    localButton2.setOnClickListener(new b(this));
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    TextView localTextView1 = (TextView)this.d;
    if (e.b())
      localTextView1.setText("KINGSOFT");
    TextView localTextView2 = (TextView)this.d;
    switch (locala.am())
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      this.a = new c(this);
      this.d.setOnTouchListener(this.a);
      Display localDisplay = getWindowManager().getDefaultDisplay();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localDisplay.getMetrics(localDisplayMetrics);
      this.b = localDisplayMetrics.density;
      int i = locala.a(localDisplayMetrics);
      int j = locala.b(localDisplayMetrics);
      this.c.setPadding(i, j, 0, 0);
      return;
      localTextView2.setTextColor(-1);
      localTextView2.setBackgroundResource(2130837520);
      continue;
      localTextView2.setTextColor(-1);
      localTextView2.setBackgroundResource(2130837519);
      continue;
      localTextView2.setTextColor(-1);
      localTextView2.setBackgroundResource(2130837516);
      continue;
      localTextView2.setTextColor(-16777216);
      localTextView2.setBackgroundResource(2130837517);
      continue;
      localTextView2.setTextColor(-1);
      localTextView2.setBackgroundResource(2130837518);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.CallLocateLayoutActivity
 * JD-Core Version:    0.6.2
 */