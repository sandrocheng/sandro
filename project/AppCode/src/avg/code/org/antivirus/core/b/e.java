package org.antivirus.core.b;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import java.io.InputStream;
import java.util.Calendar;
import java.util.concurrent.Callable;
import org.antivirus.core.Logger;
import org.antivirus.core.b.a.h;
import org.antivirus.core.b.a.l;
import org.antivirus.core.b.a.u;
import org.antivirus.core.b.a.w;
import org.antivirus.core.b.a.x;
import org.antivirus.core.b.a.y;
import org.antivirus.core.b.a.z;

public final class e
{
  public a a;
  public g b;
  private Context c;
  private Callable d;
  private Callable e;

  public e(Context paramContext, Callable paramCallable1, Callable paramCallable2)
  {
    this.c = paramContext;
    this.d = paramCallable1;
    this.e = paramCallable2;
  }

  private static String a(InputStream paramInputStream)
  {
    try
    {
      byte[] arrayOfByte1 = new byte[1024];
      paramInputStream.read(arrayOfByte1, 0, 8);
      int i = paramInputStream.read(arrayOfByte1);
      byte[] arrayOfByte2 = new byte[i];
      paramInputStream.close();
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
      str = new String(a(arrayOfByte2));
      return str;
    }
    catch (Exception localException)
    {
      while (true)
        String str = "";
    }
  }

  private boolean a(String paramString, boolean paramBoolean)
  {
    int i = 2147483647;
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (bool1);
    z localz;
    while (true)
    {
      return bool2;
      String str = paramString.toUpperCase();
      localz = new z();
      l locall = new l();
      h localh = new h();
      try
      {
        localh.a(localz, str, locall);
        if ((localz.c != w.b) && (localz.c != w.d))
          throw new org.antivirus.core.b.a.a(999L);
      }
      catch (org.antivirus.core.b.a.a locala)
      {
        Logger.error("invalid license");
        bool2 = false;
        continue;
        if ((localz.d == w.b) || (localz.d == w.d))
          break;
        throw new org.antivirus.core.b.a.a(999L);
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        bool2 = false;
      }
    }
    d locald;
    switch (f.a[localz.b.d.ordinal()])
    {
    default:
      throw new org.antivirus.core.b.a.a(999L);
    case 1:
      locald = d.a;
    case 2:
    case 3:
    }
    while (true)
      switch (f.b[localz.b.g.ordinal()])
      {
      default:
        throw new org.antivirus.core.b.a.a(999L);
        locald = d.a;
        continue;
        locald = d.b;
      case 1:
      case 2:
      case 3:
      }
    int j = localz.b.h;
    if (!paramBoolean)
    {
      if (!this.b.a());
      Calendar localCalendar1;
      Calendar localCalendar2;
      for (long l = 0L; ; l = (localCalendar1.getTimeInMillis() - localCalendar2.getTimeInMillis()) / 86400000L)
      {
        j -= (int)l;
        if (j >= 0)
          break;
        throw new org.antivirus.core.b.a.a(999L);
        localCalendar1 = Calendar.getInstance();
        localCalendar2 = Calendar.getInstance();
        localCalendar2.setTimeInMillis(this.b.f());
      }
      new y();
      j = i;
    }
    label391: b localb1;
    label433: int k;
    int m;
    switch (f.c[localz.b.e.ordinal()])
    {
    default:
      localb1 = b.a;
      k = localz.b.l;
      new k();
      Context localContext = this.c;
      if ((k.a("org.antivirus.plugin.app_locker", localContext)) || (k.a("org.antivirus_feature.feature", localContext)) || (k.a("org.antivirus.plugin.trial_to_pro", localContext)))
      {
        m = 1;
        label490: if (m == 0)
          break label711;
        localb1 = b.c;
      }
      break;
    case 1:
    case 2:
    }
    while (true)
    {
      int n = localz.b.e.a();
      b localb2 = this.b.g();
      g localg1 = this.b;
      int i1 = localg1.a.getUnObfuscatedInt("originalvendorid", -1);
      boolean bool3;
      if (i1 == -1)
      {
        localg1.a.putUnObfuscatedInt("originalvendorid", k).commit();
        bool3 = true;
      }
      while (true)
      {
        this.a = new a(n, localb1, localb2, i, k, locald, bool3);
        g localg2 = this.b;
        b localb3 = this.a.a;
        b localb4 = localg2.g();
        if (localb3.ordinal() > localb4.ordinal())
          localg2.a.putUnObfuscatedInt("ficherimtvmbeyote", localb3.ordinal()).commit();
        if (paramBoolean == true)
          this.b.e();
        bool2 = true;
        break;
        j = i;
        break label391;
        localb1 = b.c;
        break label433;
        localb1 = b.b;
        break label433;
        m = 0;
        break label490;
        bool3 = false;
        if (k == i1)
          bool3 = true;
      }
      label711: i = j;
    }
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = { 13, 9, 7 };
    for (int i = 0; i < paramArrayOfByte.length; i++)
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ arrayOfByte[(i % arrayOfByte.length)]));
    return paramArrayOfByte;
  }

  public final boolean a()
  {
    boolean bool = true;
    this.b = new g(this.c);
    String str1 = this.b.c();
    if (str1.length() == 0);
    while (true)
    {
      try
      {
        InputStream localInputStream2 = (InputStream)this.d.call();
        str1 = a(localInputStream2);
        this.b.a(str1);
        localInputStream2.close();
        str2 = str1;
        if ((TextUtils.isEmpty(str2)) || (a(str2, bool)));
      }
      catch (Exception localException2)
      {
        try
        {
          InputStream localInputStream1 = (InputStream)this.e.call();
          String str3 = a(localInputStream1);
          this.b.a(str3);
          localInputStream1.close();
          a(str3, true);
          return bool;
          localException2 = localException2;
          str2 = str1;
          Logger.log(localException2);
          bool = false;
        }
        catch (Exception localException1)
        {
          Logger.log(localException1);
          continue;
        }
      }
      String str2 = str1;
      bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.e
 * JD-Core Version:    0.6.2
 */