package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
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
import com.jxphone.mosecurity.a.a;

public class TrafficWarningDialog extends Activity
  implements View.OnClickListener
{
  private Intent a;
  private Button b;
  private Button c;
  private TextView d;

  public void onClick(View paramView)
  {
    if (paramView == this.b)
    {
      a.c(this, "2_1");
      Intent localIntent = new Intent();
      localIntent.setClass(this, TrafficTabActivity.class);
      startActivity(localIntent);
    }
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    setTheme(2131361818);
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903189);
    this.a = getIntent();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    float f = localDisplayMetrics.density;
    if (localLayoutParams.screenOrientation == 1)
      if ((i <= 240) || (j <= 320))
      {
        localLayoutParams.width = i;
        localLayoutParams.height = -2;
        localLayoutParams.height = -2;
        localLayoutParams.height = -2;
        getWindow().setAttributes(localLayoutParams);
        this.b = ((Button)findViewById(2131231337));
        this.c = ((Button)findViewById(2131231338));
        this.c.setOnClickListener(this);
        String str = this.a.getStringExtra("title1");
        this.d = ((TextView)findViewById(2131231336));
        this.d.setText(str);
        if (this.a.getIntExtra("traffic_warn_type", -1000) != 0)
          break label385;
        this.b.setText(2131429404);
        this.b.setOnClickListener(new dp(this));
      }
    while (true)
    {
      return;
      localLayoutParams.width = ((int)(f * 260.0F));
      localLayoutParams.height = -2;
      break;
      if (localLayoutParams.screenOrientation == 0)
      {
        if ((i <= 320) || (j <= 240))
        {
          localLayoutParams.width = -2;
          localLayoutParams.height = j;
          break;
        }
        localLayoutParams.width = -2;
        localLayoutParams.height = ((int)(f * 260.0F));
        break;
      }
      if ((i <= 240) || (j <= 320))
      {
        localLayoutParams.width = i;
        localLayoutParams.height = -2;
        break;
      }
      localLayoutParams.width = ((int)(f * 260.0F));
      localLayoutParams.height = -2;
      break;
      label385: this.b.setText(2131429404);
      this.b.setOnClickListener(this);
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficWarningDialog
 * JD-Core Version:    0.6.2
 */