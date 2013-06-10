package org.antivirus.core.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Field;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.b.a;
import org.antivirus.core.b.g;
import org.antivirus.core.telephony.TelephonyInfo;

public final class u extends v
{
  protected String a;

  private boolean c(Context paramContext)
  {
    TelephonyInfo localTelephonyInfo = new TelephonyInfo(paramContext);
    localTelephonyInfo.grabLineAndSimNumbers(paramContext);
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Object localObject1 = "";
    try
    {
      if (!TextUtils.isEmpty(Build.MODEL))
      {
        String str9 = Build.MODEL;
        localObject1 = str9;
      }
      localObject2 = localObject1;
    }
    catch (Exception localException4)
    {
      try
      {
        String str8 = localTelephonyManager.getNetworkOperatorName();
        str1 = str8;
      }
      catch (Exception localException4)
      {
        try
        {
          label76: String str7 = localTelephonyManager.getNetworkCountryIso();
          str2 = str7;
        }
        catch (Exception localException4)
        {
          try
          {
            label87: if (!TextUtils.isEmpty(Build.VERSION.RELEASE))
            {
              str3 = Build.VERSION.RELEASE;
              label101: new StringBuilder().append(str3).append(":Antivirus Pro 3.0.3.174757").toString();
              localObject3 = "";
            }
          }
          catch (Exception localException4)
          {
            try
            {
              Object localObject2;
              String str1;
              String str2;
              String str3;
              Object localObject3;
              if (Integer.parseInt(Build.VERSION.SDK) > 3)
              {
                String str6 = Build.class.getField("MANUFACTURER").get(null).toString();
                localObject3 = str6;
              }
              label156: g localg = new g(paramContext);
              Object[] arrayOfObject1 = new Object[12];
              arrayOfObject1[0] = ab.a(localTelephonyInfo.getSimNumber());
              arrayOfObject1[1] = ab.a(localObject2);
              arrayOfObject1[2] = ab.a((String)localObject3);
              arrayOfObject1[3] = ab.a(str1);
              arrayOfObject1[4] = ab.a(str2);
              arrayOfObject1[5] = ab.a(Integer.toString(this.h.o));
              arrayOfObject1[6] = ab.a("3.0.3");
              arrayOfObject1[7] = ab.a("174757");
              arrayOfObject1[8] = ab.a(localg.c());
              arrayOfObject1[9] = ab.a(Integer.toString(this.h.p));
              if (this.h.a());
              StringBuilder localStringBuilder;
              for (String str4 = "PRO"; ; str4 = "FREE")
              {
                arrayOfObject1[10] = ab.a(str4);
                arrayOfObject1[11] = ab.a(Build.VERSION.RELEASE);
                this.f = arrayOfObject1;
                localStringBuilder = new StringBuilder();
                for (Object localObject4 : this.f)
                  localStringBuilder.append('|').append(localObject4.toString());
                localException1 = localException1;
                Logger.log(localException1);
                localObject2 = localObject1;
                break;
                localException2 = localException2;
                Logger.log(localException2);
                str1 = "";
                break label76;
                localException3 = localException3;
                Logger.log(localException3);
                str2 = "";
                break label87;
                str3 = "noversion";
                break label101;
                localException4 = localException4;
                str3 = "emptyversion";
                break label101;
              }
              this.a = localStringBuilder.toString();
              String str5 = this.i.getDeviceRegisterLastParams();
              if ((!TextUtils.isEmpty(str5)) && (str5.equals(this.a)));
              for (boolean bool = false; ; bool = true)
              {
                return bool;
                SharedPreferences.Editor localEditor = this.i.mPref.edit();
                this.i.setDeviceRegisterLastParams("", localEditor, Boolean.valueOf(false));
                localEditor.commit();
              }
            }
            catch (Exception localException5)
            {
              break label156;
            }
          }
        }
      }
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    if (this.f == null)
      c(paramContext);
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return c(paramContext);
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    SharedPreferences.Editor localEditor = this.i.mPref.edit();
    this.i.setDeviceRegisterLastParams(this.a, localEditor, Boolean.valueOf(false));
    localEditor.commit();
    return true;
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1001;
  }

  public final String d()
  {
    return "Device.update5";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.u
 * JD-Core Version:    0.6.2
 */