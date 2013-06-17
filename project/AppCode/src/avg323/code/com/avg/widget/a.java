package com.avg.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import com.avg.toolkit.i;
import java.util.Arrays;

public class a extends AppWidgetProvider
{
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    super.onDeleted(paramContext, paramArrayOfInt);
    Arrays.toString(paramArrayOfInt);
  }

  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    i.a(paramContext, 25000, 2, null);
  }

  public void onEnabled(Context paramContext)
  {
    super.onEnabled(paramContext);
    i.a(paramContext, 25000, 1, null);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    i.a(paramContext, 25000, 3, null);
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.a
 * JD-Core Version:    0.6.2
 */