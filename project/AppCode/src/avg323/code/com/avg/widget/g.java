package com.avg.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.widget.RemoteViews;
import com.avg.ui.general.o;
import com.avg.widget.activities.TransparentDummyActivity;
import com.avg.widget.model.plugin.WidgetPlugin;
import com.avg.widget.model.plugin.WidgetTrialPlugin;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class g
  implements com.avg.toolkit.e
{
  protected Context a;
  protected Handler b;
  protected com.avg.toolkit.e.a c;
  protected boolean d;
  protected Map e = new HashMap();
  private RemoteViews f;
  private AppWidgetManager g;
  private ComponentName h;
  private List i = new ArrayList();

  public g(Context paramContext, Handler paramHandler, com.avg.toolkit.e.a parama, boolean paramBoolean)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramHandler;
    this.c = parama;
    this.d = paramBoolean;
    this.g = AppWidgetManager.getInstance(this.a);
    this.f = new RemoteViews(this.a.getPackageName(), e.widget_layout);
    this.h = c();
    d();
    a(r());
    l();
    if (q())
      d(null);
  }

  private List a(int[] paramArrayOfInt, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < paramArrayOfInt.length; j++)
      if (paramArrayOfInt[j] == paramInt)
        localArrayList.add(Integer.valueOf(j));
    return localArrayList;
  }

  private void a(RemoteViews paramRemoteViews)
  {
    try
    {
      this.g.updateAppWidget(this.h, paramRemoteViews);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        com.avg.toolkit.f.a.a("AppWidgetManager is not available. Cancel update");
    }
    finally
    {
    }
  }

  private void a(WidgetTrialPlugin paramWidgetTrialPlugin)
  {
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.addFlags(16384);
    localIntent.addFlags(32768);
    if (paramWidgetTrialPlugin.r())
    {
      localIntent.putExtra("launchFormWidget", true);
      Class localClass = m();
      if ((o.c()) && (localClass != null))
      {
        localIntent.setClass(this.a, localClass);
        localIntent.putExtra("EXTRA_GOTO", paramWidgetTrialPlugin.d());
      }
    }
    while (true)
    {
      this.a.startActivity(localIntent);
      return;
      localIntent.setClass(this.a, paramWidgetTrialPlugin.c());
      continue;
      localIntent.setClass(this.a, TransparentDummyActivity.class);
      localIntent.putExtra("FEATURE_EXPIRED_TITLE", paramWidgetTrialPlugin.n());
      localIntent.putExtra("FEATURE_EXPIRED_SUBTITLE", paramWidgetTrialPlugin.o());
      localIntent.putExtra("FEATURE_EXPIRED_BODY", paramWidgetTrialPlugin.p());
      localIntent.putExtra("FEATURE_EXPIRED_ICON", paramWidgetTrialPlugin.q());
    }
  }

  private void b(Boolean paramBoolean, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      if (q())
      {
        PendingIntent localPendingIntent = c(paramBoolean2);
        if (paramBoolean != null)
          if (!paramBoolean.booleanValue())
            break label70;
        label70: int j;
        for (int k = g(); ; k = j)
        {
          this.f.setImageViewResource(d.settingLeftImage, k);
          this.f.setOnClickPendingIntent(d.settings, localPendingIntent);
          if (!paramBoolean1)
            break;
          a(this.f);
          break;
          j = h();
        }
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a("AppWidgetManager is not available. Cancel update");
    }
  }

  private boolean b(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    boolean bool = false;
    if (j != 4);
    while (true)
    {
      return bool;
      int k = paramArrayOfInt.length;
      for (int m = 0; ; m++)
      {
        if (m >= k)
          break label45;
        int n = paramArrayOfInt[m];
        bool = false;
        if (n == 0)
          break;
      }
      label45: bool = true;
    }
  }

  private PendingIntent c(boolean paramBoolean)
  {
    Intent localIntent;
    if (paramBoolean)
    {
      int[] arrayOfInt = this.g.getAppWidgetIds(this.h);
      localIntent = new Intent(this.a, i());
      localIntent.addFlags(268435456);
      localIntent.addFlags(16384);
      localIntent.addFlags(32768);
      localIntent.putExtra("appWidgetId", arrayOfInt[0]);
      localIntent.putExtra("ExistingWidget", true);
      localIntent.putExtra("curr_widget_config", r());
      localIntent.putExtra("available_plugins", j());
    }
    while (true)
    {
      return PendingIntent.getActivity(this.a, 0, localIntent, 134217728);
      localIntent = new Intent(this.a, k());
    }
  }

  public void a(int paramInt1, int paramInt2)
  {
    com.avg.widget.model.a locala = (com.avg.widget.model.a)this.i.get(paramInt1);
    if (locala != null)
      locala.a(paramInt2);
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    this.c = com.avg.toolkit.e.e.a();
    Iterator localIterator = this.e.values().iterator();
    while (localIterator.hasNext())
    {
      WidgetPlugin localWidgetPlugin = (WidgetPlugin)localIterator.next();
      if (localWidgetPlugin.m())
        ((WidgetTrialPlugin)localWidgetPlugin).a(this.c);
    }
  }

  public void a(Boolean paramBoolean, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      t();
      s();
      if ((this.a == null) || (this.f == null))
      {
        com.avg.toolkit.f.a.a("Widget cannot be updated - mContext is null. Update will be performed on next request");
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a("Couldn't instantiate widget VO");
        com.avg.toolkit.f.a.a(localException);
      }
      Intent localIntent = new Intent(this.a, k());
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 15, localIntent, 134217728);
      this.f.setOnClickPendingIntent(d.activationHolder, localPendingIntent);
      if (!paramBoolean2)
        break label139;
    }
    this.f.setViewVisibility(d.activationHolder, 8);
    this.f.setViewVisibility(d.mainWidgetLayout, 0);
    while (true)
    {
      b(paramBoolean, false, paramBoolean2);
      if (!paramBoolean1)
        break;
      a(this.f);
      break;
      label139: this.f.setTextViewText(d.activationTextView, this.a.getString(f.widget_activation));
      this.f.setViewVisibility(d.activationHolder, 0);
      this.f.setViewVisibility(d.mainWidgetLayout, 8);
    }
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    n();
  }

  protected void a(int[] paramArrayOfInt)
  {
    if (!b(paramArrayOfInt))
      paramArrayOfInt = a();
    this.i.add(0, new com.avg.widget.model.a(d.widget1Placeholder, d.widget1Image, d.widget1text, d.sideText1, paramArrayOfInt[0]));
    this.i.add(1, new com.avg.widget.model.a(d.widget2Placeholder, d.widget2Image, d.widget2text, d.sideText2, paramArrayOfInt[1]));
    this.i.add(2, new com.avg.widget.model.a(d.widget3Placeholder, d.widget3Image, d.widget3text, d.sideText3, paramArrayOfInt[2]));
    this.i.add(3, new com.avg.widget.model.a(d.widget4Placeholder, d.widget4Image, d.widget4text, d.sideText4, paramArrayOfInt[3]));
  }

  protected boolean a(int paramInt)
  {
    Iterator localIterator = this.i.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((com.avg.widget.model.a)localIterator.next()).d() != paramInt);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected abstract int[] a();

  public int b()
  {
    return 25000;
  }

  public void b(Bundle paramBundle)
  {
    int j = -1;
    if (paramBundle != null);
    try
    {
      int k = paramBundle.getInt("__SAC2", -1);
      j = k;
      switch (j)
      {
      case 5:
      case 6:
      case 7:
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 1:
      case 3:
      case 2:
      case 4:
      case 8:
      case 9:
      case 10:
      case 11:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        o();
        continue;
        d(paramBundle);
        continue;
        p();
        continue;
        e(paramBundle);
        continue;
        c(paramBundle);
        continue;
        e();
        continue;
        a(paramBundle.getInt("widget_view_button_id"), paramBundle.getInt("widget_config_resource_item"));
      }
      if (this.c == null)
        break label195;
    }
    if (this.c.a());
    label195: for (boolean bool = true; ; bool = false)
    {
      a(Boolean.valueOf(bool), true, this.d);
      break;
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
    this.c = parama;
    b(Boolean.valueOf(parama.a()), true, this.d);
  }

  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
      this.d = paramBoolean;
  }

  protected abstract ComponentName c();

  protected void c(Bundle paramBundle)
  {
    int j = -1;
    if (!q());
    while (true)
    {
      return;
      if (paramBundle != null);
      boolean bool1;
      try
      {
        int k = paramBundle.getInt("extra_plugin_id", -1);
        j = k;
        if (j < 0)
          continue;
        List localList = a(r(), j);
        if ((localList == null) || (localList.isEmpty()))
          continue;
        localWidgetPlugin = (WidgetPlugin)this.e.get(Integer.valueOf(j));
        if (localWidgetPlugin == null)
          continue;
        Iterator localIterator = localList.iterator();
        bool1 = false;
        if (localIterator.hasNext())
        {
          Integer localInteger = (Integer)localIterator.next();
          locala = (com.avg.widget.model.a)this.i.get(localInteger.intValue());
        }
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            WidgetPlugin localWidgetPlugin;
            com.avg.widget.model.a locala;
            boolean bool3 = localWidgetPlugin.a(this.a, locala, this.f, bool1);
            bool2 = bool3 | bool1;
            bool1 = bool2;
          }
          localException2 = localException2;
          com.avg.toolkit.f.a.a(localException2);
        }
        catch (Exception localException1)
        {
          while (true)
          {
            com.avg.toolkit.f.a.a("Couldn't instantiate widget item update. Widget item is not updated");
            boolean bool2 = bool1;
          }
        }
      }
      if (bool1)
        a(this.f);
    }
  }

  protected abstract void d();

  // ERROR //
  void d(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 85	com/avg/widget/g:d	()V
    //   4: aload_1
    //   5: ifnull +15 -> 20
    //   8: aload_0
    //   9: aload_1
    //   10: ldc_w 472
    //   13: iconst_0
    //   14: invokevirtual 476	android/os/Bundle:getBoolean	(Ljava/lang/String;Z)Z
    //   17: invokevirtual 478	com/avg/widget/g:b	(Z)V
    //   20: aload_0
    //   21: getfield 61	com/avg/widget/g:g	Landroid/appwidget/AppWidgetManager;
    //   24: aload_0
    //   25: getfield 83	com/avg/widget/g:h	Landroid/content/ComponentName;
    //   28: invokevirtual 234	android/appwidget/AppWidgetManager:getAppWidgetIds	(Landroid/content/ComponentName;)[I
    //   31: arraylength
    //   32: istore_3
    //   33: iload_3
    //   34: ifne +3 -> 37
    //   37: aload_0
    //   38: invokevirtual 89	com/avg/widget/g:r	()[I
    //   41: astore 4
    //   43: aload 4
    //   45: arraylength
    //   46: ifle +16 -> 62
    //   49: aload 4
    //   51: arraylength
    //   52: iconst_4
    //   53: if_icmpeq +9 -> 62
    //   56: ldc_w 480
    //   59: invokestatic 129	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   62: aload_0
    //   63: aload 4
    //   65: invokespecial 355	com/avg/widget/g:b	([I)Z
    //   68: istore 6
    //   70: iconst_0
    //   71: istore 7
    //   73: iload 6
    //   75: ifne +9 -> 84
    //   78: aload_0
    //   79: invokevirtual 357	com/avg/widget/g:a	()[I
    //   82: astore 4
    //   84: iload 7
    //   86: aload 4
    //   88: arraylength
    //   89: if_icmpge +28 -> 117
    //   92: aload_0
    //   93: iload 7
    //   95: aload 4
    //   97: iload 7
    //   99: iaload
    //   100: invokevirtual 443	com/avg/widget/g:a	(II)V
    //   103: iinc 7 1
    //   106: goto -22 -> 84
    //   109: astore_2
    //   110: ldc_w 482
    //   113: invokestatic 129	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   116: return
    //   117: aload_0
    //   118: getfield 51	com/avg/widget/g:c	Lcom/avg/toolkit/e/a;
    //   121: ifnonnull +20 -> 141
    //   124: aconst_null
    //   125: astore 9
    //   127: aload_0
    //   128: aload 9
    //   130: iconst_1
    //   131: aload_0
    //   132: getfield 53	com/avg/widget/g:d	Z
    //   135: invokevirtual 452	com/avg/widget/g:a	(Ljava/lang/Boolean;ZZ)V
    //   138: goto -22 -> 116
    //   141: aload_0
    //   142: getfield 51	com/avg/widget/g:c	Lcom/avg/toolkit/e/a;
    //   145: invokevirtual 447	com/avg/toolkit/e/a:a	()Z
    //   148: invokestatic 450	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   151: astore 8
    //   153: aload 8
    //   155: astore 9
    //   157: goto -30 -> 127
    //   160: astore 5
    //   162: goto -46 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   20	33	109	java/lang/RuntimeException
    //   62	103	160	java/lang/Exception
    //   117	153	160	java/lang/Exception
  }

  protected abstract void e();

  void e(Bundle paramBundle)
  {
    int j = paramBundle.getInt("WidgetItem");
    paramBundle.remove("WidgetItem");
    WidgetPlugin localWidgetPlugin = (WidgetPlugin)this.e.get(Integer.valueOf(j));
    if (localWidgetPlugin.m())
    {
      a((WidgetTrialPlugin)localWidgetPlugin);
      return;
    }
    if (localWidgetPlugin.l())
      localWidgetPlugin.a(this.a, this.b);
    while (true)
    {
      try
      {
        com.avg.toolkit.c.a.a(this.a, "widget", localWidgetPlugin.g(), null, 0);
      }
      catch (Exception localException)
      {
      }
      break;
      Class localClass = localWidgetPlugin.c();
      Intent localIntent = new Intent(this.a, localClass);
      if (!paramBundle.isEmpty())
        localIntent.putExtras(paramBundle);
      localIntent.addFlags(268435456);
      localIntent.addFlags(16384);
      localIntent.addFlags(32768);
      this.a.startActivity(localIntent);
    }
  }

  protected abstract void f();

  protected abstract int g();

  protected abstract int h();

  protected abstract Class i();

  protected abstract Parcelable[] j();

  protected abstract Class k();

  protected abstract void l();

  protected Class m()
  {
    return null;
  }

  public void n()
  {
    try
    {
      Boolean localBoolean = Boolean.valueOf(this.c.a());
      if (q())
        b(localBoolean, true, this.d);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  void o()
  {
    com.avg.toolkit.c.a.a(this.a, "widget", "widget_added", null, 0);
  }

  public void onDestroy()
  {
    this.i.clear();
    this.i = null;
    this.e.clear();
    this.e = null;
    this.a = null;
    this.b = null;
    this.c = null;
    this.f = null;
    this.g = null;
    this.h = null;
  }

  void p()
  {
    if (this.a.deleteFile("widgetConfig.data"));
    while (true)
    {
      f();
      com.avg.toolkit.c.a.a(this.a, "widget", "widget_removed", null, 0);
      return;
    }
  }

  public boolean q()
  {
    boolean bool = false;
    try
    {
      if (this.g == null)
      {
        bool = false;
      }
      else
      {
        int j = this.g.getAppWidgetIds(this.h).length;
        bool = false;
        if (j > 0)
          bool = true;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      com.avg.toolkit.f.a.a("AppWidgetManager is not available");
    }
    return bool;
  }

  public int[] r()
  {
    int j = 0;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.a.openFileInput("widgetConfig.data")));
      String str = localBufferedReader.readLine();
      if (str == null)
      {
        localBufferedReader.close();
        arrayOfInt = new int[0];
      }
      while (true)
      {
        return arrayOfInt;
        String[] arrayOfString = str.split(";");
        arrayOfInt = new int[4];
        while (true)
          if (j < arrayOfInt.length)
          {
            int k = Integer.parseInt(arrayOfString[j]);
            if (k > 0)
            {
              arrayOfInt[j] = k;
              j++;
            }
            else
            {
              arrayOfInt = new int[0];
              break;
            }
          }
        localBufferedReader.close();
      }
    }
    catch (Exception localException)
    {
      while (true)
        int[] arrayOfInt = new int[0];
    }
    finally
    {
    }
  }

  public void s()
  {
    while (true)
    {
      BufferedWriter localBufferedWriter;
      try
      {
        this.a.deleteFile("widgetConfig.data");
        localBufferedWriter = new BufferedWriter(new OutputStreamWriter(this.a.openFileOutput("widgetConfig.data", 0)));
        Iterator localIterator = this.i.iterator();
        if (localIterator.hasNext())
        {
          int j = ((com.avg.widget.model.a)localIterator.next()).d();
          if (j == 0)
          {
            localBufferedWriter.close();
            this.a.deleteFile("widgetConfig.data");
            return;
          }
          localBufferedWriter.write(String.valueOf(j));
          localBufferedWriter.write(";");
          continue;
        }
      }
      finally
      {
      }
      localBufferedWriter.close();
    }
  }

  public void t()
  {
    Iterator localIterator = this.i.iterator();
    while (true)
      if (localIterator.hasNext())
      {
        com.avg.widget.model.a locala = (com.avg.widget.model.a)localIterator.next();
        try
        {
          localWidgetPlugin = (WidgetPlugin)this.e.get(Integer.valueOf(locala.d()));
          if (localWidgetPlugin != null)
            localWidgetPlugin.a(this.a, locala, this.f, true);
        }
        catch (Exception localException)
        {
          while (true)
          {
            com.avg.toolkit.f.a.a("Couldn't instantiate widget VO");
            com.avg.toolkit.f.a.a(localException);
            WidgetPlugin localWidgetPlugin = null;
          }
        }
      }
    l();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.g
 * JD-Core Version:    0.6.2
 */