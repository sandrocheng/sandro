package com.tencent.qqpimsecure.widget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import bsh;
import bsh.a;
import bsn;
import bso;
import bsp;
import bsq;
import bsr;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.tmsecure.common.TMSApplication;
import nd;
import vh;
import vh.a;

public class TaskManagerWidgetProvider extends AbstractWidgetProvider
{
  private vh.a a = new bsn(this);
  private bsr b;

  protected final bsh.a a(Context paramContext)
  {
    return new bsq(this, TaskManagerWidgetProvider.class.getName(), paramContext);
  }

  public final String a()
  {
    return bsr.class.getSimpleName();
  }

  protected final bsh b()
  {
    if (this.b == null)
      this.b = new bsr(QQPimApplication.a());
    return this.b;
  }

  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    vh.a().b(this.a);
    nd.a().a(26138);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    nd localnd;
    if (paramIntent != null)
    {
      int i = paramIntent.getIntExtra("msg_type", -1);
      if (i > 0)
      {
        localnd = nd.a();
        switch (i)
        {
        default:
        case 1:
        case 2:
        case 3:
        }
      }
    }
    while (true)
    {
      return;
      new bsp(this, paramContext).start();
      localnd.a(26140);
      continue;
      new bso(paramIntent.getStringExtra("msg_data"), paramContext).start();
      continue;
      Intent localIntent = new Intent(TMSApplication.getApplicaionContext(), SplashActivity.class);
      localIntent.setFlags(872415232);
      TMSApplication.getApplicaionContext().startActivity(localIntent);
      localnd.a(26139);
    }
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    vh.a().a(this.a);
    nd.a().a(26137);
    TMSApplication.getApplicaionContext();
    WidgetUpdateBoradcastReceiver.a(bsr.class.getSimpleName());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.widget.TaskManagerWidgetProvider
 * JD-Core Version:    0.6.2
 */