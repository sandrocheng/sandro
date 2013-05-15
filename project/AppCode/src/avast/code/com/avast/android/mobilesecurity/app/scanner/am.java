package com.avast.android.mobilesecurity.app.scanner;

import android.app.ActivityManager;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.app.fileshield.e;
import com.avast.android.mobilesecurity.app.fileshield.v;
import com.avast.android.mobilesecurity.app.locking.core.b;

class am
  implements View.OnClickListener
{
  am(VirusShieldActivity paramVirusShieldActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (VirusShieldActivity.f(this.a))
    {
      h.a().b(VirusShieldActivity.e(this.a));
      if (VirusShieldActivity.g(this.a) != null)
        new b((ActivityManager)this.a.getSystemService("activity"), new Handler()).a(VirusShieldActivity.g(this.a), this.a);
    }
    while (true)
    {
      this.a.finish();
      return;
      if (VirusShieldActivity.b(this.a))
      {
        e.a().b(VirusShieldActivity.c(this.a));
        v.a().c(VirusShieldActivity.c(this.a));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.am
 * JD-Core Version:    0.6.2
 */