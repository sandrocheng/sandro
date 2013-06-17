package com.google.a.a.a;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class be
  implements n
{
  private final TreeSet a = new TreeSet();

  public be(Context paramContext, Collection paramCollection)
  {
    a(paramContext, paramCollection);
  }

  public String a(String paramString, Throwable paramThrowable)
  {
    return a(a(paramThrowable), b(a(paramThrowable)), paramString);
  }

  protected String a(Throwable paramThrowable, StackTraceElement paramStackTraceElement, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramThrowable.getClass().getSimpleName());
    if (paramStackTraceElement != null)
    {
      String[] arrayOfString = paramStackTraceElement.getClassName().split("\\.");
      String str = "unknown";
      if ((arrayOfString != null) && (arrayOfString.length > 0))
        str = arrayOfString[(-1 + arrayOfString.length)];
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str;
      arrayOfObject[1] = paramStackTraceElement.getMethodName();
      localStringBuilder.append(String.format(" (@%s:%s)", arrayOfObject));
    }
    if (paramString != null)
      localStringBuilder.append(String.format(" {%s}", new Object[] { paramString }));
    return localStringBuilder.toString();
  }

  protected Throwable a(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null)
      paramThrowable = paramThrowable.getCause();
    return paramThrowable;
  }

  public void a(Context paramContext, Collection paramCollection)
  {
    this.a.clear();
    HashSet localHashSet = new HashSet();
    if (paramCollection != null)
      localHashSet.addAll(paramCollection);
    if (paramContext != null)
      try
      {
        String str3 = paramContext.getApplicationContext().getPackageName();
        this.a.add(str3);
        ActivityInfo[] arrayOfActivityInfo = paramContext.getApplicationContext().getPackageManager().getPackageInfo(str3, 15).activities;
        if (arrayOfActivityInfo != null)
        {
          int j = arrayOfActivityInfo.length;
          for (int k = 0; k < j; k++)
            localHashSet.add(arrayOfActivityInfo[k].packageName);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        aq.d("No package found");
      }
    Iterator localIterator1 = localHashSet.iterator();
    if (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Iterator localIterator2 = this.a.iterator();
      for (int i = 1; ; i = 0)
      {
        if (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          if (str1.startsWith(str2))
            continue;
          if (str2.startsWith(str1))
            this.a.remove(str2);
        }
        if (i == 0)
          break;
        this.a.add(str1);
        break;
      }
    }
  }

  protected StackTraceElement b(Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    Object localObject;
    if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length == 0))
      localObject = null;
    while (true)
    {
      return localObject;
      int i = arrayOfStackTraceElement.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label94;
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
        String str = localStackTraceElement.getClassName();
        Iterator localIterator = this.a.iterator();
        while (true)
          if (localIterator.hasNext())
            if (str.startsWith((String)localIterator.next()))
            {
              localObject = localStackTraceElement;
              break;
            }
      }
      label94: localObject = arrayOfStackTraceElement[0];
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.be
 * JD-Core Version:    0.6.2
 */