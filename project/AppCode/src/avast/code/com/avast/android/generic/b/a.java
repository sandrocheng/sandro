package com.avast.android.generic.b;

import android.content.Context;
import com.avast.a.a.a.ak;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.internet.b;
import com.avast.android.generic.internet.e;
import com.avast.android.generic.internet.j;
import com.avast.android.generic.internet.k;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.az;
import com.avast.android.generic.util.ba;
import com.avast.android.generic.util.bc;
import com.avast.android.generic.z;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class a
{
  private d a;
  private String b;
  private boolean c;
  private boolean d = false;
  private String e;
  private String f;
  private String g;
  private boolean h;
  private int i = 0;
  private c j;

  protected a(d paramd, String paramString1, String paramString2, String paramString3)
  {
    a(paramd);
    e(paramString3);
    a(((ae)ad.a(paramd.g(), ag.class)).z());
    b(paramString1);
    d(paramString2);
  }

  private final void a(Context paramContext, d paramd, f paramf, boolean paramBoolean)
  {
    ae localae = (ae)ad.a(paramd.g(), ag.class);
    if ((this instanceof aa))
      switch (b.b[paramf.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      }
    while (true)
    {
      return;
      AvastService localAvastService5 = paramd.g();
      String str21 = f();
      if (paramBoolean);
      for (String str22 = paramd.l(); ; str22 = (String)paramd.i())
      {
        localAvastService5.a(new bc(str21, str22), new p(paramd), n());
        break;
      }
      AvastService localAvastService4 = paramd.g();
      String str19 = f();
      StringBuilder localStringBuilder = new StringBuilder().append(paramd.g().getString(paramd.g().l())).append(" ").append(paramd.g().getString(z.bo)).append(" ");
      if (paramBoolean);
      for (String str20 = paramd.l(); ; str20 = (String)paramd.i())
      {
        localAvastService4.a(new bc(str19, str20), new p(paramd), n());
        break;
      }
      List localList = paramd.m();
      LinkedList localLinkedList = new LinkedList();
      java.text.DateFormat localDateFormat1 = android.text.format.DateFormat.getDateFormat(paramContext);
      java.text.DateFormat localDateFormat2 = android.text.format.DateFormat.getTimeFormat(paramContext);
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        if ((localObject instanceof bc))
        {
          bc localbc = (bc)localObject;
          String str14 = localDateFormat1.format(Long.valueOf(localbc.d)) + " " + localDateFormat2.format(Long.valueOf(localbc.d)) + ", SMS ";
          String str15;
          label405: String str16;
          if (localbc.c)
          {
            str15 = str14 + paramContext.getString(z.k);
            str16 = str15 + " ";
            if ((localbc.a == null) || (localbc.a.length() <= 0))
              break label565;
          }
          label565: for (String str17 = str16 + localbc.a; ; str17 = str16 + "?")
          {
            String str18 = str17 + ": ";
            localLinkedList.add(new bc(null, str18 + localbc.b));
            break;
            str15 = str14 + paramContext.getString(z.z);
            break label405;
          }
        }
        if ((localObject instanceof az))
        {
          az localaz = (az)localObject;
          String str9 = localDateFormat1.format(Long.valueOf(localaz.d)) + " " + localDateFormat2.format(Long.valueOf(localaz.d)) + ", ";
          String str10 = str9 + paramContext.getString(z.cg) + " ";
          label728: String str11;
          switch (b.a[localaz.a.ordinal()])
          {
          default:
            str11 = str10 + " ";
            if ((localaz.b == null) || (localaz.b.length() <= 0))
              break;
          case 1:
          case 2:
          case 3:
          }
          for (String str12 = str11 + localaz.b; ; str12 = str11 + "?")
          {
            String str13 = str12 + " " + paramContext.getString(z.bs);
            localLinkedList.add(new bc(null, str13 + " " + localaz.c + " " + paramContext.getString(z.I) + "."));
            break;
            str10 = str10 + paramContext.getString(z.k);
            break label728;
            str10 = str10 + paramContext.getString(z.z);
            break label728;
          }
        }
        if ((localObject instanceof ba))
        {
          ba localba = (ba)localObject;
          String str8 = localba.a();
          if (str8 != null)
          {
            if (localba.b() != null)
              str8 = str8 + ", " + localba.b();
            if (localba.c() != null)
              str8 = str8 + ", " + localba.c();
            localLinkedList.add(new bc(null, str8));
          }
        }
      }
      paramd.g().a(new bc(f(), paramd.g().getString(paramd.g().l()) + " " + paramd.g().getString(z.H)), null, n());
      if (localLinkedList.size() > 0)
        paramd.g().a(f(), localLinkedList, new p(paramd), n());
      paramd.g().a(new bc(f(), paramd.g().getString(paramd.g().l()) + " " + paramd.g().getString(z.aa)), null, n());
      continue;
      switch (b.b[paramf.ordinal()])
      {
      case 3:
      default:
        break;
      case 1:
        if (this.c)
        {
          AvastService localAvastService3 = paramd.g();
          String str6 = f();
          if (paramBoolean);
          for (String str7 = paramd.l(); ; str7 = (String)paramd.i())
          {
            localAvastService3.a(new bc(str6, str7), new p(paramd), n());
            break;
          }
        }
        e locale2 = new e((ak)paramd.i(), n());
        paramd.g().a(locale2, this, paramBoolean);
      case 2:
      }
    }
    if (this.c)
    {
      AvastService localAvastService1 = paramd.g();
      String str3 = f();
      AvastService localAvastService2 = paramd.g();
      String str4 = d();
      if (paramBoolean);
      for (String str5 = paramd.l(); ; str5 = (String)paramd.i())
      {
        localAvastService1.a(new bc(str3, j.a(localAvastService2, localae, str4, str5, paramd.v())), new p(paramd), n());
        break;
      }
    }
    k localk = paramd.x();
    String str1 = d();
    if (paramBoolean);
    for (String str2 = paramd.l(); ; str2 = (String)paramd.i())
    {
      e locale1 = new e(b.a(localae, str1, str2, null, paramd.v()), n(), localk);
      paramd.g().a(locale1, this, paramBoolean);
      break;
    }
  }

  private boolean a(Context paramContext, d paramd)
  {
    ae localae = (ae)ad.a(paramContext, ag.class);
    if ((this instanceof aa))
      paramd.g().a(new bc(f(), paramd.g().getString(paramd.g().l()) + " " + paramd.g().getString(z.aj) + " " + paramd.f()), new p(paramd), n());
    while (true)
    {
      return false;
      if (this.c)
      {
        paramd.g().a(new bc(f(), j.a(paramd.g(), localae, a(), d(), paramd.f(), paramd.j())), new p(paramd), n());
      }
      else
      {
        e locale = new e(b.a(localae, d(), paramd.f(), paramd.j(), a()), n());
        paramd.g().a(locale, this, false);
      }
    }
  }

  private void d(String paramString)
  {
    this.g = paramString;
  }

  private void e(String paramString)
  {
    this.b = paramString;
  }

  public String a()
  {
    return this.f;
  }

  protected void a(d paramd)
  {
    this.a = paramd;
    paramd.a(this);
  }

  public void a(String paramString)
  {
    this.f = paramString;
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public void b(String paramString)
  {
    this.e = paramString;
  }

  public void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public boolean b()
  {
    return this.d;
  }

  public void c(String paramString)
  {
    if (this.j != null)
      this.j.a(paramString);
  }

  public void c(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public boolean c()
  {
    return this.c;
  }

  public String d()
  {
    return this.e;
  }

  public d e()
  {
    return this.a;
  }

  public String f()
  {
    return this.g;
  }

  public void g()
  {
    this.a.s();
  }

  public void h()
  {
    this.a.o();
  }

  public void i()
  {
    this.a.t();
  }

  public boolean j()
  {
    return this.a.d();
  }

  public final void k()
  {
    f localf = this.a.e();
    d locald = e();
    AvastService localAvastService = locald.g();
    if (locald.a());
    while (true)
    {
      return;
      a(localAvastService, locald, localf, false);
    }
  }

  public final boolean l()
  {
    d locald = e();
    AvastService localAvastService = locald.g();
    if (locald.a());
    for (boolean bool = false; ; bool = a(localAvastService, locald))
      return bool;
  }

  public final void m()
  {
    f localf = this.a.k();
    d locald = e();
    AvastService localAvastService = locald.g();
    if (locald.a());
    while (true)
    {
      return;
      a(localAvastService, locald, localf, true);
    }
  }

  public boolean n()
  {
    return this.h;
  }

  public void o()
  {
    if (this.j != null)
      this.j.a();
  }

  public void p()
  {
    this.a.z();
  }

  public int q()
  {
    return this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.a
 * JD-Core Version:    0.6.2
 */