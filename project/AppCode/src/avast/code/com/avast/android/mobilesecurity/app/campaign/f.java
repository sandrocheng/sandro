package com.avast.android.mobilesecurity.app.campaign;

import android.util.SparseArray;
import java.util.EnumSet;
import java.util.Iterator;

public enum f
{
  private static final SparseArray b;
  private int c;

  static
  {
    f[] arrayOff = new f[1];
    arrayOff[0] = a;
    d = arrayOff;
    b = new SparseArray();
    Iterator localIterator = EnumSet.allOf(f.class).iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      b.put(localf.a(), localf);
    }
  }

  private f(int arg3)
  {
    int j;
    this.c = j;
  }

  public static f a(int paramInt)
  {
    return (f)b.get(paramInt);
  }

  public int a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.f
 * JD-Core Version:    0.6.2
 */