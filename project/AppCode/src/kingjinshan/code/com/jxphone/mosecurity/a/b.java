package com.jxphone.mosecurity.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.jxphone.a.a.h;

final class b
  implements h
{
  b(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
  }

  public final void a()
  {
    com.keniu.security.a.a(this.a).aS();
    a.a(this.b);
    a.a(this.c, this.d);
    a.e = System.currentTimeMillis();
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("report_flag", 0).edit();
    localEditor.putLong("report_timer", System.currentTimeMillis());
    localEditor.putString("report_uuid_imei", this.c);
    localEditor.putString("report_uuid_imsi", this.d);
    localEditor.putLong("report_lasttime", this.b);
    localEditor.commit();
    a.c = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.a.b
 * JD-Core Version:    0.6.2
 */