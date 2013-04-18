package com.keniu.security.main;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.keniu.security.MoSecurityApplication;
import java.util.ArrayList;
import java.util.List;

public final class bn
{
  public static int a = 0;
  public static final int b = 0;
  public static final int c = 0;
  public static final int d = 0;
  public static final int e = 0;
  public static final int f = 0;
  public static final int g = 0;
  public static final int h = 0;
  public static final String i = "com.keniu.security.main.main_manager";
  private static int o = 1;
  private static bn p;
  private bq j;
  private Context k;
  private int l;
  private List m;
  private int n = 0;

  static
  {
    a = 1;
    b = 0;
    int i1 = a;
    a = i1 + 1;
    c = i1;
    int i2 = a;
    a = i2 + 1;
    d = i2;
    int i3 = a;
    a = i3 + 1;
    e = i3;
    int i4 = a;
    a = i4 + 1;
    f = i4;
    int i5 = a;
    a = i5 + 1;
    g = i5;
    int i6 = a;
  }

  private bn(Context paramContext)
  {
    this.k = paramContext;
  }

  public static bn a()
  {
    try
    {
      if (p == null)
        p = new bn(MoSecurityApplication.a());
      bn localbn = p;
      return localbn;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean a(bs parambs)
  {
    int i1;
    boolean bool;
    if (!this.m.isEmpty())
    {
      i1 = a - 1;
      if (i1 >= 0)
      {
        bs localbs = (bs)this.m.get(i1);
        if ((localbs.d() != h) && (localbs.a() == 2))
          if (localbs == parambs)
            bool = true;
      }
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      i1--;
      break;
      if (parambs.a() == 2)
        bool = true;
      else
        bool = false;
    }
  }

  private static String b(int paramInt, String paramString)
  {
    return 95 + paramInt * 100 + paramString;
  }

  private boolean b(bs parambs)
  {
    int i3;
    int i4;
    if (this.m.size() > 0)
    {
      int i2 = 0;
      for (i3 = 0; i2 < a; i3 = i4)
      {
        bs localbs = (bs)this.m.get(i2);
        if ((localbs.d() == h) || (localbs.a() != 2))
          break label103;
        i4 = i3 + 1;
        i2++;
      }
    }
    for (int i1 = i3; ; i1 = 0)
    {
      if ((i1 == 1) && (parambs == e()));
      for (boolean bool = true; ; bool = false)
        return bool;
      label103: i4 = i3;
      break;
    }
  }

  private static List g()
  {
    ArrayList localArrayList = new ArrayList(a);
    localArrayList.add(new by());
    localArrayList.add(new bu());
    localArrayList.add(new bw());
    localArrayList.add(new cb());
    localArrayList.add(new ca());
    localArrayList.add(new bx());
    localArrayList.add(new bz());
    return localArrayList;
  }

  private int h()
  {
    int i1 = 0;
    int i3;
    int i4;
    if (this.m.size() > 0)
      for (i3 = 0; i1 < a; i3 = i4)
      {
        bs localbs = (bs)this.m.get(i1);
        if ((localbs.d() == h) || (localbs.a() != 2))
          break label76;
        i4 = i3 + 1;
        i1++;
      }
    for (int i2 = i3; ; i2 = 0)
    {
      return i2;
      label76: i4 = i3;
      break;
    }
  }

  private boolean i()
  {
    int i1;
    if (this.m.size() > 0)
    {
      i1 = 0;
      if (i1 < a)
      {
        bs localbs = (bs)this.m.get(i1);
        if ((localbs.d() == h) || (localbs.a() != 2));
      }
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1++;
      break;
    }
  }

  private void j()
  {
    if (this.l < h)
    {
      this.l = (1 + this.l);
      if (this.l >= a)
        break label67;
      if (((bs)this.m.get(this.l)).a() != 2)
        break label54;
    }
    while (true)
    {
      return;
      label54: this.l = (1 + this.l);
      break;
      label67: this.l = h;
    }
  }

  public final int a(bq parambq)
  {
    try
    {
      this.j = parambq;
      int i1 = o;
      o = i1 + 1;
      Integer localInteger = Integer.valueOf(i1);
      new br(this).execute(new Integer[] { localInteger });
      int i2 = localInteger.intValue();
      return i2;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a(int paramInt, String paramString)
  {
    return this.k.getSharedPreferences("com.keniu.security.main.main_manager", 0).getString(b(paramInt, paramString), null);
  }

  public final void a(int paramInt)
  {
    this.n = paramInt;
  }

  public final void a(int paramInt, String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.k.getSharedPreferences("com.keniu.security.main.main_manager", 0).edit();
    localEditor.putString(b(paramInt, paramString1), paramString2);
    localEditor.commit();
  }

  public final bs b(int paramInt)
  {
    if ((this.m == null) || (paramInt < 0) || (paramInt >= a));
    for (bs localbs = null; ; localbs = (bs)this.m.get(paramInt))
      return localbs;
  }

  public final void b()
  {
    this.l = 0;
  }

  public final String c(int paramInt)
  {
    return this.k.getString(paramInt);
  }

  public final void c()
  {
    bq localbq = this.j;
    localbq.a();
  }

  public final Context d()
  {
    return this.k;
  }

  public final bs e()
  {
    bs localbs;
    if (this.m == null)
      localbs = null;
    while (true)
    {
      return localbs;
      do
      {
        this.l = (1 + this.l);
        if (this.l >= a)
          break;
        localbs = (bs)this.m.get(this.l);
      }
      while (localbs.a() != 2);
      continue;
      this.l = h;
      localbs = (bs)this.m.get(this.l);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bn
 * JD-Core Version:    0.6.2
 */