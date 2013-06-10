package org.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.performance.PerformanceActivity;

final class g
  implements View.OnClickListener
{
  g(AntivirusMainScreen paramAntivirusMainScreen)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a, PerformanceActivity.class));
    a.a(this.a, "app_landing", "performance", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.g
 * JD-Core Version:    0.6.2
 */