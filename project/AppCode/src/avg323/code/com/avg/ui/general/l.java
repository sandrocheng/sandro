package com.avg.ui.general;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.avg.toolkit.b.f;

final class l
  implements View.OnClickListener
{
  l(Context paramContext, Dialog paramDialog)
  {
  }

  public void onClick(View paramView)
  {
    com.avg.toolkit.c.a.a(this.a, "upgrade_popup", "ok", null, 0);
    this.b.dismiss();
    if (!f.a(this.a))
      Toast.makeText(this.a, this.a.getString(g.ias_alert_dialog_message), 1).show();
    while (true)
    {
      return;
      com.avg.toolkit.Marketing.a.b(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.l
 * JD-Core Version:    0.6.2
 */