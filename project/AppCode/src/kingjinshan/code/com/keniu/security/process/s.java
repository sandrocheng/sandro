package com.keniu.security.process;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Debug.MemoryInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.monitor.a;
import com.keniu.security.monitor.b;
import java.lang.reflect.Method;
import java.util.List;

public final class s
  implements b
{
  private static s f;
  private Context a = MoSecurityApplication.a();
  private ActivityManager b;
  private SharedPreferences c;
  private List d;
  private List e;
  private HandlerThread g = new HandlerThread("screenmonitor");
  private Handler h;

  public s()
  {
    this.g.start();
    this.h = new Handler(this.g.getLooper());
  }

  public static s a()
  {
    try
    {
      if (f == null)
        f = new s();
      s locals = f;
      return locals;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt, float paramFloat)
  {
    SharedPreferences.Editor localEditor = this.c.edit();
    localEditor.putLong("cleartime", System.currentTimeMillis());
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(paramFloat);
    localEditor.putString("clearmemory", String.format("%1$.2f", arrayOfObject) + "MB");
    localEditor.putInt("killCount", paramInt);
    localEditor.commit();
  }

  private static int b(Debug.MemoryInfo paramMemoryInfo)
  {
    return ((Integer)paramMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(paramMemoryInfo, new Object[0])).intValue();
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    this.h.postDelayed(new u(this), 2000L);
    return 1;
  }

  public final void b()
  {
    try
    {
      a.a().a(a.p, this, 1342177279);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    a.a().a(a.p, this);
    this.h.getLooper().quit();
    f = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.s
 * JD-Core Version:    0.6.2
 */