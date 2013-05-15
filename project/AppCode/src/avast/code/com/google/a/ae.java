package com.google.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class ae extends ad
{
  ae(int paramInt)
  {
    super(paramInt, null);
  }

  public void a()
  {
    if (!b())
    {
      for (int i = 0; i < c(); i++)
      {
        Map.Entry localEntry2 = b(i);
        if (((k)localEntry2.getKey()).d())
          localEntry2.setValue(Collections.unmodifiableList((List)localEntry2.getValue()));
      }
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator.next();
        if (((k)localEntry1.getKey()).d())
          localEntry1.setValue(Collections.unmodifiableList((List)localEntry1.getValue()));
      }
    }
    super.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.ae
 * JD-Core Version:    0.6.2
 */