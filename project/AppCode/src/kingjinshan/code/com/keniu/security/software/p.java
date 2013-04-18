package com.keniu.security.software;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import com.ijinshan.kinghelper.a.h;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class p
  implements h
{
  private Handler a;
  private Context b;
  private String c;

  public final void a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void run()
  {
    try
    {
      Class localClass1 = Class.forName("android.content.pm.PackageParser");
      Constructor localConstructor1 = localClass1.getConstructor(new Class[] { String.class });
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.c;
      Object localObject2 = localConstructor1.newInstance(arrayOfObject1);
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localDisplayMetrics.setToDefaults();
      Class[] arrayOfClass1 = new Class[4];
      arrayOfClass1[0] = File.class;
      arrayOfClass1[1] = String.class;
      arrayOfClass1[2] = DisplayMetrics.class;
      arrayOfClass1[3] = Integer.TYPE;
      Method localMethod1 = localClass1.getDeclaredMethod("parsePackage", arrayOfClass1);
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = new File(this.c);
      arrayOfObject2[1] = this.c;
      arrayOfObject2[2] = localDisplayMetrics;
      arrayOfObject2[3] = Integer.valueOf(0);
      Object localObject3 = localMethod1.invoke(localObject2, arrayOfObject2);
      if (localObject3 != null)
      {
        Field localField = localObject3.getClass().getDeclaredField("applicationInfo");
        if (localField.get(localObject3) != null)
        {
          localApplicationInfo = (ApplicationInfo)localField.get(localObject3);
          Class localClass2 = Class.forName("android.content.res.AssetManager");
          Object localObject4 = localClass2.newInstance();
          Method localMethod2 = localClass2.getDeclaredMethod("addAssetPath", new Class[] { String.class });
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = this.c;
          localMethod2.invoke(localObject4, arrayOfObject3);
          Resources localResources1 = this.b.getResources();
          Class[] arrayOfClass2 = new Class[3];
          arrayOfClass2[0] = localObject4.getClass();
          arrayOfClass2[1] = localResources1.getDisplayMetrics().getClass();
          arrayOfClass2[2] = localResources1.getConfiguration().getClass();
          Constructor localConstructor2 = Resources.class.getConstructor(arrayOfClass2);
          Object[] arrayOfObject4 = new Object[3];
          arrayOfObject4[0] = localObject4;
          arrayOfObject4[1] = localResources1.getDisplayMetrics();
          arrayOfObject4[2] = localResources1.getConfiguration();
          localResources2 = (Resources)localConstructor2.newInstance(arrayOfObject4);
          int i = localApplicationInfo.icon;
          if (i == 0);
        }
      }
    }
    catch (Exception localException1)
    {
      try
      {
        ApplicationInfo localApplicationInfo;
        Resources localResources2;
        Drawable localDrawable2 = localResources2.getDrawable(localApplicationInfo.icon);
        localObject1 = localDrawable2;
        Message localMessage = this.a.obtainMessage();
        localMessage.obj = localObject1;
        this.a.sendMessage(localMessage);
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Object localObject1 = this.b.getResources().getDrawable(17301651);
          continue;
          Drawable localDrawable1 = this.b.getResources().getDrawable(17301651);
          localObject1 = localDrawable1;
          continue;
          localException1 = localException1;
          localObject1 = this.b.getResources().getDrawable(17301651);
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.p
 * JD-Core Version:    0.6.2
 */