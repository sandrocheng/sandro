package com.keniu.security.a;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class o extends DefaultHandler
{
  final int a = 5;
  List b;
  List c;
  List d;
  LinkedList e;
  e f;
  m g;
  p h;
  int i = 0;
  long j = 0L;
  long k = 0L;

  public final List a()
  {
    return this.b;
  }

  public final LinkedList b()
  {
    return this.e;
  }

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (this.i != 0)
      this.i = 0;
  }

  public final void endDocument()
  {
    super.endDocument();
    this.k = System.currentTimeMillis();
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equals("item"))
      this.b.add(this.f);
    if (paramString2.equals("scan"))
      this.f.a(this.c);
    if (paramString2.equals("method"))
    {
      this.c.add(this.g);
      this.f.b(this.d);
    }
    if (paramString2.equals("sign"))
      this.d.add(this.h);
  }

  public final void startDocument()
  {
    this.b = new ArrayList();
    this.e = new LinkedList();
    this.j = System.currentTimeMillis();
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if (paramString2.equals("item"))
    {
      this.f = new e();
      int n = 0;
      if (n < paramAttributes.getLength())
      {
        if (paramAttributes.getLocalName(n).equals("name"))
          this.f.a(paramAttributes.getValue(n));
        while (true)
        {
          n++;
          break;
          if (paramAttributes.getLocalName(n).equals("desc"))
            this.f.b(paramAttributes.getValue(n));
        }
      }
      this.i = 5;
    }
    while (true)
    {
      return;
      if (paramString2.equals("scan"))
      {
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.i = 5;
      }
      else if (paramString2.equals("method"))
      {
        this.g = new m();
        if (paramAttributes.getLocalName(0).equals("type"))
          this.g.a(paramAttributes.getValue(0));
        this.i = 5;
      }
      else if (paramString2.equals("sign"))
      {
        this.h = new p();
        int m = 0;
        if (m < paramAttributes.getLength())
        {
          if (paramAttributes.getLocalName(m).equals("pos"))
            this.h.a(Integer.parseInt(paramAttributes.getValue(m)));
          while (true)
          {
            m++;
            break;
            if (paramAttributes.getLocalName(m).equals("type"))
              this.h.a(paramAttributes.getValue(m));
            else if (paramAttributes.getLocalName(m).equals("str"))
              this.h.b(paramAttributes.getValue(m));
          }
        }
        this.i = 5;
      }
      else if (paramString2.equals("whiteitem"))
      {
        this.e.add(paramAttributes.getValue(0));
        this.i = 5;
      }
      else
      {
        this.i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.o
 * JD-Core Version:    0.6.2
 */