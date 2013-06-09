package org.antivirus.wipe;

import android.app.ProgressDialog;

final class ae
  implements Runnable
{
  ae(WipeSd paramWipeSd, ProgressDialog paramProgressDialog)
  {
  }

  public final void run()
  {
    new ai(this.b);
    boolean bool = ai.c();
    this.b.runOnUiThread(new af(this, bool));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.ae
 * JD-Core Version:    0.6.2
 */