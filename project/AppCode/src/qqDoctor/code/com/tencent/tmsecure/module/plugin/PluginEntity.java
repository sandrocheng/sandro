package com.tencent.tmsecure.module.plugin;

import com.tencent.tmsecure.common.BaseEntity;

public class PluginEntity extends BaseEntity
{
  private int a = -1;
  public String mPluginFilePath;
  public IPluginInterface mPluginInterface;
  public String mPluginName;
  public String mPluginPkgName;
  public int mPluginVerion;

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof PluginEntity;
    boolean bool2 = false;
    if (bool1)
    {
      PluginEntity localPluginEntity = (PluginEntity)paramObject;
      int i = getKey();
      int j = localPluginEntity.getKey();
      bool2 = false;
      if (i == j)
        bool2 = true;
    }
    return bool2;
  }

  public int getKey()
  {
    if (this.a == -1)
      this.a = this.mPluginInterface.getClass().getName().hashCode();
    return this.a;
  }

  public int hashCode()
  {
    return 48 + getKey();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.PluginEntity
 * JD-Core Version:    0.6.2
 */