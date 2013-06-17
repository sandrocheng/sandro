package com.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.ui.protection.ProtectionActivity;
import com.avg.toolkit.c.a;

class h
  implements View.OnClickListener
{
  h(c paramc)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent(c.l(this.a), ProtectionActivity.class);
    localIntent.putExtra("SCAN_STATUS_EXTRA", c.a(this.a));
    this.a.a(localIntent);
    a.a(c.m(this.a), "category_app_landing", "action_protection", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.h
 * JD-Core Version:    0.6.2
 */