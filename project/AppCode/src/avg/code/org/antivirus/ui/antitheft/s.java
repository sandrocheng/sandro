package org.antivirus.ui.antitheft;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.AVSettings;

final class s
  implements View.OnClickListener
{
  s(AntiTheftLockMessage paramAntiTheftLockMessage)
  {
  }

  public final void onClick(View paramView)
  {
    AntiTheftLockMessage.c(this.a);
    AVSettings.commit();
    AntiTheftLockMessage.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.s
 * JD-Core Version:    0.6.2
 */