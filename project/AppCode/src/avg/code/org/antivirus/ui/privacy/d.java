package org.antivirus.ui.privacy;

import android.content.Context;
import org.antivirus.applocker.a;

final class d
  implements Runnable
{
  d(PrivacyActivity paramPrivacyActivity, Context paramContext)
  {
  }

  public final void run()
  {
    new a();
    PrivacyActivity.b(this.b, a.d(this.a));
    this.b.runOnUiThread(new e(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.d
 * JD-Core Version:    0.6.2
 */