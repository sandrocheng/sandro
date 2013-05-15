package a.a.a.a.a;

import android.b.a.a;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import com.avast.android.generic.util.t;
import java.util.Locale;
import org.apache.http.client.params.HttpClientParams;

public class d
{
  private a a;
  private Context b;

  public d(Context paramContext)
  {
    this.b = paramContext;
  }

  private void d()
  {
    if (this.a == null)
    {
      this.a = a.a(c());
      HttpClientParams.setRedirecting(this.a.getParams(), true);
    }
  }

  private PackageInfo e()
  {
    PackageManager localPackageManager = this.b.getPackageManager();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(this.b.getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        PackageInfo localPackageInfo1 = new PackageInfo();
      }
    }
  }

  public a a()
  {
    d();
    return this.a;
  }

  public void b()
  {
    if (this.a != null)
      this.a.a();
    this.a = null;
  }

  public String c()
  {
    PackageInfo localPackageInfo = e();
    String str1 = Settings.Secure.getString(this.b.getContentResolver(), "android_id");
    String str2 = Build.VERSION.RELEASE;
    String str3 = Build.ID;
    String str4 = Build.MODEL;
    String str5 = Locale.getDefault().toString();
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = localPackageInfo.versionName;
    arrayOfObject[1] = Integer.valueOf(localPackageInfo.versionCode);
    arrayOfObject[2] = str5;
    arrayOfObject[3] = str1;
    arrayOfObject[4] = str4;
    arrayOfObject[5] = str2;
    arrayOfObject[6] = str3;
    String str6 = String.format("avast/%s (%d;%s) ID/%s HW/%s Android/%s (%s)", arrayOfObject);
    t.a("AvastGeneric", "HTTP UA: " + str6);
    return str6;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.a.d
 * JD-Core Version:    0.6.2
 */