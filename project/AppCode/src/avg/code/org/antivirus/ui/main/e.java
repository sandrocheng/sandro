package org.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.core.Logger;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.antitheft.AntiTheftActivity;
import org.antivirus.ui.antitheft.AntitheftRegisterActivity;

final class e
  implements View.OnClickListener
{
  e(AntivirusMainScreen paramAntivirusMainScreen)
  {
  }

  public final void onClick(View paramView)
  {
    switch (i.a[AntivirusMainScreen.f(this.a).ordinal()])
    {
    default:
      Logger.errorBadAgrument();
    case 1:
    case 2:
    }
    while (true)
    {
      a.a(this.a, "app_landing", "anti_theft", null);
      return;
      this.a.startActivity(new Intent(this.a, AntiTheftActivity.class));
      continue;
      this.a.startActivity(new Intent(this.a, AntitheftRegisterActivity.class));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.e
 * JD-Core Version:    0.6.2
 */