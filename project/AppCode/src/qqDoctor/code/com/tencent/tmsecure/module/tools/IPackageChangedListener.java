package com.tencent.tmsecure.module.tools;

public abstract interface IPackageChangedListener
{
  public abstract void onPackageAdded(String paramString);

  public abstract void onPackageReinstall(String paramString);

  public abstract void onPackageRemoved(String paramString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.tools.IPackageChangedListener
 * JD-Core Version:    0.6.2
 */