package com.google.b.a.a;

import com.google.b.b.a;
import com.google.b.b.e;
import com.google.b.b.f;
import com.google.b.j;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class q extends j
{
  public void a(f paramf, Calendar paramCalendar)
  {
    if (paramCalendar == null)
      paramf.e();
    while (true)
    {
      return;
      paramf.c();
      paramf.a("year");
      paramf.a(paramCalendar.get(1));
      paramf.a("month");
      paramf.a(paramCalendar.get(2));
      paramf.a("dayOfMonth");
      paramf.a(paramCalendar.get(5));
      paramf.a("hourOfDay");
      paramf.a(paramCalendar.get(11));
      paramf.a("minute");
      paramf.a(paramCalendar.get(12));
      paramf.a("second");
      paramf.a(paramCalendar.get(13));
      paramf.d();
    }
  }

  public Calendar b(a parama)
  {
    int i = 0;
    if (parama.g() == e.i)
      parama.k();
    int j;
    int k;
    int m;
    int n;
    int i1;
    for (Object localObject = null; ; localObject = new GregorianCalendar(i1, n, m, k, j, i))
    {
      return localObject;
      parama.d();
      j = 0;
      k = 0;
      m = 0;
      n = 0;
      i1 = 0;
      while (parama.g() != e.d)
      {
        String str = parama.h();
        int i2 = parama.n();
        if ("year".equals(str))
          i1 = i2;
        else if ("month".equals(str))
          n = i2;
        else if ("dayOfMonth".equals(str))
          m = i2;
        else if ("hourOfDay".equals(str))
          k = i2;
        else if ("minute".equals(str))
          j = i2;
        else if ("second".equals(str))
          i = i2;
      }
      parama.e();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.a.q
 * JD-Core Version:    0.6.2
 */