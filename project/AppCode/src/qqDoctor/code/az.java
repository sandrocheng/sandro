import android.content.Context;
import android.os.Environment;
import com.tencent.tccsync.LoginUtil;
import com.tencent.tccsync.LoginUtilException;
import java.util.regex.PatternSyntaxException;

public final class az
  implements cd
{
  private String a;
  private String b;
  private byte[] c;
  private byte[] d;
  private String e;
  private String f;
  private String g;
  private String h;
  private int i;
  private LoginUtil j = new LoginUtil();
  private String k;
  private ca l = null;
  private boolean m = false;

  public az(Context paramContext)
  {
    g();
    this.l = bl.f();
    if (paramContext != null)
      de.b = paramContext.getApplicationContext();
  }

  private int a(String paramString, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    this.m = false;
    int n;
    while (true)
    {
      byte[] arrayOfByte1;
      try
      {
        this.b = paramString;
        this.c = paramArrayOfByte;
        if (this.m)
        {
          n = -1000;
          break;
        }
        this.j.makeLoginRequestPackageMd5(this.a, paramString, paramArrayOfByte, this.d, this.e, this.f, this.g, this.h, 0, this.i);
        if (this.m)
        {
          n = -1000;
          break;
        }
        String str = this.j.getPostUrl();
        dd localdd = null;
        try
        {
          localdd = cj.a().a(str);
          byte[] arrayOfByte2 = this.j.getPostBody();
          if (localdd != null)
          {
            boolean bool1 = this.m;
            if (!bool1);
          }
          else
          {
            if (localdd != null)
            {
              localdd.d();
              cj.a().a(localdd);
            }
            n = -100;
            break;
          }
          localdd.a(0);
          localdd.a(arrayOfByte2);
          boolean bool2 = this.m;
          if (bool2)
          {
            if (localdd != null)
            {
              localdd.d();
              cj.a().a(localdd);
            }
            n = -1000;
          }
          else
          {
            byte[] arrayOfByte3 = localdd.c();
            arrayOfByte1 = arrayOfByte3;
            if (localdd != null)
            {
              localdd.d();
              cj.a().a(localdd);
            }
            if (arrayOfByte1 == null)
            {
              g();
              this.j.clear();
              dk.b("LoginModel", "[loginByMd5] recv err");
              n = -100;
            }
          }
        }
        catch (Exception localException)
        {
          dk.c("LoginModel", "loginByMd5(), " + localException.toString());
          if (localdd == null)
            break label545;
          localdd.d();
          cj.a().a(localdd);
          arrayOfByte1 = null;
          continue;
        }
        finally
        {
          if (localdd != null)
          {
            localdd.d();
            cj.a().a(localdd);
          }
        }
      }
      catch (LoginUtilException localLoginUtilException)
      {
        dk.c("LoginModel", "loginByMd5(), " + localLoginUtilException.getMessage());
        n = -101;
        break;
        if (this.m)
        {
          n = -1000;
        }
        else
        {
          n = this.j.solveLoginResponPackge(arrayOfByte1, arrayOfByte1.length);
          if (this.m)
          {
            cw.d().a();
            n = -1000;
            cw.d();
            cw.g();
          }
        }
      }
      catch (Throwable localThrowable)
      {
        dk.c("LoginModel", "loginByMd5(), " + localThrowable.getMessage());
        n = -101;
      }
      if (((n == 0) || (1003 == n)) && (paramBoolean))
      {
        this.k = this.j.getKey();
        cw localcw = cw.d();
        localcw.a(this.k);
        localcw.b(this.b);
        localcw.c();
      }
      if ((n != 101) && (n != 209))
      {
        this.j.clear();
        continue;
        label545: arrayOfByte1 = null;
      }
    }
    return n;
  }

  private void g()
  {
    boolean bool1 = true;
    this.b = "";
    this.c = null;
    this.d = null;
    this.e = "";
    this.a = de.b();
    boolean bool2;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      bool2 = bool1;
      if (!bool2)
        break label81;
    }
    while (true)
    {
      this.f = de.a(bool1);
      this.g = de.a();
      this.h = "";
      this.i = 16;
      return;
      bool2 = false;
      break;
      label81: bool1 = false;
    }
  }

  public final int a(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = de.a(paramString2);
    return a(paramString1, this.c, false);
  }

  public final int a(String paramString, boolean paramBoolean)
  {
    this.e = paramString;
    return a(this.b, this.c, paramBoolean);
  }

  public final int a(String paramString, byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
    if (paramString != null)
      this.b = paramString;
    return a(this.b, this.c, true);
  }

  public final int a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    int n = 10;
    dk.b("LoginModel", "getSavedAccount enter");
    String str = a.a(de.d(this.l.a(ca.a.x)), (de.a(de.b) + "h^J9o`").getBytes());
    if ((str != null) && (str.length() > 0));
    while (true)
    {
      try
      {
        String[] arrayOfString = str.split(";");
        if (arrayOfString != null)
        {
          i2 = arrayOfString.length;
          if (i2 > n)
          {
            int i3 = 0;
            if (i3 >= n)
            {
              dk.b("LoginModel", "getSavedAccount leave ret =" + n);
              i1 = n;
              return i1;
            }
            int i4 = arrayOfString[i3].indexOf(":");
            paramArrayOfString1[i3] = arrayOfString[i3].substring(0, i4);
            paramArrayOfString2[i3] = de.e(arrayOfString[i3].substring(i4 + 1));
            i3++;
            continue;
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        dk.c("LoginModel", "getSavedAccount NullPointerException " + localNullPointerException.getMessage());
        i1 = 0;
        continue;
      }
      catch (PatternSyntaxException localPatternSyntaxException)
      {
        dk.c("LoginModel", "getSavedAccount PatternSyntaxException " + localPatternSyntaxException.getMessage());
        i1 = 0;
        continue;
      }
      catch (Throwable localThrowable)
      {
        int i2;
        dk.c("LoginModel", "getSavedAccount Throwable " + localThrowable.getMessage());
        int i1 = 0;
        continue;
        n = i2;
        continue;
      }
      n = 0;
    }
  }

  public final void a(String paramString)
  {
    this.l.a(ca.a.b, paramString);
  }

  public final boolean a()
  {
    return this.l.d(ca.a.e);
  }

  public final int b(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = de.a(paramString2);
    return a(this.b, this.c, true);
  }

  public final int b(String paramString, byte[] paramArrayOfByte)
  {
    return a(paramString, paramArrayOfByte, true);
  }

  public final String b()
  {
    return this.l.a(ca.a.b);
  }

  public final String c()
  {
    return a.a(de.d(this.l.a(ca.a.w)), (de.a(de.b) + "h^J9o`").getBytes());
  }

  public final String d()
  {
    return this.j.getVerifyImageUrl();
  }

  public final void e()
  {
    dk.b("LoginModel", "stop");
    this.m = true;
  }

  public final boolean f()
  {
    return this.m;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     az
 * JD-Core Version:    0.6.2
 */