package com.avast.android.mobilesecurity.app.fileshield;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.avast.android.generic.ad;
import com.avast.android.mobilesecurity.app.scanner.o;
import com.avast.android.mobilesecurity.receiver.ExternalPowerReceiver;
import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class FileShieldService extends Service
{
  private static final IntentFilter a = new IntentFilter();
  private static final IntentFilter b;
  private static final IntentFilter c;
  private Intent d;
  private PendingIntent e;
  private final HashMap f = new HashMap();
  private q g;
  private Looper h;
  private o i;
  private c j;
  private u k;
  private j l;
  private t m;
  private com.avast.android.mobilesecurity.t n;
  private BroadcastReceiver o;
  private BroadcastReceiver p;
  private boolean q = false;
  private boolean r = false;
  private AlarmManager s;
  private BlockingQueue t;
  private p u;
  private SharedPreferences.OnSharedPreferenceChangeListener v;

  static
  {
    a.addDataScheme("file");
    a.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    a.addAction("android.intent.action.MEDIA_MOUNTED");
    a.addAction("android.intent.action.MEDIA_SHARED");
    a.addAction("android.intent.action.MEDIA_REMOVED");
    a.addAction("android.intent.action.MEDIA_EJECT");
    b = new IntentFilter("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
    c = new IntentFilter();
    c.addAction("intent.action.sd_card_scan_started");
    c.addAction("intent.action.sd_card_scan_stopped");
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.t = new LinkedBlockingQueue();
    this.u = new p(this);
    this.u.start();
    this.j = new c(a.d());
    this.k = new u(this);
    this.k.start();
    this.m = new t(this, this);
    this.m.start();
    this.l = new j(this);
    this.l.start();
    HandlerThread localHandlerThread = new HandlerThread("SSSHThread", 10);
    localHandlerThread.start();
    this.h = localHandlerThread.getLooper();
    this.g = new q(this, this.h);
    this.i = new o(this, new Handler());
    this.n = ((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class));
    this.s = ((AlarmManager)getSystemService("alarm"));
    this.d = new Intent(this, FileShieldService.class);
    this.e = PendingIntent.getService(this, 0, this.d, 134217728);
    this.o = new f(this);
    registerReceiver(this.o, a);
    registerReceiver(this.o, b);
    this.p = new g(this);
    android.support.v4.a.p.a(this).a(this.p, c);
    this.v = new h(this);
  }

  // ERROR //
  public void onDestroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 253	android/app/Service:onDestroy	()V
    //   4: aload_0
    //   5: getfield 104	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:n	Lcom/avast/android/mobilesecurity/t;
    //   8: aload_0
    //   9: getfield 250	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:v	Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    //   12: invokevirtual 256	com/avast/android/mobilesecurity/t:b	(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    //   15: aload_0
    //   16: getfield 207	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:s	Landroid/app/AlarmManager;
    //   19: ifnull +21 -> 40
    //   22: aload_0
    //   23: getfield 223	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:e	Landroid/app/PendingIntent;
    //   26: ifnull +14 -> 40
    //   29: aload_0
    //   30: getfield 207	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:s	Landroid/app/AlarmManager;
    //   33: aload_0
    //   34: getfield 223	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:e	Landroid/app/PendingIntent;
    //   37: invokevirtual 260	android/app/AlarmManager:cancel	(Landroid/app/PendingIntent;)V
    //   40: aload_0
    //   41: getfield 228	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:o	Landroid/content/BroadcastReceiver;
    //   44: ifnull +11 -> 55
    //   47: aload_0
    //   48: aload_0
    //   49: getfield 228	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:o	Landroid/content/BroadcastReceiver;
    //   52: invokevirtual 264	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   55: aload_0
    //   56: getfield 136	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:u	Lcom/avast/android/mobilesecurity/app/fileshield/p;
    //   59: ifnull +15 -> 74
    //   62: aload_0
    //   63: getfield 136	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:u	Lcom/avast/android/mobilesecurity/app/fileshield/p;
    //   66: invokevirtual 267	com/avast/android/mobilesecurity/app/fileshield/p:interrupt	()V
    //   69: aload_0
    //   70: aconst_null
    //   71: putfield 136	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:u	Lcom/avast/android/mobilesecurity/app/fileshield/p;
    //   74: aload_0
    //   75: getfield 97	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:k	Lcom/avast/android/mobilesecurity/app/fileshield/u;
    //   78: ifnull +15 -> 93
    //   81: aload_0
    //   82: getfield 97	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:k	Lcom/avast/android/mobilesecurity/app/fileshield/u;
    //   85: invokevirtual 268	com/avast/android/mobilesecurity/app/fileshield/u:interrupt	()V
    //   88: aload_0
    //   89: aconst_null
    //   90: putfield 97	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:k	Lcom/avast/android/mobilesecurity/app/fileshield/u;
    //   93: aload_0
    //   94: getfield 121	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:m	Lcom/avast/android/mobilesecurity/app/fileshield/t;
    //   97: ifnull +15 -> 112
    //   100: aload_0
    //   101: getfield 121	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:m	Lcom/avast/android/mobilesecurity/app/fileshield/t;
    //   104: invokevirtual 269	com/avast/android/mobilesecurity/app/fileshield/t:interrupt	()V
    //   107: aload_0
    //   108: aconst_null
    //   109: putfield 121	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:m	Lcom/avast/android/mobilesecurity/app/fileshield/t;
    //   112: aload_0
    //   113: getfield 108	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:l	Lcom/avast/android/mobilesecurity/app/fileshield/j;
    //   116: ifnull +15 -> 131
    //   119: aload_0
    //   120: getfield 108	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:l	Lcom/avast/android/mobilesecurity/app/fileshield/j;
    //   123: invokevirtual 270	com/avast/android/mobilesecurity/app/fileshield/j:interrupt	()V
    //   126: aload_0
    //   127: aconst_null
    //   128: putfield 108	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:l	Lcom/avast/android/mobilesecurity/app/fileshield/j;
    //   131: aload_0
    //   132: getfield 90	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	Ljava/util/HashMap;
    //   135: astore_1
    //   136: aload_1
    //   137: monitorenter
    //   138: aload_0
    //   139: getfield 90	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	Ljava/util/HashMap;
    //   142: invokevirtual 274	java/util/HashMap:values	()Ljava/util/Collection;
    //   145: invokeinterface 280 1 0
    //   150: astore_3
    //   151: aload_3
    //   152: invokeinterface 286 1 0
    //   157: ifeq +29 -> 186
    //   160: aload_3
    //   161: invokeinterface 290 1 0
    //   166: checkcast 292	com/avast/android/mobilesecurity/app/fileshield/d
    //   169: invokevirtual 295	com/avast/android/mobilesecurity/app/fileshield/d:stopWatching	()V
    //   172: aload_3
    //   173: invokeinterface 298 1 0
    //   178: goto -27 -> 151
    //   181: astore_2
    //   182: aload_1
    //   183: monitorexit
    //   184: aload_2
    //   185: athrow
    //   186: aload_0
    //   187: getfield 90	com/avast/android/mobilesecurity/app/fileshield/FileShieldService:f	Ljava/util/HashMap;
    //   190: invokevirtual 301	java/util/HashMap:clear	()V
    //   193: aload_1
    //   194: monitorexit
    //   195: return
    //
    // Exception table:
    //   from	to	target	type
    //   138	184	181	finally
    //   186	195	181	finally
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    int i1 = 1;
    if (!this.n.ac())
    {
      stopSelf();
      i1 = 2;
    }
    while (true)
    {
      return i1;
      this.n.a(this.v);
      this.s.set(3, SystemClock.elapsedRealtime() + 8000 * ExternalPowerReceiver.a(this), this.e);
      if (!this.q)
      {
        this.k.a(null);
        this.q = i1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.FileShieldService
 * JD-Core Version:    0.6.2
 */