package com.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.ui.antitheft.AntiTheftActivity;
import com.antivirus.ui.antitheft.AntitheftRegisterActivity;

class g
  implements View.OnClickListener
{
  g(c paramc)
  {
  }

  public void onClick(View paramView)
  {
    switch (k.a[c.h(this.a).ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(c.k(this.a), "category_app_landing", "action_anti_theft", null, 0);
      return;
      this.a.a(new Intent(c.i(this.a), AntiTheftActivity.class));
      continue;
      this.a.a(new Intent(c.j(this.a), AntitheftRegisterActivity.class));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.g
 * JD-Core Version:    0.6.2
 */