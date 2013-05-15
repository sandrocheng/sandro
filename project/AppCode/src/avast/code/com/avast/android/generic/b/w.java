package com.avast.android.generic.b;

import android.text.TextUtils;
import com.avast.a.a.a.a.m;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.aa;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class w extends d
{
  protected z a = z.a;
  protected String b = null;
  protected j c = j.b;
  protected LinkedList d = new LinkedList();
  protected boolean e = false;

  public w(AvastService paramAvastService, h paramh, boolean paramBoolean)
  {
    super(paramAvastService, paramh);
    this.e = paramBoolean;
  }

  public String B()
  {
    Iterator localIterator = this.d.iterator();
    y localy;
    do
    {
      if (!localIterator.hasNext())
        break;
      localy = (y)localIterator.next();
    }
    while (localy.b != z.o);
    for (String str = localy.a; ; str = null)
      return str;
  }

  protected abstract void a(ae paramae, boolean paramBoolean, z paramz, String paramString);

  protected abstract boolean c(String paramString);

  protected void n()
  {
    y localy;
    String str;
    try
    {
      localy = new y(this);
      if (this.e)
        this.c = j.d;
      str = h().c(this.c);
      if (str.equals("W"))
      {
        this.a = z.o;
        h().a(true);
        this.b = h().c(j.b);
        if (!TextUtils.equals(this.b, "-DEL-"))
        {
          if ((this.b.length() >= 4) && (this.b.length() <= 80) && (aa.b(this.b)))
            break label156;
          throw new Exception();
        }
      }
    }
    catch (Exception localException)
    {
      a(com.avast.android.generic.z.bJ, m.D);
    }
    while (true)
    {
      label137: return;
      if (TextUtils.equals(this.b, "-DEL-"))
        this.b = "-DEL-";
      label156: h().a(false);
      do
      {
        if (this.a != z.a)
          break;
        throw new Exception();
      }
      while (c(str));
    }
    localy.b = this.a;
    localy.a = this.b;
    if (this.a == z.i)
      this.d.addLast(localy);
    while (h().a())
    {
      break label137;
      this.d.addFirst(localy);
    }
  }

  protected void o()
  {
    ae localae = (ae)ad.a(g(), ag.class);
    if (this.d.size() > 1);
    String str;
    for (boolean bool = true; ; bool = false)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        y localy = (y)localIterator.next();
        z localz = localy.b;
        str = localy.a;
        switch (x.a[localz.ordinal()])
        {
        default:
          a(localae, bool, localz, str);
        case 1:
        }
      }
    }
    if (TextUtils.equals(str, "-DEL-"))
      localae.J();
    while (true)
    {
      localae.b();
      if (bool)
        break;
      a(com.avast.android.generic.z.cm);
      break;
      localae.k(str);
    }
    if (bool)
      a(com.avast.android.generic.z.cU);
  }

  protected boolean p()
  {
    return false;
  }

  protected boolean q()
  {
    return false;
  }

  protected boolean r()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.w
 * JD-Core Version:    0.6.2
 */