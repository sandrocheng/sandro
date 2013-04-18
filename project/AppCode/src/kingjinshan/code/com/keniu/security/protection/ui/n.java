package com.keniu.security.protection.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;

final class n
  implements View.OnClickListener
{
  n(PreventTheftMainActivity paramPreventTheftMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    PreventTheftMainActivity localPreventTheftMainActivity = this.a;
    a.a(localPreventTheftMainActivity, "pto", "8", "");
    if (this.a.a)
    {
      ag.f(localPreventTheftMainActivity);
      Toast.makeText(this.a, 2131429299, 1).show();
      PreventTheftMainActivity.a(this.a);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.a, PreventTheftGuideActivity.class);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.n
 * JD-Core Version:    0.6.2
 */