package com.keniu.security.main;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import com.keniu.security.e;
import com.keniu.security.g;
import com.keniu.security.service.MoSecurityService;
import com.keniu.security.util.a;

public class SplashActivity extends Activity
{
  private void a()
  {
    startService(new Intent(this, MoSecurityService.class));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g.a().a(this);
    Window localWindow = getWindow();
    localWindow.addFlags(128);
    localWindow.setFlags(1024, 1024);
    requestWindowFeature(1);
    if (e.b())
      setRequestedOrientation(1);
    setContentView(2130903123);
    new a(a.a(1000L), new cn(this), 0).start();
    new a(a.a(5L), new co(this), 0).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.SplashActivity
 * JD-Core Version:    0.6.2
 */