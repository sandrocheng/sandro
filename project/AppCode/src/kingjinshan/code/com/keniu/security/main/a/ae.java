package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.keniu.security.traffic.TrafficZiFeiSettingActivity2;
import com.keniu.security.traffic.y;

public final class ae extends aa
{
  ae()
  {
    this.a = "运营商设置";
    this.b = "立即设置";
    this.c = "已设置";
    this.d = this.c;
    this.e = "未设置";
    this.f = "运营商是否设置";
  }

  public final void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, TrafficZiFeiSettingActivity2.class);
    localIntent.putExtra("context", "Traffic");
    paramContext.startActivity(localIntent);
  }

  protected final boolean c(Context paramContext)
  {
    y.a(paramContext);
    return y.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ae
 * JD-Core Version:    0.6.2
 */