package org.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.protection.ProtectionActivity;

final class f
  implements View.OnClickListener
{
  f(AntivirusMainScreen paramAntivirusMainScreen)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a, ProtectionActivity.class));
    a.a(this.a, "app_landing", "protection", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.f
 * JD-Core Version:    0.6.2
 */