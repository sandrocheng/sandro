package a.a.a.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.aw;
import com.avast.android.generic.util.t;
import com.avast.android.generic.y;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements Thread.UncaughtExceptionHandler
{
  private static a a = new a();
  private Context b;
  private Thread.UncaughtExceptionHandler c;
  private String d;
  private String e = null;
  private c f = null;
  private boolean g = true;

  public static a a()
  {
    return a;
  }

  private c b()
  {
    while (true)
    {
      try
      {
        PackageInfo localPackageInfo;
        if (this.f == null)
        {
          this.f = new c(null);
          localPackageInfo = d();
        }
        try
        {
          ae localae = (ae)ad.a(this.b, ae.class);
          if (localae != null)
          {
            this.f.a = localae.s();
            if ((this.f.a == null) || ("".equals(this.f.a)))
              this.f.a = "N/A";
            if ((this.b.getPackageName().equals("com.avast.android.vps")) || (this.b.getPackageName().equals("com.avast.android.mobilesecurity")))
            {
              this.f.d = localPackageInfo.versionName;
              this.f.b = localPackageInfo.packageName;
              this.f.c = localPackageInfo.versionCode;
              this.f.o = c();
              this.f.e = Build.VERSION.RELEASE;
              this.f.f = Build.VERSION.CODENAME;
              this.f.g = Build.MODEL;
              this.f.h = Build.ID;
              this.f.i = Build.TIME;
              this.f.j = Build.TYPE;
              this.f.k = Build.TAGS;
              this.f.l = Build.BOARD;
              this.f.m = Build.BRAND;
              this.f.n = Build.DEVICE;
              c localc = this.f;
              return localc;
            }
          }
          else
          {
            this.f.a = "N/A";
            continue;
          }
        }
        catch (Exception localException)
        {
          this.f.a = "N/A";
          continue;
        }
      }
      finally
      {
      }
      aw localaw = aw.a(this.b, y.c);
      this.f.d = (localaw.b() + "." + localaw.c() + "." + localaw.e());
    }
  }

  private String b(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    for (Throwable localThrowable = paramThrowable.getCause(); localThrowable != null; localThrowable = localThrowable.getCause())
      localThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.close();
    return localStringWriter.toString();
  }

  private long c()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  private void c(String paramString)
  {
    new Thread(new b(this, paramString)).start();
  }

  private PackageInfo d()
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

  public a a(Context paramContext)
  {
    this.b = paramContext;
    if (this.g)
      this.c = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
    return this;
  }

  public a a(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void a(String paramString, Throwable paramThrowable)
  {
    try
    {
      JSONObject localJSONObject = b().a();
      try
      {
        localJSONObject.put("exception", paramThrowable.getClass().getName());
        if (paramString != null);
        String str;
        for (Object localObject = paramString + "(" + paramThrowable.getMessage() + ")"; ; localObject = str)
        {
          localJSONObject.put("message", localObject);
          localJSONObject.put("stacktrace", b(paramThrowable));
          c(localJSONObject.toString(1));
          t.a("AvastGeneric", "Handled uncaught exception (" + paramString + ")", paramThrowable);
          break;
          str = paramThrowable.getMessage();
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void a(Throwable paramThrowable)
  {
    try
    {
      a(null, paramThrowable);
      label6: return;
    }
    catch (Throwable localThrowable)
    {
      break label6;
    }
  }

  public a b(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThrowable);
    this.c.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */