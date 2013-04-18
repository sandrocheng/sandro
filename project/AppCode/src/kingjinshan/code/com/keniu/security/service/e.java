package com.keniu.security.service;

import android.content.Intent;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;

final class e
  implements Runnable
{
  e(RubbishSMSScanServiceCtrl paramRubbishSMSScanServiceCtrl, int paramInt)
  {
  }

  public final void run()
  {
    if (this.a == 0)
      Toast.makeText(this.b, "垃圾短信扫描完毕，未发现垃圾短信", 0).show();
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.b, FirewallLogTabActivity.class);
      localIntent.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
      localIntent.putExtra("FirewallLogTabActivity_rubbish_scan_res", this.a);
      localIntent.setFlags(268435456);
      this.b.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.e
 * JD-Core Version:    0.6.2
 */