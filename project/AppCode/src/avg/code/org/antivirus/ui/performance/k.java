package org.antivirus.ui.performance;

import android.app.ActivityManager;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.core.Logger;

final class k
  implements View.OnClickListener
{
  k(j paramj, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    o localo = (o)paramView.getTag();
    try
    {
      ((ActivityManager)this.b.c.getSystemService("activity")).restartPackage(localo.b);
      Thread.sleep(100L);
      TaskKiller.b(this.b.c);
      long l = p.a();
      this.b.c.runOnUiThread(new l(this, l));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.error("could not restart package");
        Logger.log(localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.k
 * JD-Core Version:    0.6.2
 */