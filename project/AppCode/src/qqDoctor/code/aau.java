import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.Iterator;
import java.util.List;

public class aau extends BaseService
{
  private static boolean h = false;
  private static boolean i = false;
  private static boolean j = false;
  private Context a;
  private SoftwareManager b;
  private jt c;
  private ho d;
  private kd e;
  private abe f;
  private boolean g = true;
  private Handler k = new aav(this, TMSApplication.getApplicaionContext().getMainLooper());
  private BroadcastReceiver l = new abb(this);
  private BroadcastReceiver m = new abc(this);

  private void a(String paramString)
  {
    int n = 0;
    while (true)
    {
      try
      {
        String[] arrayOfString = paramString.split(";");
        int i1 = arrayOfString.length;
        if (n < i1)
        {
          String str = arrayOfString[n];
          if (!str.equals(""))
          {
            this.c.a.a("sw_cache_apkmanager_download_1", "appPath=?", new String[] { str });
            this.c.a.a("sw_cache_apkmanager_other_1", "appPath=?", new String[] { str });
            if (this.e.a.getInt("apk_count", 0) > 0)
            {
              kd localkd = this.e;
              int i2 = -1 + this.e.a.getInt("apk_count", 0);
              localkd.b.putInt("apk_count", i2).commit();
            }
          }
        }
        else
        {
          List localList = this.f.c.b(0);
          localList.addAll(this.f.c.b(1));
          this.f.a(localList);
          return;
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
      n++;
    }
  }

  private void a(List<kw> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      try
      {
        new aba(paramList).start();
      }
      finally
      {
      }
    }
  }

  private void b(String paramString)
  {
    if (this.c != null)
    {
      this.c.a.a("sw_cache_mysoftware_1", "pkgName=?", new String[] { paramString });
      kw localkw1 = a.a(this.b.getAppInfo(paramString, 121), false);
      if (localkw1 != null)
      {
        localkw1.b(0);
        if (localkw1 != null)
          this.c.a("sw_cache_mysoftware_1", localkw1);
        jt localjt = this.c;
        Iterator localIterator = localjt.a(localjt.j, null, null, "id ASC").iterator();
        while (localIterator.hasNext())
        {
          kw localkw2 = (kw)localIterator.next();
          if (localkw2.getPackageName().hashCode() == paramString.hashCode())
            if (localkw2.getVersionCode() <= localkw1.getVersionCode())
            {
              this.c.a.a("sw_cache_mysoftware_update_1", "pkgName=?", new String[] { paramString });
              kd localkd = this.e;
              int n = -1 + this.e.a.getInt("update_app_count", 0);
              localkd.b.putInt("update_app_count", n).commit();
            }
            else if (localkw2.getVersionCode() > localkw1.getVersionCode())
            {
              this.c.a.a("sw_cache_mysoftware_update_1", "pkgName=?", new String[] { paramString });
              this.c.a("sw_cache_mysoftware_update_1", localkw1);
            }
        }
      }
    }
  }

  private void c(String paramString)
  {
    if (this.c != null)
    {
      List localList = this.c.a("sw_cache_mysoftware_1", "pkgName = ?", new String[] { paramString }, null);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          if ((((kw)localIterator.next()).isSystemApp()) && (this.e.a.getInt("system_app_count", 0) >= 0))
          {
            kd localkd3 = this.e;
            int i2 = -1 + this.e.a.getInt("system_app_count", 0);
            localkd3.b.putInt("system_app_count", i2).commit();
          }
          while (true)
          {
            this.c.a.a("sw_cache_mysoftware_1", "pkgName=?", new String[] { paramString });
            if (this.c.a.a("sw_cache_mysoftware_update_1", "pkgName=?", new String[] { paramString }) <= 0)
              break;
            kd localkd2 = this.e;
            int i1 = -1 + this.e.a.getInt("update_app_count", 0);
            localkd2.b.putInt("update_app_count", i1).commit();
            break;
            if (this.e.a.getInt("third_party_app_count", 0) >= 0)
            {
              kd localkd1 = this.e;
              int n = -1 + this.e.a.getInt("third_party_app_count", 0);
              localkd1.b.putInt("third_party_app_count", n).commit();
            }
          }
        }
      }
    }
  }

  private void d()
  {
    try
    {
      new Thread(new aaz(this)).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void d(boolean paramBoolean)
  {
    try
    {
      new aaw(this, paramBoolean).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void e(boolean paramBoolean)
  {
    try
    {
      new aay(this, paramBoolean).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.d = ho.a();
    this.e = new kd();
    this.f = new abe();
    this.b = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.c = new jt();
    paramContext.registerReceiver(this.l, new IntentFilter("com.tencent.qqpimsecure.CACHE"));
    paramContext.registerReceiver(this.m, new IntentFilter("com.tencent.qqpimsecure.ACTION_STOP_LOADING"));
  }

  public void onDestory()
  {
    super.onDestory();
    this.a.unregisterReceiver(this.l);
    this.a.unregisterReceiver(this.m);
  }

  public void onStart(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    String str1 = paramIntent.getStringExtra("extra_action_type");
    String str2 = paramIntent.getStringExtra("extra_action_package_name");
    jt localjt;
    Cursor localCursor;
    if ((str1 != null) && (str2 != null))
    {
      if (str1 != "action_type_package_add")
        break label299;
      if (this.c != null)
      {
        localjt = this.c;
        String str3 = "SELECT count(*) FROM " + "sw_cache_mysoftware_1";
        localCursor = localjt.a.a(str3);
        if (!localCursor.moveToNext())
          break label329;
      }
    }
    label129: label148: label299: label329: for (int n = localCursor.getInt(0); ; n = 0)
    {
      if (localCursor != null)
        localCursor.close();
      localjt.a.b();
      int i1;
      if (n > 0)
      {
        i1 = 1;
        if (i1 != 0)
          break label148;
      }
      while (true)
      {
        this.g = true;
        break;
        i1 = 0;
        break label129;
        kw localkw = a.a(this.b.getAppInfo(str2, 121), false);
        if (localkw != null)
        {
          localkw.b(0);
          if (localkw != null)
            this.c.a("sw_cache_mysoftware_1", localkw);
          if (localkw.isSystemApp())
          {
            kd localkd2 = this.e;
            int i3 = 1 + this.e.a.getInt("system_app_count", 0);
            localkd2.b.putInt("system_app_count", i3).commit();
          }
          else
          {
            kd localkd1 = this.e;
            int i2 = 1 + this.e.a.getInt("third_party_app_count", 0);
            localkd1.b.putInt("third_party_app_count", i2).commit();
            continue;
            if (str1 == "action_type_package_remove")
              c(str2);
            else if (str1 == "action_type_package_reinstall")
              b(str2);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aau
 * JD-Core Version:    0.6.2
 */