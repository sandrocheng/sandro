package org.antivirus.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import org.antivirus.AVService;

public class AvWidgetProvider extends AppWidgetProvider
{
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    super.onDeleted(paramContext, paramArrayOfInt);
    Arrays.toString(paramArrayOfInt);
  }

  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    Intent localIntent = new Intent(paramContext, AVService.class);
    localIntent.putExtra("__SAC", 501);
    paramContext.startService(localIntent);
  }

  public void onEnabled(Context paramContext)
  {
    super.onEnabled(paramContext);
    Intent localIntent = new Intent(paramContext, AVService.class);
    localIntent.putExtra("__SAC", 500);
    paramContext.startService(localIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    Intent localIntent = new Intent(paramContext, AVService.class);
    localIntent.putExtra("__SAC", 502);
    paramContext.startService(localIntent);
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.AvWidgetProvider
 * JD-Core Version:    0.6.2
 */