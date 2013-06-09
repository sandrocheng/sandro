package org.antivirus.core.b;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import java.util.Date;
import org.antivirus.core.Logger;

public final class g
{
  public ObfuscatedSharedPreferences a;

  public g(Context paramContext)
  {
    this.a = new ObfuscatedSharedPreferences(paramContext, "nahche", 0, true);
  }

  public final void a(String paramString)
  {
    this.a.putString("rishuy", paramString).commit();
    e();
  }

  public final boolean a()
  {
    return this.a.getUnObfuscatedBoolean("haimhauserlahatz", false);
  }

  public final void b()
  {
    this.a.putUnObfuscatedBoolean("haimhauserlahatz", true).commit();
    e();
  }

  public final String c()
  {
    return this.a.getString("rishuy", "");
  }

  public final String d()
  {
    return this.a.getString("id", "0-0");
  }

  public final long e()
  {
    long l1 = 0L;
    if (!a());
    while (true)
    {
      return l1;
      try
      {
        long l2 = new Date().getTime();
        this.a.putUnObfuscatedLong("taarihsfira", l2).commit();
        l1 = l2;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
    }
  }

  public final long f()
  {
    return this.a.getUnObfuscatedLong("taarihsfira", 0L);
  }

  public final b g()
  {
    return b.a(this.a.getUnObfuscatedInt("ficherimtvmbeyote", 0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.g
 * JD-Core Version:    0.6.2
 */