package org.antivirus.core.compatibility;

import android.os.Environment;
import java.lang.reflect.Method;
import org.antivirus.core.Logger;

public class HoneycombTools
{
  public static boolean isExternalStorageEmulated()
  {
    try
    {
      Class localClass = Class.forName("android.os.storage.StorageVolume");
      Method localMethod1 = Environment.class.getDeclaredMethod("getPrimaryVolume", null);
      localMethod1.setAccessible(true);
      Object localObject = localMethod1.invoke(Environment.class, null);
      Method localMethod2 = localClass.getDeclaredMethod("isEmulated", null);
      localMethod2.setAccessible(true);
      boolean bool2 = ((Boolean)localMethod2.invoke(localObject, null)).booleanValue();
      if ((localObject != null) && (bool2));
      for (bool1 = true; ; bool1 = false)
        return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.compatibility.HoneycombTools
 * JD-Core Version:    0.6.2
 */