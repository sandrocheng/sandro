package org.antivirus.widget.a;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings.System;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.widget.AvWidgetProvider;
import org.antivirus.widget.a.a.b;
import org.antivirus.widget.a.a.c;
import org.antivirus.widget.a.a.d;
import org.antivirus.widget.a.a.e;
import org.antivirus.widget.a.a.f;
import org.antivirus.widget.a.a.g;
import org.antivirus.widget.a.a.j;
import org.antivirus.widget.a.a.m;
import org.antivirus.widget.a.a.n;
import org.antivirus.widget.activities.WidgetConfigurationActivity;

public final class k
{
  public static k a;
  public List b = new ArrayList();
  public Map c = new HashMap();
  public RemoteViews d;
  public Context e;
  public AppWidgetManager f;
  public ComponentName g;
  public org.antivirus.widget.b.a h;
  private SparseArray i = new SparseArray();
  private Boolean j;

  private k(Context paramContext)
  {
    this.e = paramContext;
    this.f = AppWidgetManager.getInstance(paramContext);
    this.g = new ComponentName(paramContext.getPackageName(), AvWidgetProvider.class.getCanonicalName());
    this.d = new RemoteViews(paramContext.getPackageName(), 2130903098);
    this.h = new org.antivirus.widget.b.a(paramContext);
    paramContext.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.h);
    this.i.put(i.a.a(), g.class);
    this.i.put(i.b.a(), c.class);
    this.i.put(i.c.a(), org.antivirus.widget.a.a.k.class);
    this.i.put(i.d.a(), j.class);
    this.i.put(i.e.a(), b.class);
    this.i.put(i.f.a(), e.class);
    this.i.put(i.g.a(), org.antivirus.widget.a.a.a.class);
    this.i.put(i.h.a(), d.class);
    this.i.put(i.j.a(), f.class);
    this.i.put(i.i.a(), m.class);
    this.b.add(0, new l(2131231001, 2131231002, 2131231004, 2131231003));
    this.b.add(1, new l(2131231005, 2131231006, 2131231008, 2131231007));
    this.b.add(2, new l(2131231009, 2131231010, 2131231012, 2131231011));
    this.b.add(3, new l(2131231013, 2131231014, 2131231016, 2131231015));
    if (e())
      b();
  }

  private n a(int paramInt)
  {
    n localn;
    if (this.c.containsKey(Integer.valueOf(paramInt)))
    {
      localn = (n)this.c.get(Integer.valueOf(paramInt));
      return localn;
    }
    if (this.i.indexOfKey(paramInt) >= 0);
    for (Object localObject = (Class)this.i.get(paramInt); ; localObject = g.class)
    {
      localn = (n)((Class)localObject).newInstance();
      this.c.put(Integer.valueOf(paramInt), localn);
      break;
      Logger.error("Invalid widget type request.: " + paramInt + ", return default: protection");
    }
  }

  public static k a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new k(paramContext.getApplicationContext());
      k localk = a;
      return localk;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(RemoteViews paramRemoteViews)
  {
    try
    {
      this.f.updateAppWidget(this.g, paramRemoteViews);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        Logger.error("AppWidgetManager is not available. Cancel update");
    }
    finally
    {
    }
  }

  private void a(Boolean paramBoolean)
  {
    BufferedWriter localBufferedWriter;
    try
    {
      this.e.deleteFile("widgetConfig.data");
      localBufferedWriter = new BufferedWriter(new OutputStreamWriter(this.e.openFileOutput("widgetConfig.data", 0)));
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        int k = ((l)localIterator.next()).e;
        if (k == 0)
        {
          localBufferedWriter.close();
          this.e.deleteFile("widgetConfig.data");
          return;
        }
        localBufferedWriter.write(String.valueOf(k));
        localBufferedWriter.write(";");
      }
    }
    finally
    {
    }
    if (paramBoolean == null)
      localBufferedWriter.write("NULL");
    while (true)
    {
      localBufferedWriter.close();
      break;
      localBufferedWriter.write(String.valueOf(paramBoolean.booleanValue()));
    }
  }

  private boolean b(int paramInt)
  {
    Iterator localIterator = this.b.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((l)localIterator.next()).e != paramInt);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    ((l)this.b.get(paramInt1)).e = paramInt2;
  }

  public final boolean a(Bundle paramBundle)
  {
    return a(paramBundle, i.a.a());
  }

  public final boolean a(Bundle paramBundle, int paramInt)
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      Integer[] arrayOfInteger = a();
      ArrayList localArrayList = new ArrayList();
      for (int k = 0; k < arrayOfInteger.length; k++)
        if (arrayOfInteger[k].intValue() == paramInt)
          localArrayList.add(Integer.valueOf(k));
      boolean bool3 = localArrayList.isEmpty();
      bool2 = false;
      if (!bool3)
      {
        Iterator localIterator = localArrayList.iterator();
        boolean bool4 = false;
        while (localIterator.hasNext())
        {
          Integer localInteger = (Integer)localIterator.next();
          l locall = (l)this.b.get(localInteger.intValue());
          try
          {
            boolean bool5 = a(paramInt).a(this.e, paramBundle, this.d, locall, bool4);
            bool4 |= bool5;
          }
          catch (Exception localException)
          {
            Logger.error("Couldn't instantiate widget item update. Widget item is not updated");
          }
        }
        if (bool4)
          a(this.d);
        bool2 = bool4;
      }
    }
  }

  public final boolean a(Boolean paramBoolean, boolean paramBoolean1)
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (bool1);
    try
    {
      int[] arrayOfInt = this.f.getAppWidgetIds(this.g);
      Intent localIntent = new Intent(this.e, WidgetConfigurationActivity.class);
      localIntent.addFlags(268435456);
      localIntent.addFlags(16384);
      localIntent.addFlags(32768);
      localIntent.putExtra("appWidgetId", arrayOfInt[0]);
      localIntent.putExtra("ExistingWidget", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.e, 0, localIntent, 134217728);
      if (paramBoolean != null)
      {
        if (paramBoolean.booleanValue())
        {
          k = 2130837850;
          this.d.setImageViewResource(2131230996, k);
        }
      }
      else
      {
        this.d.setOnClickPendingIntent(2131230995, localPendingIntent);
        if (paramBoolean1)
          a(this.d);
        bool2 = true;
        return bool2;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        Logger.error("AppWidgetManager is not available. Cancel update");
        bool2 = false;
        continue;
        int k = 2130837849;
      }
    }
  }

  public final Integer[] a()
  {
    int k = 0;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.e.openFileInput("widgetConfig.data")));
      String str = localBufferedReader.readLine();
      if (str == null)
      {
        localBufferedReader.close();
        arrayOfInteger = new Integer[0];
      }
      while (true)
      {
        return arrayOfInteger;
        String[] arrayOfString = str.split(";");
        arrayOfInteger = new Integer[-1 + arrayOfString.length];
        while (true)
          if (k < arrayOfInteger.length)
          {
            int m = Integer.parseInt(arrayOfString[k]);
            if (m > 0)
            {
              arrayOfInteger[k] = Integer.valueOf(m);
              k++;
            }
            else
            {
              arrayOfInteger = new Integer[0];
              break;
            }
          }
        if (!arrayOfString[arrayOfInteger.length].equals("NULL"))
          this.j = Boolean.valueOf(Boolean.parseBoolean(arrayOfString[arrayOfInteger.length]));
        localBufferedReader.close();
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        Integer[] arrayOfInteger = new Integer[0];
    }
    finally
    {
    }
  }

  // ERROR //
  public final void b(Boolean paramBoolean, boolean paramBoolean1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   4: astore 7
    //   6: aload_0
    //   7: getfield 39	org/antivirus/widget/a/k:b	Ljava/util/List;
    //   10: invokeinterface 284 1 0
    //   15: astore 8
    //   17: aload 8
    //   19: invokeinterface 289 1 0
    //   24: ifeq +105 -> 129
    //   27: aload 8
    //   29: invokeinterface 292 1 0
    //   34: checkcast 156	org/antivirus/widget/a/l
    //   37: astore 14
    //   39: aload_0
    //   40: aload 14
    //   42: getfield 295	org/antivirus/widget/a/l:e	I
    //   45: invokespecial 340	org/antivirus/widget/a/k:a	(I)Lorg/antivirus/widget/a/a/n;
    //   48: astore 18
    //   50: aload 18
    //   52: astore 16
    //   54: aload 16
    //   56: ifnull -39 -> 17
    //   59: aload 16
    //   61: aload_0
    //   62: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   65: aconst_null
    //   66: aload 7
    //   68: aload 14
    //   70: iconst_1
    //   71: invokevirtual 343	org/antivirus/widget/a/a/n:a	(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    //   74: pop
    //   75: goto -58 -> 17
    //   78: astore_3
    //   79: ldc_w 436
    //   82: invokestatic 242	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   85: aload_3
    //   86: invokestatic 440	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   89: aload_0
    //   90: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   93: ifnull +10 -> 103
    //   96: aload_0
    //   97: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   100: ifnonnull +95 -> 195
    //   103: ldc_w 442
    //   106: invokestatic 242	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   109: return
    //   110: astore 15
    //   112: ldc_w 436
    //   115: invokestatic 242	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   118: aload 15
    //   120: invokestatic 440	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   123: aconst_null
    //   124: astore 16
    //   126: goto -72 -> 54
    //   129: new 354	android/content/Intent
    //   132: dup
    //   133: invokespecial 443	android/content/Intent:<init>	()V
    //   136: astore 9
    //   138: aload 9
    //   140: getstatic 448	org/antivirus/AVService:SERVICE_IDENTIFIER	Landroid/content/ComponentName;
    //   143: invokevirtual 452	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   146: pop
    //   147: aload 9
    //   149: ldc_w 454
    //   152: bipush 110
    //   154: invokevirtual 371	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   157: pop
    //   158: aload 9
    //   160: ldc_w 456
    //   163: aload_0
    //   164: getstatic 120	org/antivirus/widget/a/i:b	Lorg/antivirus/widget/a/i;
    //   167: invokevirtual 112	org/antivirus/widget/a/i:a	()I
    //   170: invokespecial 458	org/antivirus/widget/a/k:b	(I)Z
    //   173: invokevirtual 376	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   176: pop
    //   177: aload_0
    //   178: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   181: aload 9
    //   183: invokevirtual 462	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   186: pop
    //   187: aload_0
    //   188: aload_1
    //   189: invokespecial 464	org/antivirus/widget/a/k:a	(Ljava/lang/Boolean;)V
    //   192: goto -103 -> 89
    //   195: new 354	android/content/Intent
    //   198: dup
    //   199: aload_0
    //   200: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   203: ldc_w 466
    //   206: invokespecial 359	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   209: astore 4
    //   211: aload_0
    //   212: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   215: bipush 15
    //   217: aload 4
    //   219: ldc_w 377
    //   222: invokestatic 383	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   225: astore 5
    //   227: aload_0
    //   228: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   231: ldc_w 467
    //   234: aload 5
    //   236: invokevirtual 393	android/widget/RemoteViews:setOnClickPendingIntent	(ILandroid/app/PendingIntent;)V
    //   239: iload_2
    //   240: ifeq +44 -> 284
    //   243: aload_0
    //   244: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   247: ldc_w 467
    //   250: bipush 8
    //   252: invokevirtual 470	android/widget/RemoteViews:setViewVisibility	(II)V
    //   255: aload_0
    //   256: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   259: ldc_w 471
    //   262: iconst_0
    //   263: invokevirtual 470	android/widget/RemoteViews:setViewVisibility	(II)V
    //   266: aload_0
    //   267: aload_1
    //   268: iconst_0
    //   269: invokevirtual 473	org/antivirus/widget/a/k:a	(Ljava/lang/Boolean;Z)Z
    //   272: pop
    //   273: aload_0
    //   274: aload_0
    //   275: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   278: invokespecial 347	org/antivirus/widget/a/k:a	(Landroid/widget/RemoteViews;)V
    //   281: goto -172 -> 109
    //   284: aload_0
    //   285: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   288: ldc_w 474
    //   291: aload_0
    //   292: getfield 46	org/antivirus/widget/a/k:e	Landroid/content/Context;
    //   295: ldc_w 475
    //   298: invokevirtual 478	android/content/Context:getString	(I)Ljava/lang/String;
    //   301: invokevirtual 482	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   304: aload_0
    //   305: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   308: ldc_w 467
    //   311: iconst_0
    //   312: invokevirtual 470	android/widget/RemoteViews:setViewVisibility	(II)V
    //   315: aload_0
    //   316: getfield 82	org/antivirus/widget/a/k:d	Landroid/widget/RemoteViews;
    //   319: ldc_w 471
    //   322: bipush 8
    //   324: invokevirtual 470	android/widget/RemoteViews:setViewVisibility	(II)V
    //   327: goto -61 -> 266
    //
    // Exception table:
    //   from	to	target	type
    //   0	39	78	java/lang/Exception
    //   59	75	78	java/lang/Exception
    //   112	192	78	java/lang/Exception
    //   39	50	110	java/lang/Exception
  }

  public final boolean b()
  {
    while (true)
    {
      try
      {
        int k = this.f.getAppWidgetIds(this.g).length;
        bool1 = false;
        if (k == 0)
          return bool1;
      }
      catch (RuntimeException localRuntimeException)
      {
        Logger.error("AppWidgetManager is not available. Cancel reload");
        bool1 = false;
        continue;
      }
      finally
      {
      }
      Integer[] arrayOfInteger = a();
      int m = arrayOfInteger.length;
      boolean bool1 = false;
      if (m != 0)
      {
        for (int n = 0; n < arrayOfInteger.length; n++)
          a(n, arrayOfInteger[n].intValue());
        Boolean localBoolean = this.j;
        boolean bool2 = AVSettings.shouldShowActivationScreen();
        boolean bool3 = false;
        if (!bool2)
          bool3 = true;
        b(localBoolean, bool3);
        bool1 = true;
      }
    }
  }

  public final boolean b(Bundle paramBundle)
  {
    return a(paramBundle, i.c.a());
  }

  public final boolean c()
  {
    if ((b(i.g.a())) && (a(null, i.g.a())));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean d()
  {
    if ((b(i.i.a())) && (a(null, i.i.a())));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean e()
  {
    boolean bool = false;
    try
    {
      if (this.f == null)
      {
        bool = false;
      }
      else
      {
        int k = this.f.getAppWidgetIds(this.g).length;
        bool = false;
        if (k > 0)
          bool = true;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      Logger.error("AppWidgetManager is not available");
    }
    return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.k
 * JD-Core Version:    0.6.2
 */