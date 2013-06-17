package com.avg.toolkit;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Callable;

public final class a
{
  public static ArrayList a(Context paramContext, ArrayList paramArrayList)
  {
    int i = 0;
    ArrayList localArrayList;
    try
    {
      Resources localResources = paramContext.getApplicationContext().getResources();
      for (int j = 0; j < paramArrayList.size(); j++)
        localResources.openRawResource(((Integer)paramArrayList.get(j)).intValue()).close();
      localArrayList = new ArrayList();
      while (i < paramArrayList.size())
      {
        localArrayList.add(new d(paramContext, ((Integer)paramArrayList.get(i)).intValue()));
        i++;
      }
    }
    catch (IOException localIOException)
    {
      throw new Resources.NotFoundException();
    }
    return localArrayList;
  }

  public static Callable a(Context paramContext, int paramInt)
  {
    try
    {
      paramContext.getApplicationContext().getResources().openRawResource(paramInt).close();
      c localc = new c(paramContext, paramInt);
      return localc;
    }
    catch (IOException localIOException)
    {
    }
    throw new Resources.NotFoundException();
  }

  public static Callable a(String paramString)
  {
    if (!paramString.startsWith("res/raw/"))
      throw new IllegalArgumentException();
    String str = "com/avg/toolkit/" + paramString;
    ClassLoader localClassLoader = a.class.getClassLoader();
    if (localClassLoader.getResourceAsStream(str) == null)
      throw new Resources.NotFoundException(paramString);
    return new b(localClassLoader, str, paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.a
 * JD-Core Version:    0.6.2
 */