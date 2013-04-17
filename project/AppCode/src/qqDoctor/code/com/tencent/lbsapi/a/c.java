package com.tencent.lbsapi.a;

import android.content.Context;
import java.net.UnknownHostException;
import org.apache.http.message.BasicHeader;

public class c extends Thread
{
  private static final String a = "http://lbsapi.3g.qq.com/wupbin";
  private byte[] b = null;
  private b c = null;
  private int d = 0;
  private String e = null;
  private Context f = null;

  protected void a(int paramInt)
  {
    this.d = paramInt;
  }

  protected void a(Context paramContext)
  {
    this.f = paramContext;
  }

  protected void a(b paramb)
  {
    this.c = paramb;
  }

  protected void a(String paramString)
  {
    this.e = paramString;
  }

  protected void a(byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
  }

  public void run()
  {
    if (this.c == null);
    while (true)
    {
      return;
      int i = 0;
      try
      {
        do
        {
          BasicHeader[] arrayOfBasicHeader = new BasicHeader[3];
          arrayOfBasicHeader[0] = new BasicHeader("Content-Type", "application/x-www-form-urlencoded");
          arrayOfBasicHeader[1] = new BasicHeader("UA", "ANDROID");
          arrayOfBasicHeader[2] = new BasicHeader("LBS-UIN", this.e);
          byte[] arrayOfByte = d.a("http://lbsapi.3g.qq.com/wupbin", this.b, "POST", arrayOfBasicHeader, this.f);
          if (this.c != null)
            this.c.a(this.d, arrayOfByte, arrayOfByte.length);
          j = 0;
        }
        while (j == 1);
        this.f = null;
        this.c = null;
        try
        {
          finalize();
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
      catch (e locale)
      {
        while (true)
        {
          if (this.c != null)
            this.c.a(this.d, -1, "HTTP数据错误");
          j = 0;
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        while (true)
          if (i < 1)
          {
            i++;
            j = 1;
          }
          else
          {
            if (this.c != null)
              this.c.a(this.d, -1, "HTTP数据错误");
            j = 0;
          }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        while (true)
          if (i < 1)
          {
            i++;
            j = 1;
          }
          else
          {
            if (this.c != null)
              this.c.a(this.d, -1, "HTTP数据错误");
            j = 0;
          }
      }
      catch (Exception localException)
      {
        while (true)
        {
          if (localException.getCause() != null);
          localException.printStackTrace();
          if (this.c != null)
            this.c.a(this.d, -1, "HTTP数据错误");
          int j = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.a.c
 * JD-Core Version:    0.6.2
 */