package org.antivirus.core;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Callable;

public final class AVResources
{
  public static Callable getRawResourceOpener(Context paramContext, int paramInt)
  {
    try
    {
      paramContext.getApplicationContext().getResources().openRawResource(paramInt).close();
      AVResources.2 local2 = new AVResources.2(paramContext, paramInt);
      return local2;
    }
    catch (IOException localIOException)
    {
    }
    throw new Resources.NotFoundException();
  }

  public static Callable getRawResourceOpener(String paramString)
  {
    if (!paramString.startsWith("res/raw/"))
      throw new IllegalArgumentException();
    String str = "com/antivirus/core/" + paramString;
    ClassLoader localClassLoader = AVResources.class.getClassLoader();
    if (localClassLoader.getResourceAsStream(str) == null)
      throw new Resources.NotFoundException(paramString);
    return new AVResources.1(localClassLoader, str, paramString);
  }

  public static ArrayList getRawResourceSecDbOpener(Context paramContext, int[] paramArrayOfInt)
  {
    int i = 0;
    ArrayList localArrayList;
    try
    {
      Resources localResources = paramContext.getApplicationContext().getResources();
      for (int j = 0; j < paramArrayOfInt.length; j++)
        localResources.openRawResource(paramArrayOfInt[j]).close();
      localArrayList = new ArrayList();
      while (i < paramArrayOfInt.length)
      {
        localArrayList.add(new AVResources.3(paramContext, paramArrayOfInt[i]));
        i++;
      }
    }
    catch (IOException localIOException)
    {
      throw new Resources.NotFoundException();
    }
    return localArrayList;
  }

  public static InputStream openRawResource(String paramString)
  {
    if (!paramString.startsWith("res/raw/"))
      throw new IllegalArgumentException();
    InputStream localInputStream = AVResources.class.getClassLoader().getResourceAsStream("com/antivirus/core/" + paramString);
    if (localInputStream == null)
      throw new Resources.NotFoundException(paramString);
    return localInputStream;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.AVResources
 * JD-Core Version:    0.6.2
 */