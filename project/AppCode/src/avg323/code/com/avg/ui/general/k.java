package com.avg.ui.general;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.avg.toolkit.c.a;

final class k
  implements View.OnClickListener
{
  k(Context paramContext, Dialog paramDialog)
  {
  }

  public void onClick(View paramView)
  {
    a.a(this.a, "upgrade_popup", "cancel", null, 0);
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.k
 * JD-Core Version:    0.6.2
 */