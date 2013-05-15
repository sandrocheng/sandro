package com.avast.android.mobilesecurity.app.webshield;

import a.a.a.a.a.a;
import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.Toast;
import com.avast.android.generic.ad;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.mobilesecurity.app.account.e;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.ak;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.receiver.ExternalPowerReceiver;
import com.avast.android.mobilesecurity.t;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class WebshieldService extends Service
{
  static Set a = new HashSet();
  private static final Map b = new HashMap();
  private static final ConcurrentMap o = new ConcurrentHashMap();
  private t c;
  private com.avast.android.generic.notification.j d;
  private boolean e;
  private o f;
  private o g;
  private o h;
  private o i;
  private o j;
  private o k;
  private Date l;
  private Looper m;
  private m n;
  private e p;
  private u q;

  private n a()
  {
    n localn = n.a;
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://avast.com"));
    localIntent.setClassName(n.b.a(), n.b.c());
    if (b(localIntent))
      localn = n.b;
    return localn;
  }

  public static ah a(String paramString)
  {
    try
    {
      ah localah = (ah)b.get(paramString);
      return localah;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, WebshieldService.class);
    localIntent.putExtra("restart", true);
    paramContext.startService(localIntent);
  }

  private void a(Intent paramIntent)
  {
    if (b(paramIntent));
    try
    {
      startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
        a.a().a("Can't start browser activity.", localActivityNotFoundException);
    }
  }

  private void a(Uri paramUri, n paramn)
  {
    com.avast.android.generic.util.m.c("redirecting browser to " + paramUri);
    Intent localIntent = paramn.a(paramUri);
    com.avast.android.generic.util.m.c("Sending redirect intent to " + localIntent.getComponent().flattenToString());
    a(localIntent);
  }

  private void a(y paramy, String paramString, ak paramak)
  {
    this.q.a(paramy, null, paramString, null, null, Long.valueOf(paramak.a()), null);
  }

  private void a(n paramn)
  {
    Intent localIntent1 = paramn.i();
    if (b(localIntent1))
    {
      com.avast.android.generic.util.m.c("Sending block intent to " + localIntent1.getComponent().flattenToString());
      getApplicationContext().startActivity(localIntent1);
    }
    while (true)
    {
      return;
      Intent localIntent2 = n.a.i();
      if (b(localIntent2))
        getApplicationContext().startActivity(localIntent2);
    }
  }

  public static void a(ah paramah)
  {
    try
    {
      b.put(paramah.b(), paramah);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(String paramString, n paramn)
  {
    if (a.contains(paramString));
    while (true)
    {
      return;
      List localList1 = i.a(this, null, paramString);
      ah localah = new ah(ak.d);
      if ((localList1 != null) && (!localList1.isEmpty()))
        localah = (ah)localList1.get(0);
      List localList2 = localList1;
      for (int i1 = 0; (i1 < 2) && (localah.a.equals(ak.d)); i1++)
      {
        localList2 = i.a(this, null, paramString);
        localah = new ah(ak.d);
        if ((localList2 != null) && (!localList2.isEmpty()))
          localah = (ah)localList2.get(0);
      }
      a(localList2);
      this.c.aA();
      a(y.F, paramString, localah.a);
      if ((localah.a.equals(ak.a)) || (localah.a.equals(ak.d)))
      {
        this.p.a(0, 1, av.c);
      }
      else if (localah.a.equals(ak.f))
      {
        this.p.a(0, 1, av.c);
        if (this.c.V())
        {
          a(Uri.parse("about:blank"), paramn);
          a(y.G, paramString, localah.a);
          a(paramString, localah, paramn);
        }
      }
      else if (((!localah.a.equals(ak.c)) || (this.c.T())) && (((!localah.a.equals(ak.b)) && (!localah.a.equals(ak.e))) || (this.c.U())))
      {
        this.p.a(1, 1, av.c);
        a(paramString, localah);
        a(y.G, paramString, localah.a);
        int i2 = paramn.h();
        for (int i3 = 0; i3 < i2; i3++)
          a(paramn);
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList2.iterator();
        while (localIterator.hasNext())
          localArrayList.add(((ah)localIterator.next()).a);
        WebshieldActivity.call(this, Uri.parse(paramString), localArrayList, paramn, 268435456, null);
      }
    }
  }

  private void a(String paramString, ah paramah)
  {
    String str;
    switch (l.a[paramah.a.ordinal()])
    {
    default:
      str = getString(2131493633);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.p.a(Uri.parse(paramString), str, av.c);
      return;
      str = getString(2131493631);
      continue;
      str = getString(2131493632);
      continue;
      str = getString(2131493634);
    }
  }

  private void a(String paramString, ah paramah, n paramn)
  {
    if (this.c.W())
    {
      i.a(this, null, paramString, paramah, true, true);
      a(Uri.parse(paramah.c), paramn);
      Toast.makeText(this, getString(2131493894, new Object[] { paramString }), 0).show();
      a(y.H, paramah.c, paramah.a);
    }
    while (true)
    {
      return;
      a(paramah);
      SiteCorrectActivity.call(this, Uri.parse(paramString), paramah.b(), paramn, 268435456, null);
    }
  }

  public static void a(List paramList)
  {
    Collections.sort(paramList, new k());
  }

  public static void b(Context paramContext)
  {
    paramContext.startService(new Intent(paramContext, WebshieldService.class));
  }

  public static void b(String paramString)
  {
    try
    {
      b.remove(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean b()
  {
    if ((c("fwd.html")) && (c("block.html")) && (c("bg_web.png")) && (c("logo.png")) && (c("ic_scanner_result_problem.png")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean b(Intent paramIntent)
  {
    ResolveInfo localResolveInfo = getPackageManager().resolveActivity(paramIntent, 0);
    boolean bool = false;
    if (localResolveInfo != null)
      bool = true;
    return bool;
  }

  @SuppressLint({"WorldReadableFiles"})
  private boolean c(String paramString)
  {
    AssetManager localAssetManager = getAssets();
    try
    {
      if (localAssetManager.list(paramString) == null)
      {
        bool = false;
      }
      else
      {
        InputStream localInputStream = localAssetManager.open(paramString);
        FileOutputStream localFileOutputStream = openFileOutput(paramString, 1);
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int i1 = localInputStream.read(arrayOfByte);
          if (i1 < 0)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i1);
        }
        localInputStream.close();
        localFileOutputStream.flush();
        localFileOutputStream.close();
        bool = true;
      }
      return bool;
    }
    catch (IOException localIOException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.c = ((t)ad.a(this, t.class));
    this.d = ((com.avast.android.generic.notification.j)ad.a(this, com.avast.android.generic.notification.j.class));
    HandlerThread localHandlerThread = new HandlerThread("WebshieldService[helper]", 1);
    localHandlerThread.start();
    this.m = localHandlerThread.getLooper();
    this.n = new m(this, this.m);
    this.n.post(new j(this));
    this.q = u.a(this);
    this.l = new Date();
  }

  public void onDestroy()
  {
    this.d.b(this, null);
    if ((this.f != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.f);
      this.f = null;
    }
    if ((this.i != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.i);
      this.i = null;
    }
    if ((this.h != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.h);
      this.h = null;
    }
    if ((this.g != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.g);
      this.g = null;
    }
    if ((this.j != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.j);
      this.j = null;
    }
    if ((this.k != null) && (this.e))
    {
      getContentResolver().unregisterContentObserver(this.k);
      this.k = null;
    }
    this.e = false;
    this.m.quit();
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("restart", false)))
    {
      com.avast.android.generic.util.m.c("Restarting WebshieldService");
      stopSelf(paramInt2);
      b(this);
    }
    while (true)
    {
      return 1;
      if ((paramIntent != null) && (paramIntent.getBooleanExtra("redirect_browser", false)))
      {
        if (n.e.equals(n.a(paramIntent.getStringExtra("browser_type"))))
        {
          paramIntent.setClass(this, DolphinWebshieldService.class);
          startService(paramIntent);
        }
        else
        {
          a(paramIntent.getData(), n.a(paramIntent.getStringExtra("browser_type")));
        }
      }
      else
      {
        boolean bool = this.c.S();
        if ((bool) && (Build.VERSION.SDK_INT < 11))
        {
          AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
          PendingIntent localPendingIntent = PendingIntent.getService(this, 0, new Intent(this, WebshieldService.class), 134217728);
          localAlarmManager.set(3, SystemClock.elapsedRealtime() + 8000 * ExternalPowerReceiver.a(this), localPendingIntent);
        }
        if ((bool) && (!this.e))
        {
          this.f = new o(this, new Handler(), a());
          this.h = new o(this, new Handler(), n.f);
          this.i = new o(this, new Handler(), n.c);
          this.g = new o(this, new Handler(), n.d);
          this.j = new o(this, new Handler(), n.g);
          this.k = new o(this, new Handler(), n.h);
          getContentResolver().registerContentObserver(n.a.b(), true, this.f);
          getContentResolver().registerContentObserver(n.f.b(), true, this.h);
          getContentResolver().registerContentObserver(n.c.b(), true, this.i);
          getContentResolver().registerContentObserver(n.d.b(), true, this.g);
          getContentResolver().registerContentObserver(n.g.b(), true, this.j);
          getContentResolver().registerContentObserver(n.h.b(), true, this.k);
          this.p = new e(this);
          this.e = true;
          if (this.c.Q())
            this.d.a(this, null);
          com.avast.android.generic.util.m.c("WebshieldService started");
        }
        else if ((!bool) && (this.e))
        {
          stopSelf(paramInt2);
          com.avast.android.generic.util.m.c("WebshieldService stopped");
        }
        else if (!bool)
        {
          stopSelf(paramInt2);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.WebshieldService
 * JD-Core Version:    0.6.2
 */