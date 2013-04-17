package com.tencent.tmsecure.module.permission;

import android.content.Context;
import bxh;
import com.tencent.tmsecure.common.BaseManager;
import java.util.List;

public final class PermissionManager extends BaseManager
{
  public static final int VERSION_CODE = 12;
  private bxh a;
  private PermissionControlConfig b;

  public final void addPermissionTableItem(PermissionTableItem paramPermissionTableItem)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramPermissionTableItem);
    }
  }

  public final boolean canStartService()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = bxh.d())
      return bool;
  }

  public final PermissionControlConfig getPermissionTable()
  {
    if (isExpired());
    for (PermissionControlConfig localPermissionControlConfig = this.b; ; localPermissionControlConfig = this.a.a())
      return localPermissionControlConfig;
  }

  public final int[] getRidByPermission(List<String> paramList)
  {
    return bxh.a(paramList);
  }

  public final void init(IInitStepObserver paramIInitStepObserver, PermissionControlConfig paramPermissionControlConfig)
  {
    if (isExpired())
      this.b = paramPermissionControlConfig;
    while (true)
    {
      return;
      this.a.a(paramIInitStepObserver, paramPermissionControlConfig);
    }
  }

  public final boolean isEnable()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.b())
      return bool;
  }

  public final boolean isFinishInit()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.c())
      return bool;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxh();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void removePermissionTableItem(PermissionTableItem paramPermissionTableItem)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.b(paramPermissionTableItem);
    }
  }

  public final void setCallback(AbsDummyServiceCallback paramAbsDummyServiceCallback)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramAbsDummyServiceCallback);
    }
  }

  public final void setEnable(boolean paramBoolean)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramBoolean);
    }
  }

  public final void updatePermissionTable(int paramInt1, int paramInt2, int paramInt3)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramInt1, paramInt2, paramInt3);
    }
  }

  public final void updatePermissionTable(PermissionTableItem paramPermissionTableItem)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.c(paramPermissionTableItem);
    }
  }

  public static abstract interface IInitStepObserver
  {
    public static final int STEP_ASK_REBOOT = 2;
    public static final int STEP_CHECK_HAD_REG = 3;
    public static final int STEP_FINISH = 6;
    public static final int STEP_GET_SERVICE_BINDER = 4;
    public static final int STEP_HAD_BEEN_ROOT = 1;
    public static final int STEP_IMPORT_DATA = 5;
    public static final int STEP_OS_ARCH_CHECK;

    public abstract boolean onReached(int paramInt, boolean paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.PermissionManager
 * JD-Core Version:    0.6.2
 */