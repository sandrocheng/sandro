package com.tencent.tmsecure.module.plugin;

import android.os.IInterface;
import java.util.List;

public abstract interface IPluginManagerService extends IInterface
{
  public abstract List<PluginEntity> getAllPlugins();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.IPluginManagerService
 * JD-Core Version:    0.6.2
 */