package com.tencent.tmsecure.module.tools;

import android.content.Context;
import byr;
import com.tencent.tmsecure.common.BaseManager;

public final class PackageChangedManager extends BaseManager
{
  private byr a;

  public final IPackageChangedListener addListener(IPackageChangedListener paramIPackageChangedListener)
  {
    if (isExpired());
    for (IPackageChangedListener localIPackageChangedListener = null; ; localIPackageChangedListener = this.a.a(paramIPackageChangedListener))
      return localIPackageChangedListener;
  }

  public final IPackageChangedListener addListener(IPackageChangedListener paramIPackageChangedListener, int paramInt)
  {
    if (isExpired());
    for (IPackageChangedListener localIPackageChangedListener = null; ; localIPackageChangedListener = this.a.a(paramIPackageChangedListener, paramInt))
      return localIPackageChangedListener;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new byr();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final IPackageChangedListener removeListener(IPackageChangedListener paramIPackageChangedListener)
  {
    if (isExpired());
    for (IPackageChangedListener localIPackageChangedListener = null; ; localIPackageChangedListener = this.a.b(paramIPackageChangedListener))
      return localIPackageChangedListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.tools.PackageChangedManager
 * JD-Core Version:    0.6.2
 */