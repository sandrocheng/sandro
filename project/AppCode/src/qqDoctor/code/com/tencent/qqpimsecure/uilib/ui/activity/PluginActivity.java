package com.tencent.qqpimsecure.uilib.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.plugin.AbsPluginViewElement;
import com.tencent.tmsecure.module.plugin.IPluginInterface;
import com.tencent.tmsecure.module.plugin.PluginEntity;
import com.tencent.tmsecure.module.plugin.PluginIntent;
import com.tencent.tmsecure.module.plugin.PluginManager;
import ha;

public class PluginActivity extends BaseUIActivity
{
  public static final String PLUGIN_IS_STATR_VIEW = "plugin_is_statr";
  public static final String PLUGIN_KEY = "plugin_key";
  public static final String PLUGIN_VIEW_INDEX = "plugin_view_index";
  private PluginManager mPluginManager;

  public static void startPluginMainViews(int paramInt)
  {
    Intent localIntent = new Intent(TMSApplication.getApplicaionContext(), PluginActivity.class);
    localIntent.addFlags(268435456);
    localIntent.putExtra("plugin_key", paramInt);
    localIntent.putExtra("plugin_is_statr", true);
    TMSApplication.getApplicaionContext().startActivity(localIntent);
  }

  public static void startPluginView(Activity paramActivity, int paramInt, Intent paramIntent)
  {
    paramIntent.setClass(paramActivity, PluginActivity.class);
    paramIntent.putExtra("plugin_is_statr", false);
    paramActivity.startActivityForResult(paramIntent, paramInt);
  }

  public BaseView getView()
  {
    this.mPluginManager = ((PluginManager)ManagerCreator.getManager(PluginManager.class));
    Intent localIntent = getIntent();
    BaseView localBaseView;
    if (localIntent.getBooleanExtra("plugin_is_statr", false))
    {
      int i = localIntent.getIntExtra("plugin_key", -1);
      PluginEntity localPluginEntity = this.mPluginManager.getPluginEntityByKey(i);
      if (localPluginEntity != null)
      {
        IPluginInterface localIPluginInterface = localPluginEntity.mPluginInterface;
        localBaseView = null;
        if (localIPluginInterface != null)
          localBaseView = (BaseView)localIPluginInterface.getStartViewElement(this).getPresentContruct();
      }
    }
    while (true)
    {
      return localBaseView;
      ha.b(this, 2131429812);
      localBaseView = null;
      continue;
      PluginIntent localPluginIntent = PluginIntent.convertToIntent(localIntent.getExtras());
      localBaseView = (BaseView)localPluginIntent.mPlugin.getViewElement(localPluginIntent.mToViewIndex, this).getPresentContruct();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.activity.PluginActivity
 * JD-Core Version:    0.6.2
 */