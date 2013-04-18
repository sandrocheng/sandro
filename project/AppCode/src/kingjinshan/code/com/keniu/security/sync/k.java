package com.keniu.security.sync;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

public final class k
{
  private static k a;
  private SharedPreferences b;
  private SharedPreferences.Editor c;

  public static k a()
  {
    if (a == null)
      a = new k();
    return a;
  }

  public final void a(Context paramContext)
  {
    this.b = t.b(paramContext);
    this.c = this.b.edit();
  }

  public final void a(String paramString)
  {
    if (this.b.contains(paramString))
    {
      this.c.remove(paramString);
      this.c.commit();
    }
  }

  public final void a(String paramString, int paramInt)
  {
    this.c.putInt(paramString, paramInt);
    this.c.commit();
  }

  public final void a(String paramString, Boolean paramBoolean)
  {
    this.c.putBoolean(paramString, paramBoolean.booleanValue());
    this.c.commit();
  }

  public final void a(String paramString1, String paramString2)
  {
    this.c.putString(paramString1, paramString2);
    this.c.commit();
  }

  public final void a(String paramString, boolean[] paramArrayOfBoolean)
  {
    int i = 0;
    int j = 0;
    if (i < paramArrayOfBoolean.length)
    {
      int k = (2 << i) / 2;
      if (paramArrayOfBoolean[i] != 0);
      for (int m = 1; ; m = 0)
      {
        j += k * m;
        i++;
        break;
      }
    }
    a(paramString, j);
  }

  public final boolean b(String paramString)
  {
    if (this.b == null);
    for (boolean bool = false; ; bool = this.b.contains(paramString))
      return bool;
  }

  public final boolean[] b(String paramString, int paramInt)
  {
    boolean[] arrayOfBoolean = new boolean[paramInt];
    if ((b(paramString)) && (d(paramString) != -1))
    {
      int i = 0;
      if (i < paramInt)
      {
        if ((d(paramString) & (2 << i) / 2) >> i == 1);
        for (int j = 1; ; j = 0)
        {
          arrayOfBoolean[i] = j;
          i++;
          break;
        }
      }
    }
    else
    {
      arrayOfBoolean = null;
    }
    return arrayOfBoolean;
  }

  public final String c(String paramString)
  {
    return this.b.getString(paramString, "null");
  }

  public final int d(String paramString)
  {
    return this.b.getInt(paramString, -1);
  }

  public final Boolean e(String paramString)
  {
    if (this.b == null);
    for (Boolean localBoolean = Boolean.valueOf(false); ; localBoolean = Boolean.valueOf(this.b.getBoolean(paramString, true)))
      return localBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.k
 * JD-Core Version:    0.6.2
 */