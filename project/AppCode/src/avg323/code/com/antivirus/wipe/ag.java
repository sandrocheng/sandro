package com.antivirus.wipe;

import android.app.ProgressDialog;
import com.avg.ui.general.a.a;

class ag
  implements Runnable
{
  ag(ab paramab, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    boolean bool = new ak(ab.l(this.b)).h();
    ab.w(this.b).runOnUiThread(new ah(this, bool));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.ag
 * JD-Core Version:    0.6.2
 */