import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Color;
import android.widget.RemoteViews;
import com.tencent.qqpimsecure.widget.TaskManagerWidgetProvider;
import com.tencent.tmsecure.common.TMSApplication;

public final class bsq extends bsh.a
{
  public bsq(TaskManagerWidgetProvider paramTaskManagerWidgetProvider, String paramString, Context paramContext)
  {
    super(paramString);
  }

  public final void a(Object paramObject)
  {
    long l1 = vh.f();
    long l2 = vh.e();
    int i = 100 - (int)(100L * l1 / l2);
    RemoteViews localRemoteViews;
    if (i < 90)
    {
      localRemoteViews = new RemoteViews(this.b.getPackageName(), 2130903267);
      localRemoteViews.setTextViewText(2131231456, String.valueOf(i));
      localRemoteViews.setProgressBar(2131231458, 100, i, false);
      localRemoteViews.setTextColor(2131231456, Color.rgb(0, 160, 211));
      localRemoteViews.setTextColor(2131231457, Color.rgb(0, 160, 211));
    }
    while (true)
    {
      localRemoteViews.setTextViewText(2131231460, TMSApplication.getApplicaionContext().getString(2131427475) + a.c(l1 << 10));
      localRemoteViews.setOnClickPendingIntent(2131231461, TaskManagerWidgetProvider.a(1));
      localRemoteViews.setOnClickPendingIntent(2131231452, TaskManagerWidgetProvider.a(3));
      AppWidgetManager.getInstance(TMSApplication.getApplicaionContext()).updateAppWidget(new ComponentName(this.b, TaskManagerWidgetProvider.class), localRemoteViews);
      return;
      localRemoteViews = new RemoteViews(this.b.getPackageName(), 2130903268);
      localRemoteViews.setTextViewText(2131231456, String.valueOf(i));
      localRemoteViews.setProgressBar(2131231462, 100, Float.valueOf(i).intValue(), false);
      localRemoteViews.setTextColor(2131231456, Color.rgb(237, 28, 36));
      localRemoteViews.setTextColor(2131231457, Color.rgb(237, 28, 36));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsq
 * JD-Core Version:    0.6.2
 */