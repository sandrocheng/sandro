package com.avast.android.mobilesecurity.app.campaign;

import android.util.SparseArray;
import java.util.EnumSet;
import java.util.Iterator;

public enum e
{
  private static final SparseArray b;
  private int c;

  static
  {
    e[] arrayOfe = new e[1];
    arrayOfe[0] = a;
    d = arrayOfe;
    b = new SparseArray();
    Iterator localIterator = EnumSet.allOf(e.class).iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      b.put(locale.a(), locale);
    }
  }

  private e(int arg3)
  {
    int j;
    this.c = j;
  }

  public static e a(int paramInt)
  {
    return (e)b.get(paramInt);
  }

  public int a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.e
 * JD-Core Version:    0.6.2
 */