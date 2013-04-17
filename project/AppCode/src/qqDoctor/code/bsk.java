import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.widget.RemoteViews;
import com.tencent.qqpimsecure.widget.NetSetWidgetProvider;

public final class bsk extends bsh.a
{
  public bsk(NetSetWidgetProvider paramNetSetWidgetProvider, String paramString, Context paramContext)
  {
    super(paramString);
  }

  public final void a(Object paramObject)
  {
    String[] arrayOfString = (String[])paramObject;
    if ((ft.f(NetSetWidgetProvider.a(this.c))) && (!di.b().b()))
    {
      RemoteViews localRemoteViews2 = new RemoteViews(this.b.getPackageName(), 2130903176);
      localRemoteViews2.setOnClickPendingIntent(2131231148, NetSetWidgetProvider.a(this.c, 1));
      localRemoteViews2.setOnClickPendingIntent(2131231151, NetSetWidgetProvider.a(this.c, 2));
      localRemoteViews2.setOnClickPendingIntent(2131231153, NetSetWidgetProvider.a(this.c, 3));
      localRemoteViews2.setOnClickPendingIntent(2131231155, NetSetWidgetProvider.a(this.c, 4));
      localRemoteViews2.setOnClickPendingIntent(2131231157, NetSetWidgetProvider.a(this.c, 5));
      localRemoteViews2.setImageViewResource(2131231148, 2130838370);
      if (arrayOfString[0].equals("true"))
      {
        localRemoteViews2.setImageViewResource(2131231151, 2130838375);
        if (!arrayOfString[1].equals("true"))
          break label242;
        localRemoteViews2.setImageViewResource(2131231153, 2130838368);
        label169: if ((arrayOfString[2] == null) || (!arrayOfString[2].equals("0")))
          break label254;
        localRemoteViews2.setImageViewResource(2131231155, 2130838372);
      }
      while (true)
      {
        localRemoteViews2.setImageViewResource(2131231157, 2130838373);
        AppWidgetManager.getInstance(this.b).updateAppWidget(new ComponentName(this.b, NetSetWidgetProvider.class), localRemoteViews2);
        return;
        localRemoteViews2.setImageViewResource(2131231151, 2130838376);
        break;
        label242: localRemoteViews2.setImageViewResource(2131231153, 2130838369);
        break label169;
        label254: localRemoteViews2.setImageViewResource(2131231155, 2130838374);
      }
    }
    RemoteViews localRemoteViews1 = new RemoteViews(this.b.getPackageName(), 2130903177);
    localRemoteViews1.setOnClickPendingIntent(2131231151, NetSetWidgetProvider.a(this.c, 2));
    localRemoteViews1.setOnClickPendingIntent(2131231157, NetSetWidgetProvider.a(this.c, 5));
    if (arrayOfString[0].equals("true"))
      localRemoteViews1.setImageViewResource(2131231151, 2130838375);
    while (true)
    {
      localRemoteViews1.setImageViewResource(2131231157, 2130838373);
      AppWidgetManager.getInstance(this.b).updateAppWidget(new ComponentName(this.b, NetSetWidgetProvider.class), localRemoteViews1);
      break;
      localRemoteViews1.setImageViewResource(2131231151, 2130838376);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsk
 * JD-Core Version:    0.6.2
 */