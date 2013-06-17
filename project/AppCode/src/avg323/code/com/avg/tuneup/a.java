package com.avg.tuneup;

import com.avg.ui.general.c.b;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

public class a
  implements Comparator
{
  private int a;

  public a(int paramInt)
  {
    this.a = paramInt;
  }

  public int a(b paramb1, b paramb2)
  {
    int i = 1;
    Collator localCollator = Collator.getInstance(Locale.getDefault());
    int j;
    int n;
    int i1;
    switch (this.a)
    {
    case 0:
    default:
      j = (int)(paramb1.g - paramb2.g);
    case 1:
    case -1:
    case 2:
    case -2:
      while (true)
      {
        return j;
        j = (int)(paramb1.g - paramb2.g);
        continue;
        j = (int)(paramb2.g - paramb1.g);
        continue;
        localCollator.setStrength(0);
        j = localCollator.compare(paramb1.a, paramb2.a);
        continue;
        localCollator.setStrength(0);
        j = localCollator.compare(paramb2.a, paramb1.a);
      }
    case 3:
      n = paramb1.k;
      i1 = paramb2.k;
      if (n != 2)
        n = i;
      if (i1 == 2)
        break;
    case -3:
    case -4:
    }
    while (true)
    {
      j = i - n;
      break;
      int k = paramb1.k;
      int m = paramb2.k;
      if (k != 2)
        k = i;
      if (m != 2);
      while (true)
      {
        j = k - i;
        break;
        j = (int)(paramb2.h + paramb2.i - (paramb1.h + paramb1.i));
        break;
        i = m;
      }
      i = i1;
    }
  }

  public void a()
  {
    this.a = -1;
  }

  public void b()
  {
    this.a = 2;
  }

  public void c()
  {
    this.a = 3;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.a
 * JD-Core Version:    0.6.2
 */