package com.tencent.tmsecure.module.optimize;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import ay;
import bxc;
import bxd;
import bxe;
import bxf;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.List;

public final class OptimizeManager extends BaseManager
{
  private bxf a;
  private bxc b;
  private bxe c;
  private bxd d;

  public final boolean closeProcess(String paramString)
    throws PackageManager.NameNotFoundException
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bxf localbxf = this.a;
      ay localay = ScriptHelper.provider$24edfebd();
      if (localay != null)
        bool2 = localay.g();
      else
        bool2 = localbxf.a(paramString, false, true);
    }
  }

  public final boolean closeProcess(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws PackageManager.NameNotFoundException
  {
    boolean bool;
    if (isExpired())
      bool = false;
    while (true)
    {
      return bool;
      bxf localbxf = this.a;
      ay localay = ScriptHelper.provider$24edfebd();
      if (localay != null)
        bool = localay.g();
      else
        bool = localbxf.a(paramString, paramBoolean1, paramBoolean2);
    }
  }

  public final boolean closeProcess(List<String> paramList)
    throws PackageManager.NameNotFoundException
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bool2 = this.a.a(paramList, false, true);
    }
  }

  public final boolean closeProcess(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
    throws PackageManager.NameNotFoundException
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramList, paramBoolean1, paramBoolean2))
      return bool;
  }

  public final ArrayList<ProcessEntity> getAllRunningProcess(boolean paramBoolean)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramBoolean))
      return localArrayList;
  }

  public final IAutoBootHelper getAutoBootHelper()
  {
    try
    {
      if (isExpired())
        if (this.b == null)
          this.b = new bxc();
      IAutoBootHelper localIAutoBootHelper;
      for (Object localObject2 = this.b; ; localObject2 = localIAutoBootHelper)
      {
        return localObject2;
        localIAutoBootHelper = this.a.a();
      }
    }
    finally
    {
    }
  }

  public final ICpuHelper getCpuHelper()
  {
    try
    {
      bxf localbxf1 = this.a;
      if (localbxf1.b == null)
        localbxf1.b = new CpuHelperImpl();
      ICpuHelper localICpuHelper = localbxf1.b;
      if (isExpired())
        if (this.d == null)
          this.d = new bxd(localICpuHelper);
      bxf localbxf2;
      for (Object localObject2 = this.d; ; localObject2 = localbxf2.b)
      {
        return localObject2;
        localbxf2 = this.a;
        if (localbxf2.b == null)
          localbxf2.b = new CpuHelperImpl();
      }
    }
    finally
    {
    }
  }

  public final IMemoryHelper getMemoryHelper()
  {
    try
    {
      IMemoryHelper localIMemoryHelper1 = this.a.b();
      if (isExpired())
        if (this.c == null)
          this.c = new bxe(localIMemoryHelper1);
      IMemoryHelper localIMemoryHelper2;
      for (Object localObject2 = this.c; ; localObject2 = localIMemoryHelper2)
      {
        return localObject2;
        localIMemoryHelper2 = this.a.b();
      }
    }
    finally
    {
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxf();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.OptimizeManager
 * JD-Core Version:    0.6.2
 */