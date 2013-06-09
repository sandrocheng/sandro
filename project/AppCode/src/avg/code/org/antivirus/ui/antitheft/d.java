package org.antivirus.ui.antitheft;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import org.antivirus.core.Logger;
import org.antivirus.ganalytics.a;

final class d
  implements AdapterView.OnItemClickListener
{
  d(AntiTheftActivity paramAntiTheftActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch ((int)paramLong)
    {
    default:
      Logger.errorBadAgrument();
    case 1:
    case 2:
    case 0:
    }
    while (true)
    {
      return;
      AntiTheftActivity.b(this.a);
      continue;
      this.a.startActivity(new Intent(this.a.getApplicationContext(), AntiTheftSMSCommandsActivity.class));
      a.a(this.a, "anti_theft", "how_to", null);
      continue;
      AntiTheftActivity.c(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.d
 * JD-Core Version:    0.6.2
 */