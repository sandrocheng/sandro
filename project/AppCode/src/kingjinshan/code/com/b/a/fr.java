package com.b.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class fr extends fq
{
  fr(int paramInt)
  {
    super(paramInt);
  }

  public final void a()
  {
    if (!b())
    {
      for (int i = 0; i < c(); i++)
      {
        Map.Entry localEntry2 = b(i);
        if (((dj)localEntry2.getKey()).m())
          localEntry2.setValue(Collections.unmodifiableList((List)localEntry2.getValue()));
      }
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator.next();
        if (((dj)localEntry1.getKey()).m())
          localEntry1.setValue(Collections.unmodifiableList((List)localEntry1.getValue()));
      }
    }
    super.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fr
 * JD-Core Version:    0.6.2
 */