package com.tencent.qqpimsecure.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import bsh;
import bsh.a;
import bss;

public abstract class AbstractWidgetProvider extends AppWidgetProvider
{
  private a a = new a();

  protected abstract bsh.a a(Context paramContext);

  protected abstract String a();

  protected abstract bsh b();

  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    bsh localbsh = bss.a().a(a(), Boolean.valueOf(false));
    if (localbsh != null)
      localbsh.b(a(paramContext));
    bss.a().b(this.a);
  }

  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    bss.a().a(this.a);
    bss.a().a(a(), Boolean.valueOf(true)).a(a(paramContext));
  }

  public final class a
  {
    protected a()
    {
    }

    public final bsh a(String paramString)
    {
      new StringBuilder("widget AbstractUpdateManager getClassSimpleName() ").append(AbstractWidgetProvider.this.a()).toString();
      if (paramString.equals(AbstractWidgetProvider.this.a()));
      for (bsh localbsh = AbstractWidgetProvider.this.b(); ; localbsh = null)
        return localbsh;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.widget.AbstractWidgetProvider
 * JD-Core Version:    0.6.2
 */