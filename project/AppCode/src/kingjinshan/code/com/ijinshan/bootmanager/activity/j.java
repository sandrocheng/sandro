package com.ijinshan.bootmanager.activity;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.keniu.security.malware.bz;

final class j
  implements View.OnClickListener
{
  j(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AutoBootMangerActivity.A(this.a);
    if (this.a.c == i.b)
      this.a.finish();
    while (true)
    {
      return;
      if (this.a.c == i.a)
      {
        if (AutoBootMangerActivity.B(this.a))
        {
          bz.a();
          if (bz.b());
        }
        else
        {
          Toast.makeText(this.a, this.a.getString(2131428747), 0).show();
          continue;
        }
        AutoBootMangerActivity.a(2, AutoBootMangerActivity.o(this.a));
        AutoBootMangerActivity.a(this.a, new k(this));
        AutoBootMangerActivity.C(this.a).start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.j
 * JD-Core Version:    0.6.2
 */