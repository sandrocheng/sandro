package org.antivirus.ui.help;

import android.app.ProgressDialog;

final class e
  implements Runnable
{
  e(Help paramHelp)
  {
  }

  public final void run()
  {
    Help.a(this.a).dismiss();
    Help.b(this.a);
    Help.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.e
 * JD-Core Version:    0.6.2
 */