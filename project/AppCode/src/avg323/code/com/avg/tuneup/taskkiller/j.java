package com.avg.tuneup.taskkiller;

import android.app.ActivityManager;
import android.view.View;
import android.view.View.OnClickListener;

class j
  implements View.OnClickListener
{
  j(h paramh, View paramView)
  {
  }

  public void onClick(View paramView)
  {
    b localb = (b)this.a.getTag();
    try
    {
      ((ActivityManager)d.l(this.b.e).getSystemService("activity")).restartPackage(localb.e);
      Thread.sleep(100L);
      d.o(this.b.e).runOnUiThread(new k(this, localb));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a("could not restart package");
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.j
 * JD-Core Version:    0.6.2
 */