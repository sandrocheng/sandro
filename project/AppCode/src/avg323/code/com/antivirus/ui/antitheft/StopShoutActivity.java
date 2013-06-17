package com.antivirus.ui.antitheft;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import com.antivirus.AVService;
import com.avg.toolkit.e.e;
import com.avg.ui.general.o;
import com.avg.ui.general.q;
import com.avg.ui.general.r;

public class StopShoutActivity extends Activity
{
  private Handler a;
  private Runnable b = new ac(this);

  private void a()
  {
    if (this.a != null)
    {
      this.a.removeCallbacks(this.b);
      this.a = null;
      Bundle localBundle = new Bundle();
      localBundle.putString("stopshout", "11");
      AVService.a(getApplicationContext(), 9000, 9001, localBundle);
      finish();
      com.avg.toolkit.c.a.a(this, "anti_theft", "stop_shout", null, 0);
    }
  }

  private void b()
  {
    if (e.a() == null)
      return;
    int i;
    if (e.a().b())
      if (o.a == q.b)
        i = 2130837570;
    while (true)
    {
      ((ImageView)findViewById(2131230743)).setImageResource(i);
      break;
      i = o.a(r.a);
      continue;
      if (o.a == q.b)
        i = 2130837571;
      else
        i = o.b(r.a);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903102);
    getWindow().addFlags(2621568);
    b();
    ((Button)findViewById(2131231025)).setOnClickListener(new ad(this));
    if (this.a == null)
      this.a = new Handler();
    this.a.postDelayed(this.b, 600000L);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      a();
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.StopShoutActivity
 * JD-Core Version:    0.6.2
 */