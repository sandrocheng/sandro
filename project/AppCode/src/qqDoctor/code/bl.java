import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tencent.feedback.eup.ExceptionUpload;

public class bl extends bh
  implements ca
{
  private static ca i = null;
  private static Context j = null;
  private SharedPreferences k = null;
  private SharedPreferences.Editor l = null;

  private bl(Context paramContext)
  {
    j = paramContext;
    if (paramContext != null)
      this.k = j.getSharedPreferences("SettingInfo", 0);
    if (this.k != null)
      this.l = this.k.edit();
    Context localContext = j;
    dk.b("ConfigFactory", "initEnvironment enter");
    bk.a();
    dk.b("ConfigFactory", "initEnvironment local mode envir");
    dk.b("ConfigFactory", "initLocalModeEnvir enter");
    if (new bi(localContext).b)
    {
      dk.b("ConfigFactory", "initLocalModeEnvir initReleaseEnvironment");
      dk.b("ConfigFactory", "initEnvironment initReleaseEnvironment");
      bh.f = "sync.3g.qq.com";
      bh.g = "http://jsync.3g.qq.com/android";
      bh.c = false;
      dk.b("ConfigFactory", "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=false");
      bh.b = false;
      bh.d = 4;
      bh.e = 2;
    }
    while (true)
    {
      dk.b("ConfigFactory", "initLocalModeEnvir end");
      dk.b("ConfigFactory", "initEnvironment end");
      dk.b("ConfigDao", "ExceptionReportSetting");
      try
      {
        int i1 = bh.e;
        switch (i1)
        {
        case 0:
        default:
          dk.b("ConfigDao", "ExceptionReportSetting end");
          dk.b("ConfigDao", "AdaptiveOldLocalConfig() enter");
          ca.a locala1 = ca.a.a;
          int m = this.k.getInt(locala1.a(), 0);
          dk.b("ConfigDao", "AdaptiveOldLocalConfig() localConfigVersion=" + m);
          String str1 = bh.f;
          this.l.putString(ca.a.f.a(), str1).commit();
          str2 = j.getPackageName();
          TelephonyManager localTelephonyManager = (TelephonyManager)j.getSystemService("phone");
          str3 = localTelephonyManager.getDeviceId();
          if ((str3 == null) || (str3.equals("000000000000000")))
            str3 = "123456789012345";
          if (str2 != null)
          {
            if (str2.contains("qqphonebook"))
              str3 = "PHNB:" + str3;
          }
          else
          {
            this.l.putString(ca.a.h.a(), str3);
            String str4 = localTelephonyManager.getSubscriberId();
            this.l.putString(ca.a.i.a(), str4);
          }
          break;
        case 1:
        case 2:
        }
      }
      catch (Throwable localThrowable)
      {
        try
        {
          String str2;
          label1041: 
          do
            while (true)
            {
              String str7 = j.getPackageManager().getPackageInfo(str2, 0).versionName;
              this.l.putString(ca.a.j.a(), str7);
              Integer.valueOf('￐' + str7.charAt(0)).intValue();
              Integer.valueOf('￐' + str7.charAt(2)).intValue();
              String str5 = "/data/data/" + str2 + "/files/";
              this.l.putString(ca.a.g.a(), str5);
              if (this.k.getBoolean(ca.a.k.a(), true))
                this.l.putBoolean(ca.a.k.a(), true);
              this.l.commit();
              String str6 = new bi(j).a;
              if (!TextUtils.isEmpty(str6))
                this.h = str6;
              ca.a locala2 = ca.a.m;
              int n = this.k.getInt(locala2.a(), 0);
              dk.b("ConfigDao", "initDefaultConfig() isFirstRun=" + n);
              if (n == 0)
              {
                dk.b("ConfigDao", "initDefaultConfig() init as default");
                ca.a locala3 = ca.a.a;
                this.l.putInt(locala3.a(), 2).commit();
                ca.a locala4 = ca.a.t;
                this.l.putBoolean(locala4.a(), false).commit();
                ca.a locala5 = ca.a.s;
                this.l.putBoolean(locala5.a(), true).commit();
                ca.a locala6 = ca.a.n;
                this.l.putBoolean(locala6.a(), true).commit();
              }
              return;
              if (bh.a)
              {
                dk.b("ConfigFactory", "initLocalModeEnvir initDebugEnvironmentWithReleaseServer");
                bh.f = "sync.3g.qq.com";
                bh.g = "http://jsync.3g.qq.com/android";
                bh.c = false;
                dk.b("ConfigFactory", "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=false");
                bh.b = false;
                bh.d = 4;
                bh.e = 2;
                dk.b("ConfigFactory", "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=true");
                bh.b = true;
                break;
              }
              dk.b("ConfigFactory", "initLocalModeEnvir initDebugEnvironment");
              bh.f = "newsynctest.cs0309.3g.qq.com";
              bh.g = "http://jsync.cs0309.3g.qq.com/android";
              dk.b("ConfigFactory", "initDebugServer");
              bh.c = true;
              dk.b("ConfigFactory", "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=true");
              bh.b = true;
              bh.d = 4;
              bh.e = 2;
              break;
              ExceptionUpload.setDefaultEUP(false);
              continue;
              localThrowable = localThrowable;
              dk.c("ConfigDao", "ExceptionReportSetting e=" + localThrowable.toString());
              continue;
              ExceptionUpload.setDefaultEUP(true);
              continue;
              if (str2.contains("qqpimsecure"))
              {
                str3 = "QMDOMO:" + str3;
              }
              else
              {
                if (!str2.contains("com.tencent.mm"))
                  break label1041;
                str3 = "QQWX:" + str3;
              }
            }
          while (!str2.contains("com.tencent.pengyou"));
          String str3 = "QQPY:" + str3;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            dk.c("ConfigDao", "initConfigDao(), " + localNameNotFoundException.toString());
        }
      }
    }
  }

  public static ca f()
  {
    if ((i == null) || (j == null));
    try
    {
      if ((i == null) || (j == null))
        i = new bl(de.b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a(ca.a parama)
  {
    return this.k.getString(parama.a(), "");
  }

  public final void a(ca.a parama, int paramInt)
  {
    this.l.putInt(parama.a(), paramInt).commit();
  }

  public final void a(ca.a parama, long paramLong)
  {
    this.l.putLong(parama.a(), paramLong).commit();
  }

  public final void a(ca.a parama, String paramString)
  {
    this.l.putString(parama.a(), paramString).commit();
  }

  public final boolean a(String paramString)
  {
    if (j == null)
      System.loadLibrary(paramString);
    for (boolean bool = true; ; bool = a.a(paramString, j))
      return bool;
  }

  public final int b(ca.a parama)
  {
    return this.k.getInt(parama.a(), 0);
  }

  public final long c(ca.a parama)
  {
    return this.k.getLong(parama.a(), 0L);
  }

  public final boolean d(ca.a parama)
  {
    return this.k.getBoolean(parama.a(), true);
  }

  public final String g()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bl
 * JD-Core Version:    0.6.2
 */