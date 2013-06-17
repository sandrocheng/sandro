package com.avg.toolkit.e;

import android.content.Context;
import android.os.Bundle;
import android.os.Messenger;
import android.text.TextUtils;
import com.avg.toolkit.e.a.aa;
import com.avg.toolkit.e.a.l;
import com.avg.toolkit.e.a.u;
import com.avg.toolkit.e.a.w;
import com.avg.toolkit.e.a.x;
import com.avg.toolkit.e.a.y;
import com.avg.toolkit.f;
import java.io.InputStream;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.Callable;

public class e
  implements com.avg.toolkit.e
{
  private static a d;
  private Context a;
  private Callable b;
  private Callable c;
  private g e;
  private com.avg.toolkit.RecurringTasks.b f;

  public e(Context paramContext, Callable paramCallable1, Callable paramCallable2)
  {
    this.a = paramContext;
    this.b = paramCallable1;
    this.c = paramCallable2;
  }

  public static a a()
  {
    return d;
  }

  private String a(InputStream paramInputStream)
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
    boolean bool;
    if (TextUtils.isEmpty(paramString))
      bool = false;
    aa localaa;
    while (true)
    {
      return bool;
      String str = paramString.toUpperCase();
      localaa = new aa();
      l locall = new l();
      com.avg.toolkit.e.a.h localh = new com.avg.toolkit.e.a.h();
      try
      {
        localh.a(localaa, str, locall);
        if ((localaa.c != w.b) && (localaa.c != w.d))
          throw new com.avg.toolkit.e.a.a(999L);
      }
      catch (com.avg.toolkit.e.a.a locala)
      {
        com.avg.toolkit.f.a.a("invalid license");
        bool = false;
        continue;
        if ((localaa.d == w.b) || (localaa.d == w.d))
          break;
        throw new com.avg.toolkit.e.a.a(999L);
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        bool = false;
      }
    }
    d locald;
    switch (f.a[localaa.b.d.ordinal()])
    {
    default:
      throw new com.avg.toolkit.e.a.a(999L);
    case 1:
      locald = d.a;
    case 2:
    case 3:
    }
    while (true)
      switch (f.b[localaa.b.g.ordinal()])
      {
      default:
        throw new com.avg.toolkit.e.a.a(999L);
        locald = d.a;
        continue;
        locald = d.b;
      case 1:
      case 2:
      case 3:
      }
    int j = localaa.b.h;
    if (!paramBoolean)
    {
      j -= (int)f();
      if (j < 0)
      {
        throw new com.avg.toolkit.e.a.a(999L);
        new y();
        j = i;
      }
    }
    label334: b localb;
    label385: int k;
    switch (f.c[localaa.b.e.ordinal()])
    {
    default:
      localb = b.a;
      k = localaa.b.l;
      if (new j().a(this.a))
        localb = b.c;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      d = new a(localaa.b.e.a(), localb, this.e.h(), i, k, locald, this.e.a(k));
      this.e.a(d.a);
      if (paramBoolean == true)
        this.e.f();
      bool = true;
      break;
      j = i;
      break label334;
      localb = b.c;
      break label385;
      localb = b.b;
      break label385;
      i = j;
    }
  }

  private byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = { 13, 9, 7 };
    for (int i = 0; i < paramArrayOfByte.length; i++)
      paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ arrayOfByte[(i % arrayOfByte.length)]));
    return paramArrayOfByte;
  }

  private void g()
  {
    try
    {
      String str = new h(this.a).a(this.a, d);
      this.f.a(this.a);
      if (str != null)
      {
        new Bundle().putString("__SAD", str);
        f.a(this.a, 4500, 4501, null);
      }
      return;
    }
    catch (i locali)
    {
      while (true)
        if (!locali.a)
          com.avg.toolkit.f.a.a(locali);
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(Bundle paramBundle)
  {
    if (!this.f.a(this.a, paramBundle));
    while (true)
    {
      return;
      g();
    }
  }

  public void a(a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.e.b();
    this.f = new com.avg.toolkit.RecurringTasks.b(this.a, "ALM", 86400000L, true, true, 4500, true);
  }

  public boolean a(String paramString)
  {
    return false;
  }

  public int b()
  {
    return 4500;
  }

  public void b(Bundle paramBundle)
  {
    boolean bool = a(paramBundle.getString("__SAD"));
    Bundle localBundle = new Bundle();
    if (paramBundle.containsKey("__SAH"))
      localBundle.putParcelable("__SAH", (Messenger)paramBundle.get("__SAH"));
    localBundle.putBoolean("result", bool);
    f.a(this.a, 1000, 1004, localBundle);
  }

  public void b(a parama)
  {
  }

  public boolean c()
  {
    boolean bool = true;
    this.e = new g(this.a);
    String str1 = this.e.c();
    if (str1.length() == 0);
    while (true)
    {
      try
      {
        InputStream localInputStream2 = (InputStream)this.b.call();
        str1 = a(localInputStream2);
        this.e.a(str1);
        localInputStream2.close();
        str2 = str1;
        if ((TextUtils.isEmpty(str2)) || (a(str2, bool)));
      }
      catch (Exception localException2)
      {
        try
        {
          InputStream localInputStream1 = (InputStream)this.c.call();
          String str3 = a(localInputStream1);
          this.e.a(str3);
          localInputStream1.close();
          a(str3, true);
          return bool;
          localException2 = localException2;
          str2 = str1;
          com.avg.toolkit.f.a.a(localException2);
          bool = false;
        }
        catch (Exception localException1)
        {
          com.avg.toolkit.f.a.a(localException1);
          continue;
        }
      }
      String str2 = str1;
      bool = false;
    }
  }

  public boolean d()
  {
    return this.e.a();
  }

  public void e()
  {
    this.e.b();
  }

  public long f()
  {
    if (!this.e.a());
    Calendar localCalendar1;
    Calendar localCalendar2;
    for (long l = 0L; ; l = (localCalendar1.getTimeInMillis() - localCalendar2.getTimeInMillis()) / 86400000L)
    {
      return l;
      localCalendar1 = Calendar.getInstance();
      localCalendar2 = Calendar.getInstance();
      localCalendar2.setTimeInMillis(this.e.g());
    }
  }

  public void onDestroy()
  {
    this.f.b(this.a);
    d = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.e
 * JD-Core Version:    0.6.2
 */