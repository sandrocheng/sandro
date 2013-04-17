package com.tencent.tmsecure.module.plugin;

import android.os.Bundle;
import com.tencent.tmsecure.common.ManagerCreator;

public final class PluginIntent
{
  public IPluginInterface mPlugin;
  public int mToViewIndex;

  private PluginIntent()
  {
  }

  public PluginIntent(IPluginInterface paramIPluginInterface, int paramInt)
  {
    this.mPlugin = paramIPluginInterface;
    this.mToViewIndex = paramInt;
  }

  public static Bundle convertToBundle(PluginIntent paramPluginIntent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("plugin_key", paramPluginIntent.mPlugin.getClass().getName().hashCode());
    localBundle.putInt("view_index", paramPluginIntent.mToViewIndex);
    return localBundle;
  }

  public static PluginIntent convertToIntent(Bundle paramBundle)
  {
    PluginIntent localPluginIntent = new PluginIntent();
    int i = paramBundle.getInt("plugin_key");
    int j = paramBundle.getInt("view_index");
    PluginEntity localPluginEntity = ((PluginManager)ManagerCreator.getManager(PluginManager.class)).getPluginEntityByKey(i);
    if (localPluginEntity == null)
      throw new NullPointerException("Could found the plugin by the key " + i);
    localPluginIntent.mPlugin = localPluginEntity.mPluginInterface;
    localPluginIntent.mToViewIndex = j;
    return localPluginIntent;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.PluginIntent
 * JD-Core Version:    0.6.2
 */