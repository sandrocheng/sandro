package com.avast.android.mobilesecurity.app.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler.Callback;
import android.widget.RemoteViews;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.PasswordActivity;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.Application;
import com.avast.android.mobilesecurity.app.firewall.core.FirewallHandlingService;
import com.avast.android.mobilesecurity.app.home.StartActivity;
import com.avast.android.mobilesecurity.app.scanner.ScannerScanActivity;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;
import java.util.Arrays;

public class WidgetControlProvider extends AppWidgetProvider
{
  private Handler.Callback a;

  public static void a(Context paramContext)
  {
    b.a(new j(AppWidgetManager.getInstance(paramContext), paramContext, null), new Void[0]);
  }

  private static void a(Context paramContext, Intent paramIntent)
  {
    paramIntent.putExtra("appWidgetIds", AppWidgetManager.getInstance(paramContext).getAppWidgetIds(new ComponentName(paramContext, WidgetControlProvider.class)));
  }

  private static void a(Context paramContext, RemoteViews paramRemoteViews)
  {
    if (((t)ad.a(paramContext, t.class)).X())
      paramRemoteViews.setTextViewText(2131165692, paramContext.getText(2131493876));
    while (true)
    {
      return;
      paramRemoteViews.setTextViewText(2131165692, paramContext.getText(2131493877));
    }
  }

  private static void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, RemoteViews paramRemoteViews)
  {
    Resources localResources = paramContext.getResources();
    if ((paramBoolean1) && (paramBoolean2))
    {
      paramRemoteViews.setTextColor(2131165681, localResources.getColor(2131296273));
      paramRemoteViews.setTextViewText(2131165681, paramContext.getString(2131493885));
      if (paramBoolean4)
        paramRemoteViews.setImageViewResource(2131165682, 2130837832);
    }
    while (true)
    {
      return;
      if ((paramBoolean1) || (paramBoolean3))
      {
        paramRemoteViews.setTextColor(2131165681, localResources.getColor(2131296274));
        if (paramBoolean1);
        for (int i = 2131493884; ; i = 2131493883)
        {
          paramRemoteViews.setTextViewText(2131165681, paramContext.getString(i));
          if (!paramBoolean4)
            break;
          paramRemoteViews.setImageViewResource(2131165682, 2130837834);
          break;
        }
      }
      paramRemoteViews.setTextColor(2131165681, localResources.getColor(2131296272));
      paramRemoteViews.setTextViewText(2131165681, paramContext.getString(2131493882));
      if (paramBoolean4)
        paramRemoteViews.setImageViewResource(2131165682, 2130837833);
    }
  }

  private void a(t paramt, Context paramContext)
  {
    if (!paramt.X());
    for (boolean bool = true; ; bool = false)
    {
      Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.firewall.core.WIDGET_COMMAND");
      localIntent.putExtra("enabled", bool);
      FirewallHandlingService.b(paramContext, localIntent);
      return;
    }
  }

  private static boolean a(t paramt)
  {
    if (paramt.ar() + paramt.as() + paramt.at() + paramt.au() > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static RemoteViews c(Context paramContext)
  {
    t localt = (t)ad.a(paramContext, t.class);
    boolean bool1 = a(localt);
    boolean bool2;
    boolean bool3;
    PendingIntent localPendingIntent1;
    PendingIntent localPendingIntent2;
    PendingIntent localPendingIntent3;
    RemoteViews localRemoteViews;
    if ((Application.i()) || (localt.aG()) || (UpdateService.f(paramContext)))
    {
      bool2 = true;
      bool3 = localt.am();
      m.b("WidgetControlProvider", "WidgetControlProvider: Updating widget problems=" + bool1 + ", expired=" + bool2 + ", malware=" + bool3);
      localPendingIntent1 = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, StartActivity.class), 134217728);
      localPendingIntent2 = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, WidgetControlBigActivity.class), 134217728);
      Intent localIntent1 = new Intent(paramContext, ScannerScanActivity.class);
      localIntent1.putExtra("widgetScan", true);
      localPendingIntent3 = PendingIntent.getActivity(paramContext, 0, localIntent1, 134217728);
      if (!localt.aM())
        break label271;
      Intent localIntent2 = new Intent(paramContext, WidgetControlProvider.class);
      localIntent2.setAction("com.avast.android.mobilesecurity.action.TOGGLE_FIREWALL");
      PendingIntent localPendingIntent4 = PendingIntent.getBroadcast(paramContext, 0, localIntent2, 134217728);
      localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903209);
      localRemoteViews.setOnClickPendingIntent(2131165690, localPendingIntent4);
      a(paramContext, localRemoteViews);
      a(paramContext, bool1, bool3, bool2, false, localRemoteViews);
    }
    while (true)
    {
      localRemoteViews.setOnClickPendingIntent(2131165679, localPendingIntent1);
      localRemoteViews.setOnClickPendingIntent(2131165687, localPendingIntent2);
      localRemoteViews.setOnClickPendingIntent(2131165684, localPendingIntent3);
      return localRemoteViews;
      bool2 = false;
      break;
      label271: localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903208);
      a(paramContext, bool1, bool3, bool2, true, localRemoteViews);
    }
  }

  private void d(Context paramContext)
  {
    t localt = (t)ad.a(paramContext, t.class);
    if ((localt.X()) && (localt.o()))
    {
      if (this.a == null)
        this.a = PasswordDialog.a(paramContext.getApplicationContext(), 2131165230, new i(this, localt, paramContext));
      PasswordActivity.call(paramContext.getApplicationContext(), 2131165230);
    }
    while (true)
    {
      return;
      a(localt, paramContext);
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    m.b("WidgetControlProvider", "WidgetControlProvider: Intent received, action: " + str);
    if ((str.equals("android.intent.action.PACKAGE_ADDED")) || (str.equals("android.intent.action.PACKAGE_REPLACED")))
    {
      paramIntent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
      a(paramContext, paramIntent);
    }
    while (true)
    {
      super.onReceive(paramContext, paramIntent);
      return;
      if (str.equals("com.avast.android.mobilesecurity.action.TOGGLE_FIREWALL"))
        d(paramContext);
    }
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    m.b("WidgetControlProvider", "WidgetControlProvider: Update received, ids: " + Arrays.toString(paramArrayOfInt));
    b.a(new j(paramAppWidgetManager, paramContext, null), new Void[0]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.WidgetControlProvider
 * JD-Core Version:    0.6.2
 */