package com.avast.android.mobilesecurity.app.webshield;

import android.content.Intent;
import android.net.Uri;
import android.provider.Browser;
import com.avast.android.generic.util.m;
import java.io.File;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum n
{
  private static final Map i;
  private static File s;
  private static boolean t = false;
  private static final Object u = new Object();
  private final String j;
  private final Uri k;
  private final String l;
  private final String[] m;
  private final String n;
  private final String o;
  private final String p;
  private int q;
  private final int r;

  static
  {
    n[] arrayOfn = new n[8];
    arrayOfn[0] = a;
    arrayOfn[1] = b;
    arrayOfn[2] = c;
    arrayOfn[3] = d;
    arrayOfn[4] = e;
    arrayOfn[5] = f;
    arrayOfn[6] = g;
    arrayOfn[7] = h;
    v = arrayOfn;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(n.class).iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      i.put(localn.a(), localn);
    }
  }

  private n(String paramString2, Uri paramArrayOfString, String paramString3, String[] paramString4, String paramString5, String paramInt, String arg9, int arg10)
  {
    this.j = paramString2;
    this.k = paramArrayOfString;
    this.l = paramString3;
    if (paramString4 != null)
      this.m = paramString4;
    while (true)
    {
      this.n = paramString5;
      this.o = paramInt;
      Object localObject;
      this.p = localObject;
      int i1;
      this.r = i1;
      return;
      this.m = new String[3];
      this.m[0] = paramString5;
      this.m[1] = paramInt;
      this.m[2] = localObject;
      this.q = 0;
      while (i2 < this.m.length)
      {
        if (this.m[i2] == null)
          this.q = (1 + this.q);
        i2++;
      }
    }
  }

  public static n a(String paramString)
  {
    if (paramString == null);
    for (n localn = a; ; localn = (n)i.get(paramString))
      return localn;
  }

  public static void a(boolean paramBoolean, File paramFile)
  {
    synchronized (u)
    {
      t = paramBoolean;
      s = paramFile;
      return;
    }
  }

  public Intent a(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", paramUri);
    localIntent.setClassName(a(), c());
    localIntent.addFlags(268435456);
    if (equals(b))
      localIntent.putExtra("com.android.browser.application_id", a());
    if (equals(d))
      localIntent.putExtra("com_dolphin_browser_self", true);
    if ((equals(g)) || (equals(h)))
      localIntent.putExtra("com.android.browser.application_id", g.j);
    return localIntent;
  }

  public final String a()
  {
    return this.j;
  }

  public final Uri b()
  {
    return this.k;
  }

  public final String c()
  {
    return this.l;
  }

  public final String[] d()
  {
    int i1 = 0;
    if (this.q == 0);
    String[] arrayOfString;
    for (Object localObject = this.m; ; localObject = arrayOfString)
    {
      return localObject;
      arrayOfString = new String[this.m.length - this.q];
      int i2 = 0;
      while (i1 < this.m.length)
      {
        if (this.m[i1] != null)
        {
          int i3 = i2 + 1;
          arrayOfString[i2] = this.m[i1];
          i2 = i3;
        }
        i1++;
      }
    }
  }

  public final String e()
  {
    return this.n;
  }

  public final String f()
  {
    return this.o;
  }

  public final String g()
  {
    return this.p;
  }

  public final int h()
  {
    return this.r;
  }

  public Intent i()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClassName(a(), c());
    localIntent.addFlags(268435456);
    if (equals(b))
      localIntent.putExtra("com.android.browser.application_id", a());
    if (equals(d))
      localIntent.putExtra("com_dolphin_browser_self", true);
    if ((equals(g)) || (equals(h)))
      localIntent.putExtra("com.android.browser.application_id", g.j);
    synchronized (u)
    {
      if ((t) && (!equals(d)) && (!equals(c)))
      {
        localIntent.setDataAndType(Uri.parse("file://" + s + "/" + "fwd.html"), "text/html");
        m.c("forwarding from file://" + s + "/" + "fwd.html");
        return localIntent;
      }
      localIntent.setData(Uri.parse("about:blank"));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.n
 * JD-Core Version:    0.6.2
 */