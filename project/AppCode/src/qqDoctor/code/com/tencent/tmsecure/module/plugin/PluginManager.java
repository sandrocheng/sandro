package com.tencent.tmsecure.module.plugin;

import android.content.Context;
import bxr;
import com.tencent.tmsecure.common.BaseManager;
import java.util.List;

public final class PluginManager extends BaseManager
{
  public static final int VERSION = 1;
  private bxr a;

  public final IPluginDatabase createPluginDatabase(AbsPluginDatabaseFactor paramAbsPluginDatabaseFactor)
  {
    return this.a.a(paramAbsPluginDatabaseFactor);
  }

  public final List<PluginEntity> getAllPlugins()
  {
    return this.a.b();
  }

  public final AbsPluginControler getPluginControler()
  {
    return this.a.a();
  }

  public final PluginEntity getPluginEntityByKey(int paramInt)
  {
    return this.a.a(paramInt);
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxr();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void setPluginControler(AbsPluginControler paramAbsPluginControler)
  {
    this.a.a(paramAbsPluginControler);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.PluginManager
 * JD-Core Version:    0.6.2
 */