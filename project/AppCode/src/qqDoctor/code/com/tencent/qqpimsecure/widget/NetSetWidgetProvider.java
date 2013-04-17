package com.tencent.qqpimsecure.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import bsh;
import bsh.a;
import bsi;
import bsj;
import bsk;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import nd;

public class NetSetWidgetProvider extends AbstractWidgetProvider
{
  public NetSettingManager a;
  private Context b;
  private bsi c;

  protected final bsh.a a(Context paramContext)
  {
    nd.a().a(25);
    return new bsk(this, NetSetWidgetProvider.class.getName(), paramContext);
  }

  protected final String a()
  {
    return bsi.class.getSimpleName();
  }

  protected final bsh b()
  {
    if (this.c == null)
      this.c = new bsi(QQPimApplication.a());
    return this.c;
  }

  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    nd.a().a(26142);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    this.b = paramContext;
    if (this.a == null)
      this.a = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class));
    if (paramIntent.getIntExtra("msg_position", -1) > 0)
    {
      new bsj(this, paramIntent).start();
      WidgetUpdateBoradcastReceiver.a(bsi.class.getSimpleName());
    }
    while (true)
    {
      return;
      WidgetUpdateBoradcastReceiver.a(bsi.class.getSimpleName());
    }
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    nd.a().a(26141);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.widget.NetSetWidgetProvider
 * JD-Core Version:    0.6.2
 */