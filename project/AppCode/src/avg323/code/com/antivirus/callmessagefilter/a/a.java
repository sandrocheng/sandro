package com.antivirus.callmessagefilter.a;

import android.database.Cursor;
import android.database.CursorJoiner.Result;
import java.util.Iterator;

public final class a
  implements Iterable, Iterator
{
  private Cursor b;
  private Cursor c;
  private boolean d;
  private CursorJoiner.Result e;
  private int[] f;
  private int[] g;
  private Long[] h;
  private int i;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public a(Cursor paramCursor1, String[] paramArrayOfString1, Cursor paramCursor2, String[] paramArrayOfString2, boolean paramBoolean)
  {
    if (paramArrayOfString1.length != paramArrayOfString2.length)
      throw new IllegalArgumentException("you must have the same number of columns on the left and right, " + paramArrayOfString1.length + " != " + paramArrayOfString2.length);
    this.b = paramCursor1;
    this.c = paramCursor2;
    this.b.moveToFirst();
    this.c.moveToFirst();
    this.d = false;
    this.f = a(paramCursor1, paramArrayOfString1);
    this.g = a(paramCursor2, paramArrayOfString2);
    this.h = new Long[2 * this.f.length];
    if (paramBoolean);
    for (int j = -1; ; j = 1)
    {
      this.i = j;
      return;
    }
  }

  private int a(Long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length % 2 != 0)
      throw new IllegalArgumentException("you must specify an even number of values");
    int j = 0;
    int k;
    while (true)
      if (j < paramArrayOfLong.length)
        if (paramArrayOfLong[j] == null)
        {
          if (paramArrayOfLong[(j + 1)] == null)
          {
            j += 2;
            continue;
          }
          k = -1;
        }
    while (true)
    {
      return k;
      if (paramArrayOfLong[(j + 1)] == null)
      {
        k = 1;
      }
      else
      {
        int m = paramArrayOfLong[j].compareTo(paramArrayOfLong[(j + 1)]);
        if (m == 0)
          break;
        if (m < 0)
        {
          k = -1 * this.i;
        }
        else
        {
          k = this.i;
          continue;
          k = 0;
        }
      }
    }
  }

  private static void a(Long[] paramArrayOfLong, Cursor paramCursor, int[] paramArrayOfInt, int paramInt)
  {
    if ((!a) && (paramInt != 0) && (paramInt != 1))
      throw new AssertionError();
    for (int j = 0; j < paramArrayOfInt.length; j++)
      paramArrayOfLong[(paramInt + j * 2)] = Long.valueOf(paramCursor.getLong(paramArrayOfInt[j]));
  }

  private int[] a(Cursor paramCursor, String[] paramArrayOfString)
  {
    int[] arrayOfInt = new int[paramArrayOfString.length];
    for (int j = 0; j < paramArrayOfString.length; j++)
      arrayOfInt[j] = paramCursor.getColumnIndexOrThrow(paramArrayOfString[j]);
    return arrayOfInt;
  }

  private void b()
  {
    if (this.d)
      switch (b.a[this.e.ordinal()])
      {
      default:
      case 2:
      case 3:
      case 1:
      }
    while (true)
    {
      this.d = false;
      return;
      this.b.moveToNext();
      continue;
      this.c.moveToNext();
      continue;
      this.b.moveToNext();
      this.c.moveToNext();
    }
  }

  public CursorJoiner.Result a()
  {
    int j = 1;
    try
    {
      if (!hasNext())
        throw new IllegalStateException("you must only call next() when hasNext() is true");
    }
    finally
    {
    }
    b();
    if ((!a) && (!hasNext()))
      throw new AssertionError();
    int k;
    if (!this.b.isAfterLast())
    {
      k = j;
      if (this.c.isAfterLast())
        break label173;
      label77: if ((k == 0) || (j == 0))
        break label208;
      a(this.h, this.b, this.f, 0);
      a(this.h, this.c, this.g, 1);
      switch (a(this.h))
      {
      default:
      case -1:
      case 0:
      case 1:
      }
    }
    while (true)
    {
      this.d = true;
      CursorJoiner.Result localResult = this.e;
      return localResult;
      k = 0;
      break;
      label173: j = 0;
      break label77;
      this.e = CursorJoiner.Result.LEFT;
      continue;
      this.e = CursorJoiner.Result.BOTH;
      continue;
      this.e = CursorJoiner.Result.RIGHT;
      continue;
      label208: if (k != 0)
      {
        this.e = CursorJoiner.Result.LEFT;
      }
      else
      {
        if ((!a) && (j == 0))
          throw new AssertionError();
        this.e = CursorJoiner.Result.RIGHT;
      }
    }
  }

  public boolean hasNext()
  {
    boolean bool1;
    if (this.d)
      switch (b.a[this.e.ordinal()])
      {
      default:
        throw new IllegalStateException("bad value for mCompareResult, " + this.e);
      case 1:
        if (this.b.isLast())
        {
          boolean bool5 = this.c.isLast();
          bool1 = false;
          if (bool5)
            break;
        }
        else
        {
          bool1 = true;
        }
        break;
      case 2:
      case 3:
      }
    while (true)
    {
      return bool1;
      if (this.b.isLast())
      {
        boolean bool4 = this.c.isAfterLast();
        bool1 = false;
        if (bool4);
      }
      else
      {
        bool1 = true;
        continue;
        if (this.b.isAfterLast())
        {
          boolean bool3 = this.c.isLast();
          bool1 = false;
          if (bool3);
        }
        else
        {
          bool1 = true;
          continue;
          if (this.b.isAfterLast())
          {
            boolean bool2 = this.c.isAfterLast();
            bool1 = false;
            if (bool2);
          }
          else
          {
            bool1 = true;
          }
        }
      }
    }
  }

  public Iterator iterator()
  {
    return this;
  }

  public void remove()
  {
    throw new UnsupportedOperationException("not implemented");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.a.a
 * JD-Core Version:    0.6.2
 */