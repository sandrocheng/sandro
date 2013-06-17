package com.antivirus.core.compatibility;

import android.os.Environment;
import com.avg.toolkit.f.a;
import java.lang.reflect.Method;

public class HoneycombTools
{
  public static boolean isExternalStorageEmulated()
  {
    try
    {
      Class localClass = Class.forName("android.os.storage.StorageVolume");
      Method localMethod1 = Environment.class.getDeclaredMethod("getPrimaryVolume", (Class[])null);
      localMethod1.setAccessible(true);
      Object localObject = localMethod1.invoke(Environment.class, (Object[])null);
      Method localMethod2 = localClass.getDeclaredMethod("isEmulated", (Class[])null);
      localMethod2.setAccessible(true);
      boolean bool2 = ((Boolean)localMethod2.invoke(localObject, (Object[])null)).booleanValue();
      if ((localObject != null) && (bool2));
      for (bool1 = true; ; bool1 = false)
        return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.compatibility.HoneycombTools
 * JD-Core Version:    0.6.2
 */