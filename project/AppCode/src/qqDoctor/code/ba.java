import QQPIM.LoginReq;
import QQPIM.LoginResp;
import QQPIM.RespHeader;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.qq.jce.wup.UniPacket;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.regex.PatternSyntaxException;
import org.apache.http.HttpEntity;

public final class ba
  implements cd, do
{
  private String a;
  private byte[] b;
  private String c;
  private ca d = null;
  private dl e = null;
  private Context f = null;
  private Handler g = null;
  private int h = 0;
  private boolean i = false;
  private boolean j = false;

  public ba(Context paramContext, Handler paramHandler)
  {
    this.f = paramContext;
    this.g = paramHandler;
    if (paramContext != null)
      de.b = paramContext.getApplicationContext();
  }

  private int a(String paramString, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    cw.d();
    cw.g();
    this.i = false;
    if (this.e == null)
      this.e = new dl(this);
    this.e.f = this.f;
    this.a = paramString;
    this.b = paramArrayOfByte;
    this.j = paramBoolean;
    byte[] arrayOfByte = c(paramString, paramArrayOfByte);
    if (arrayOfByte == null);
    for (int k = 201; ; k = 0)
    {
      return k;
      dl localdl = this.e;
      localdl.c = de.c();
      localdl.d = arrayOfByte;
      localdl.b = new dn(localdl);
      localdl.b.start();
    }
  }

  private boolean a(InputStream paramInputStream)
  {
    UniPacket localUniPacket = de.a(paramInputStream);
    boolean bool;
    if (localUniPacket == null)
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        localLoginResp = (LoginResp)localUniPacket.get("sinfo");
        if (localLoginResp == null)
        {
          Message localMessage3 = this.g.obtainMessage(12292, 103, 0);
          this.g.sendMessage(localMessage3);
          bool = true;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          dk.c("MobileLoginModel", "processInputStream(), " + localException.toString());
          LoginResp localLoginResp = null;
          continue;
          int k = localLoginResp.getHeader().getResult();
          if (k != 0)
          {
            Message localMessage2 = this.g.obtainMessage(12293, k, 0);
            this.g.sendMessage(localMessage2);
          }
          else
          {
            this.c = localLoginResp.getLoginKey();
            if (this.j)
            {
              cw localcw = cw.d();
              localcw.a(this.c);
              localcw.b(this.a);
              localcw.c();
              cw.g();
            }
            Message localMessage1 = this.g.obtainMessage(8193, k, 0);
            this.g.sendMessage(localMessage1);
          }
        }
      }
    }
  }

  private byte[] c(String paramString, byte[] paramArrayOfByte)
  {
    LoginReq localLoginReq = new LoginReq();
    localLoginReq.setHeader(da.a(paramString));
    localLoginReq.setMd5pwd(cx.a(paramArrayOfByte));
    UniPacket localUniPacket = new UniPacket();
    localUniPacket.setEncodeName("UTF-8");
    localUniPacket.setRequestId(1);
    localUniPacket.setServantName("mobile");
    localUniPacket.setFuncName("mobileLogin");
    localUniPacket.put("cinfo", localLoginReq);
    byte[] arrayOfByte1 = localUniPacket.encode();
    try
    {
      byte[] arrayOfByte3 = a.b(arrayOfByte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
      arrayOfByte2 = arrayOfByte3;
      return arrayOfByte2;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        dk.c("MobileLoginModel", "constructLoginData(), " + localUnsupportedEncodingException.toString());
        byte[] arrayOfByte2 = null;
      }
    }
  }

  public final int a(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = de.a(paramString2);
    this.j = false;
    return a(this.a, this.b, false);
  }

  public final int a(String paramString, boolean paramBoolean)
  {
    return 0;
  }

  public final int a(String paramString, byte[] paramArrayOfByte)
  {
    return 0;
  }

  public final int a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    int k = 10;
    dk.b("MobileLoginModel", "getSavedAccount enter");
    String str = a.a(de.d(this.d.a(ca.a.v)), (de.a(de.b) + "h^J9o`").getBytes());
    if ((str != null) && (str.length() > 0));
    while (true)
    {
      try
      {
        String[] arrayOfString = str.split(";");
        if (arrayOfString != null)
        {
          n = arrayOfString.length;
          if (n > k)
          {
            int i1 = 0;
            if (i1 >= k)
            {
              dk.b("MobileLoginModel", "getSavedAccount leave ret =" + k);
              m = k;
              return m;
            }
            int i2 = arrayOfString[i1].indexOf(":");
            paramArrayOfString1[i1] = arrayOfString[i1].substring(0, i2);
            paramArrayOfString2[i1] = de.e(arrayOfString[i1].substring(i2 + 1));
            i1++;
            continue;
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        dk.c("MobileLoginModel", "getSavedAccount(), " + localNullPointerException.getMessage());
        m = 0;
        continue;
      }
      catch (PatternSyntaxException localPatternSyntaxException)
      {
        dk.c("MobileLoginModel", "getSavedAccount(), " + localPatternSyntaxException.getMessage());
        m = 0;
        continue;
      }
      catch (Throwable localThrowable)
      {
        int n;
        dk.c("MobileLoginModel", "getSavedAccount(), " + localThrowable.getMessage());
        int m = 0;
        continue;
        k = n;
        continue;
      }
      k = 0;
    }
  }

  public final void a(int paramInt, HttpEntity paramHttpEntity)
  {
    boolean bool = true;
    if (this.i)
    {
      cw.d().a();
      Message localMessage5 = this.g.obtainMessage(8193, -1000, 0);
      this.g.sendMessage(localMessage5);
    }
    while (true)
    {
      return;
      if ((200 != paramInt) || (paramHttpEntity == null))
      {
        this.h = (1 + this.h);
        if (3 <= this.h)
        {
          this.h = 0;
          bool = false;
        }
        while (true)
        {
          if (bool)
            break label124;
          Message localMessage1 = this.g.obtainMessage(12291, -1, 0);
          this.g.sendMessage(localMessage1);
          break;
          a(this.a, this.b, bool);
        }
      }
      else
      {
        try
        {
          label124: this.h = 0;
          if (!a(paramHttpEntity.getContent()))
          {
            Message localMessage4 = this.g.obtainMessage(12292, 103, 0);
            this.g.sendMessage(localMessage4);
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          dk.c("MobileLoginModel", "binaryPostResponse(), " + localIllegalStateException.toString());
          Message localMessage3 = this.g.obtainMessage(12292, 103, 0);
          this.g.sendMessage(localMessage3);
        }
        catch (IOException localIOException)
        {
          dk.c("MobileLoginModel", "binaryPostResponse(), " + localIOException.toString());
          Message localMessage2 = this.g.obtainMessage(12292, 103, 0);
          this.g.sendMessage(localMessage2);
        }
      }
    }
  }

  public final void a(String paramString)
  {
    this.d.a(ca.a.c, paramString);
  }

  public final boolean a()
  {
    return this.d.d(ca.a.d);
  }

  public final int b(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = de.a(paramString2);
    this.j = true;
    return a(this.a, this.b, true);
  }

  public final int b(String paramString, byte[] paramArrayOfByte)
  {
    return a(paramString, paramArrayOfByte, true);
  }

  public final String b()
  {
    return this.d.a(ca.a.c);
  }

  public final String c()
  {
    return a.a(de.d(this.d.a(ca.a.u)), (de.a(de.b) + "h^J9o`").getBytes());
  }

  public final String d()
  {
    return null;
  }

  public final void e()
  {
    dk.b("MobileLoginModel", "stop");
    this.i = true;
  }

  public final boolean f()
  {
    return this.i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ba
 * JD-Core Version:    0.6.2
 */