package com.antivirus.antitheft;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.antivirus.AVService;
import com.antivirus.core.b;
import com.antivirus.core.f.d;

public class ab
{
  private Context a;
  private Thread b;
  private boolean c = false;
  private b d;

  private void b()
  {
    if (TextUtils.isEmpty(this.d.m()))
    {
      d locald = new d();
      locald.a(this.a);
      String str1 = locald.b();
      if (str1 == null)
        str1 = "";
      this.d.h(str1);
      String str2 = locald.a();
      if (str2 == null)
        str2 = "";
      this.d.i(str2);
    }
    while (true)
    {
      return;
      String str3 = ((TelephonyManager)this.a.getSystemService("phone")).getSimSerialNumber();
      String str4 = this.d.m();
      if ((str3 != null) && (str4 != null) && (str3.length() > 0) && (str4.length() > 0) && (!str3.equals(str4)))
      {
        this.d.h(str3);
        AVService.a(this.a, 4000, 9007, null);
      }
    }
  }

  public void a()
  {
    this.c = true;
    this.b.interrupt();
  }

  public void a(Context paramContext, b paramb)
  {
    this.a = paramContext.getApplicationContext();
    this.d = paramb;
    this.b = new Thread(new ac(this));
    this.b.start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.ab
 * JD-Core Version:    0.6.2
 */