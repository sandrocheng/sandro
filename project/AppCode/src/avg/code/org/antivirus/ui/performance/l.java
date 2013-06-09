package org.antivirus.ui.performance;

import android.widget.LinearLayout;
import android.widget.Toast;
import org.antivirus.Strings;
import org.antivirus.ui.backup.apps.BackUpActivity;

final class l
  implements Runnable
{
  l(k paramk, long paramLong)
  {
  }

  public final void run()
  {
    this.b.b.b.removeView(this.b.a);
    TaskKiller.c();
    if (System.currentTimeMillis() - TaskKiller.c(this.b.b.c) > 60000L)
    {
      Toast.makeText(this.b.b.c.getBaseContext(), Strings.getString(2131296378) + Strings.getString(2131296390) + BackUpActivity.a(this.a), 1).show();
      TaskKiller.a(this.b.b.c, System.currentTimeMillis());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.l
 * JD-Core Version:    0.6.2
 */