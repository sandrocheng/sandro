package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.dd;

public final class ad extends aa
{
  ad()
  {
    this.a = "垃圾短信扫描";
    this.b = "立即扫描";
    this.c = "已扫描";
    this.d = this.c;
    this.e = "未扫描";
  }

  public final void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, FirewallLogTabActivity.class);
    localIntent.putExtra("FirewallLogTabActivity_force_rubbish_scan", true);
    paramContext.startActivity(localIntent);
  }

  protected final boolean c(Context paramContext)
  {
    dd.a(paramContext);
    return dd.v();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ad
 * JD-Core Version:    0.6.2
 */