package com.google.b.a.a;

import com.google.b.b.a;
import com.google.b.b.e;
import com.google.b.b.f;
import com.google.b.i;
import com.google.b.j;
import java.util.BitSet;

final class m extends j
{
  public void a(f paramf, BitSet paramBitSet)
  {
    if (paramBitSet == null)
      paramf.e();
    while (true)
    {
      return;
      paramf.a();
      int i = 0;
      if (i < paramBitSet.length())
      {
        if (paramBitSet.get(i));
        for (int j = 1; ; j = 0)
        {
          paramf.a(j);
          i++;
          break;
        }
      }
      paramf.b();
    }
  }

  public BitSet b(a parama)
  {
    if (parama.g() == e.i)
      parama.k();
    BitSet localBitSet;
    for (Object localObject = null; ; localObject = localBitSet)
    {
      return localObject;
      localBitSet = new BitSet();
      parama.b();
      e locale = parama.g();
      int i = 0;
      if (locale != e.b)
      {
        boolean bool;
        switch (z.a[locale.ordinal()])
        {
        default:
          throw new i("Invalid bitset value type: " + locale);
        case 1:
          if (parama.n() != 0)
            bool = true;
          break;
        case 2:
        case 3:
        }
        while (true)
        {
          if (bool)
            localBitSet.set(i);
          i++;
          locale = parama.g();
          break;
          bool = false;
          continue;
          bool = parama.j();
          continue;
          String str = parama.i();
          try
          {
            int j = Integer.parseInt(str);
            if (j != 0)
              bool = true;
            else
              bool = false;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            throw new i("Error: Expecting: bitset number value (1, 0), Found: " + str);
          }
        }
      }
      parama.c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.a.m
 * JD-Core Version:    0.6.2
 */