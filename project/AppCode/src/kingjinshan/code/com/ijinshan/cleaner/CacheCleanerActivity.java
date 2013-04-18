package com.ijinshan.cleaner;

import android.app.ListActivity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class CacheCleanerActivity extends ListActivity
{
  public static final String d = "com.android.settings";
  public static final String e = "com.android.settings.InstalledAppDetails";
  public static final String f = "android.settings.APPLICATION_DETAILS_SETTINGS";
  private static final String p = "PackageStats";
  private static final int q = 1;
  private static final int r = 2;
  private static final int s = 3;
  private static final int t = 4;
  private static final int u = 5;
  private static final int v = 6;
  private static final String w = "package";
  private static final String x = "com.android.settings.ApplicationPkgName";
  private static final String y = "pkg";
  private static final int z = 10000;
  private PackageManager A;
  private int B;
  private com.ijinshan.cleaner.adapter.a C = null;
  private k D = null;
  private boolean E = false;
  private boolean F = false;
  private boolean G = false;
  private com.keniu.security.a H;
  private Handler I = new b(this);
  RelativeLayout a;
  RelativeLayout b;
  List c = new ArrayList();
  g g = g.a;
  Handler h = new a(this);
  private TextView i;
  private TextView j;
  private TextView k;
  private ProgressBar l;
  private ListView m;
  private Button n;
  private List o = null;

  public static String a(long paramLong)
  {
    String str;
    float f1;
    StringBuilder localStringBuilder;
    if (paramLong >= 1024L)
    {
      str = "KB";
      f1 = (float)(paramLong / 1024.0D);
      if (f1 >= 1024.0F)
      {
        str = "MB";
        f1 /= 1024.0F;
      }
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str == null)
        break label97;
      localStringBuilder.append(str);
    }
    while (true)
    {
      return localStringBuilder.toString();
      f1 = (float)paramLong;
      str = null;
      break;
      label97: localStringBuilder.append("B");
    }
  }

  private void f()
  {
    this.j = ((TextView)findViewById(2131230960));
    this.j.setText(getString(2131427953));
    this.n = ((Button)findViewById(2131230976));
    this.i = ((TextView)findViewById(2131230963));
    this.a = ((RelativeLayout)findViewById(2131230962));
    this.b = ((RelativeLayout)findViewById(2131230981));
    this.l = ((ProgressBar)findViewById(2131230979));
    this.k = ((TextView)findViewById(2131230982));
  }

  private void g()
  {
    PackageManager localPackageManager = getPackageManager();
    List localList = localPackageManager.getInstalledPackages(0);
    this.B = (10000 / this.A.getInstalledPackages(0).size());
    int i1 = localList.size();
    int i2 = 0;
    while (true)
    {
      if ((i2 >= i1) || (this.E));
      com.ijinshan.cleaner.a.a locala;
      try
      {
        if (this.D != null)
          this.D.wait();
        if (this.F)
          return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
        ApplicationInfo localApplicationInfo = ((PackageInfo)localList.get(i2)).applicationInfo;
        Message localMessage = this.h.obtainMessage(2);
        localMessage.obj = localApplicationInfo.loadLabel(localPackageManager).toString();
        this.h.sendMessage(localMessage);
        locala = new com.ijinshan.cleaner.a.a();
        locala.a(localApplicationInfo.packageName);
        locala.a(localApplicationInfo.loadIcon(localPackageManager));
        locala.b(localApplicationInfo.loadLabel(localPackageManager).toString());
      }
      try
      {
        Method localMethod = localPackageManager.getClass().getMethod("getPackageSizeInfo", new Class[] { String.class, IPackageStatsObserver.class });
        if (i2 == i1 - 1);
        for (boolean bool = true; ; bool = false)
        {
          m localm = new m(this, locala, bool);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = locala.b();
          arrayOfObject[1] = localm;
          localMethod.invoke(localPackageManager, arrayOfObject);
          label261: i2++;
          break;
        }
      }
      catch (Exception localException)
      {
        break label261;
      }
    }
  }

  private void h()
  {
    this.a.setVisibility(8);
    this.b.setVisibility(0);
    this.k = ((TextView)findViewById(2131230982));
    this.g = g.c;
    this.n.setText(getString(2131427959));
    int i1 = this.o.size();
    long l1 = 0L;
    for (int i2 = 0; i2 < i1; i2++)
      l1 += ((com.ijinshan.cleaner.a.a)this.o.get(i2)).d();
    TextView localTextView = this.k;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a(l1);
    localTextView.setText(getString(2131427975, arrayOfObject));
  }

  private static long i()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount();
  }

  private int j()
  {
    return this.A.getInstalledPackages(0).size();
  }

  public final void a()
  {
    this.o.clear();
    this.E = false;
    this.F = false;
    this.a.setVisibility(0);
    this.b.setVisibility(8);
    this.n.setText(getString(2131427960));
    this.g = g.a;
    this.l.setProgress(0);
    this.l.setVisibility(0);
  }

  public final void a(String paramString)
  {
    Intent localIntent = new Intent();
    int i1 = Build.VERSION.SDK_INT;
    if (i1 >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramString, null));
      startActivity(localIntent);
      return;
    }
    if (i1 == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, paramString);
      break;
    }
  }

  public final void a(List paramList)
  {
    this.C = new com.ijinshan.cleaner.adapter.a(this, paramList);
    this.m.setAdapter(this.C);
  }

  public final void b()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    localaq.b(getString(2131427969));
    localaq.b(2131427542, new c(this));
    localaq.a(2131427541, new d(this));
    localaq.c().show();
  }

  public final void c()
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    localCheckBox.setChecked(false);
    ((TextView)localView.findViewById(2131231003)).setText(2131427974);
    localaq.a(localView);
    localaq.a(2131427519);
    localaq.b(2131427542, new e(this, localCheckBox));
    localaq.a(2131427541, new f(this, localCheckBox));
    localaq.c().show();
  }

  public final void d()
  {
    try
    {
      Class localClass = this.A.getClass();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = IPackageDataObserver.class;
      Method localMethod = localClass.getMethod("freeStorageAndNotify", arrayOfClass);
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      Long localLong = Long.valueOf(localStatFs.getBlockSize() * localStatFs.getBlockCount() - 1L);
      PackageManager localPackageManager = this.A;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localLong;
      arrayOfObject[1] = new j(this);
      localMethod.invoke(localPackageManager, arrayOfObject);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public final long e()
  {
    int i1 = this.o.size();
    long l1 = 0L;
    for (int i2 = 0; i2 < i1; i2++)
      l1 += ((com.ijinshan.cleaner.a.a)this.o.get(i2)).d();
    return l1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    this.o = new ArrayList();
    this.H = com.keniu.security.a.a(this);
    this.j = ((TextView)findViewById(2131230960));
    this.j.setText(getString(2131427953));
    this.n = ((Button)findViewById(2131230976));
    this.i = ((TextView)findViewById(2131230963));
    this.a = ((RelativeLayout)findViewById(2131230962));
    this.b = ((RelativeLayout)findViewById(2131230981));
    this.l = ((ProgressBar)findViewById(2131230979));
    this.k = ((TextView)findViewById(2131230982));
    this.n.setText(getString(2131427960));
    this.m = getListView();
    this.m.setOnItemClickListener(new l(this));
    a(this.o);
    this.A = getPackageManager();
    this.n.setOnClickListener(new h(this));
    this.D = new k(this);
    this.D.start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.CacheCleanerActivity
 * JD-Core Version:    0.6.2
 */