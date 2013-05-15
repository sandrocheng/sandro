package com.avast.android.generic.util;

import android.content.Context;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class aw
{
  private static aw e;
  private int a = 2;
  private int b = 0;
  private int c = 0;
  private boolean d = false;

  private aw(Context paramContext, int paramInt)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramContext.getResources().openRawResource(paramInt)));
    try
    {
      String str = localBufferedReader.readLine();
      String[] arrayOfString;
      if (str != null)
      {
        arrayOfString = str.split(";");
        if (arrayOfString.length < 4)
          break label127;
        this.a = Integer.parseInt(arrayOfString[0]);
        this.b = Integer.parseInt(arrayOfString[1]);
        this.c = Integer.parseInt(arrayOfString[2]);
        this.d = arrayOfString[3].equals("BETA");
      }
      while (true)
      {
        localBufferedReader.close();
        break;
        label127: if (arrayOfString.length == 3)
        {
          this.a = Integer.parseInt(arrayOfString[0]);
          this.b = Integer.parseInt(arrayOfString[1]);
          this.c = Integer.parseInt(arrayOfString[2]);
          this.d = false;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static aw a(Context paramContext, int paramInt)
  {
    if (e != null);
    for (aw localaw = e; ; localaw = e)
    {
      return localaw;
      e = new aw(paramContext, paramInt);
    }
  }

  public int a()
  {
    return this.c;
  }

  public String b()
  {
    return String.valueOf(-2 + this.a);
  }

  public String c()
  {
    return String.valueOf(this.b);
  }

  public String d()
  {
    return String.valueOf(this.c);
  }

  public String e()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.c);
    if (this.d);
    for (String str = " BETA"; ; str = "")
      return String.valueOf(str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.aw
 * JD-Core Version:    0.6.2
 */