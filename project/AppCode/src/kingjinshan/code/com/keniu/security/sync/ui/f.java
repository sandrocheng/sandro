package com.keniu.security.sync.ui;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import com.ijinshan.kinghelper.firewall.IpDialSettingsActivity;
import com.ijinshan.kinghelper.firewall.dc;
import com.ijinshan.kpref.t;
import com.keniu.security.sync.k;
import com.keniu.security.traffic.TrafficZiFeiSettingActivity2;
import com.keniu.security.traffic.y;
import com.keniu.security.util.av;

final class f
  implements View.OnClickListener
{
  f(DialogAct paramDialogAct)
  {
  }

  public final void onClick(View paramView)
  {
    k localk = k.a();
    localk.a(this.a.getApplicationContext());
    localk.a("last_imsi_for_sim_change", av.c(this.a.getApplicationContext()));
    switch (paramView.getId())
    {
    case 2131231463:
    default:
    case 2131231462:
    case 2131231464:
    }
    while (true)
    {
      return;
      y.a(this.a.getApplicationContext());
      if (y.b(this.a.getApplicationContext()))
      {
        y.a(this.a.getApplicationContext());
        Context localContext = this.a.getApplicationContext();
        SharedPreferences localSharedPreferences = t.b(localContext);
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        for (int k : new int[] { 2131428299, 2131428300, 2131428301, 2131428302, 2131428291, 2131428295, 2131428296, 2131428297, 2131428296 })
          if (localSharedPreferences.contains(localContext.getString(k)))
          {
            localEditor.remove(localContext.getString(k));
            localEditor.commit();
          }
        y.a();
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this.a.getApplicationContext(), TrafficZiFeiSettingActivity2.class);
        localIntent2.putExtra("context", "Traffic");
        localIntent2.putExtra("fromSIMChange", true);
        this.a.startActivity(localIntent2);
      }
      while (true)
      {
        this.a.finish();
        break;
        if (dc.b())
        {
          dc.c();
          Intent localIntent1 = new Intent(this.a.getApplicationContext(), IpDialSettingsActivity.class);
          localIntent1.putExtra("fromSIMChange", true);
          this.a.startActivity(localIntent1);
        }
      }
      this.a.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.f
 * JD-Core Version:    0.6.2
 */