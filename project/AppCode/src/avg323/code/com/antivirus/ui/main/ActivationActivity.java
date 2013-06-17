package com.antivirus.ui.main;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.o;
import android.view.View;
import android.view.Window;

public class ActivationActivity extends com.antivirus.ui.a
{
  private Fragment n = null;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Fragment localFragment = f().a("ActivationFragment");
    if (localFragment != null)
      ((a)localFragment).a();
    while (true)
    {
      return;
      this.n = new a();
      a(this.n, 2131230929, "ActivationFragment");
    }
  }

  protected void g()
  {
    setResult(0);
    super.g();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    p();
    setContentView(2130903080);
    findViewById(2131230769).setVisibility(8);
  }

  protected void onDestroy()
  {
    q();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.ActivationActivity
 * JD-Core Version:    0.6.2
 */