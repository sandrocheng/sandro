import QQPIM.CtyCodeResp;
import QQPIM.RegReq;
import QQPIM.RegResp;
import QQPIM.ReqHeader;
import QQPIM.RespHeader;
import QQPIM.StatusReq;
import QQPIM.StatusResp;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.qq.jce.wup.ObjectCreateException;
import com.qq.jce.wup.UniPacket;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.apache.http.HttpEntity;

public final class cz
  implements cg, do
{
  private Context a = null;
  private dl b = null;
  private Handler c = null;
  private int d = -1;
  private String e = "";
  private String f = "";
  private byte g = -1;
  private df h = null;
  private int i = 30;
  private int j = 0;
  private String k = "com.tencent.qqpim.action_register_sms_sended_to_activity";

  public cz(Context paramContext, Handler paramHandler)
  {
    this.a = paramContext;
    this.c = paramHandler;
  }

  private boolean a(InputStream paramInputStream)
  {
    UniPacket localUniPacket = de.a(paramInputStream);
    boolean bool;
    if (localUniPacket == null)
    {
      Message localMessage14 = this.c.obtainMessage(12292, 103, 0);
      this.c.sendMessage(localMessage14);
      bool = false;
      return bool;
    }
    if (this.d == 0);
    while (true)
    {
      try
      {
        localRegResp2 = (RegResp)localUniPacket.get("sinfo");
        if (localRegResp2 == null)
        {
          Message localMessage13 = this.c.obtainMessage(12292, 103, 0);
          this.c.sendMessage(localMessage13);
          bool = true;
        }
      }
      catch (ObjectCreateException localObjectCreateException4)
      {
        RegResp localRegResp2 = null;
        continue;
        int n = localRegResp2.getHeader().getResult();
        if (n != 0)
        {
          Message localMessage12 = this.c.obtainMessage(12293, n, 0);
          this.c.sendMessage(localMessage12);
          continue;
        }
        String str1 = localRegResp2.getAccessNum();
        String str2 = localRegResp2.getVerifyCode();
        int i1 = localRegResp2.getRegMethod();
        if (1 == i1)
        {
          if ((str1 == null) || (str2 == null) || (str1.length() <= 0) || (str2.length() <= 0))
          {
            if (this.h == null)
              this.h = new df(this);
            df localdf2 = this.h;
            if ((localdf2.c == null) || (localdf2.d == null))
              continue;
            localdf2.c.postDelayed(localdf2.d, 1000L);
            continue;
          }
          Intent localIntent = new Intent("com.tencent.qqpim.action_register_sms_sended");
          Bundle localBundle = new Bundle();
          localBundle.putString("intent_key_action_when_register_sms_sended", this.k);
          localIntent.putExtras(localBundle);
          PendingIntent localPendingIntent = PendingIntent.getBroadcast(de.b, 0, localIntent, 134217728);
          ap.a().a(str1, str2, localPendingIntent);
          continue;
        }
        if (2 != i1)
          continue;
        Message localMessage11 = this.c.obtainMessage(12292, 106, 0);
        this.c.sendMessage(localMessage11);
        continue;
      }
      if ((1 == this.d) || (3 == this.d))
        try
        {
          localStatusResp = (StatusResp)localUniPacket.get("sinfo");
          if (localStatusResp == null)
          {
            Message localMessage3 = this.c.obtainMessage(12292, 105, 0);
            this.c.sendMessage(localMessage3);
          }
        }
        catch (ObjectCreateException localObjectCreateException1)
        {
          StatusResp localStatusResp;
          while (true)
            localStatusResp = null;
          int m = localStatusResp.getHeader().getResult();
          if (m != 0)
          {
            if (-1 != this.d)
            {
              b();
              continue;
            }
            Message localMessage2 = this.c.obtainMessage(12293, m, 0);
            this.c.sendMessage(localMessage2);
            continue;
          }
          if (3 == this.d)
          {
            this.e = localStatusResp.getMobileno();
            if ((this.e != null) && (this.e.startsWith("+86")))
            {
              da.b("+86");
              da.c(this.e.substring(3));
            }
          }
          if (this.h != null)
          {
            df localdf1 = this.h;
            if ((localdf1.c != null) && (localdf1.d != null))
              localdf1.c.removeCallbacks(localdf1.d);
          }
          Message localMessage1 = this.c.obtainMessage(12292, 101, 0);
          this.c.sendMessage(localMessage1);
        }
      else if (2 == this.d)
        try
        {
          localRegResp1 = (RegResp)localUniPacket.get("sinfo");
          if (localRegResp1 == null)
          {
            Message localMessage10 = this.c.obtainMessage(12292, 103, 0);
            this.c.sendMessage(localMessage10);
          }
        }
        catch (ObjectCreateException localObjectCreateException3)
        {
          RegResp localRegResp1;
          while (true)
            localRegResp1 = null;
          if (localRegResp1.getHeader().getResult() != 0)
          {
            Message localMessage9 = this.c.obtainMessage(12292, 109, 0);
            this.c.sendMessage(localMessage9);
            continue;
          }
          if (1 == localRegResp1.getRegMethod())
          {
            Message localMessage8 = this.c.obtainMessage(12289, 107, 0);
            this.c.sendMessage(localMessage8);
            continue;
          }
          Message localMessage7 = this.c.obtainMessage(12289, 108, 0);
          this.c.sendMessage(localMessage7);
        }
      else if (4 == this.d)
        try
        {
          localCtyCodeResp = (CtyCodeResp)localUniPacket.get("sinfo");
          if (localCtyCodeResp == null)
          {
            Message localMessage6 = this.c.obtainMessage(12295, null);
            this.c.sendMessage(localMessage6);
          }
        }
        catch (ObjectCreateException localObjectCreateException2)
        {
          CtyCodeResp localCtyCodeResp;
          while (true)
            localCtyCodeResp = null;
          if (localCtyCodeResp.getResult() != 0)
          {
            Message localMessage5 = this.c.obtainMessage(12295, null);
            this.c.sendMessage(localMessage5);
          }
          else
          {
            Map localMap = localCtyCodeResp.getCodelist();
            Message localMessage4 = this.c.obtainMessage(12295, localMap);
            this.c.sendMessage(localMessage4);
          }
        }
    }
  }

  private byte[] a(String paramString)
  {
    ReqHeader localReqHeader = da.a(paramString);
    Object localObject = null;
    if (localReqHeader == null);
    while (true)
    {
      return localObject;
      StatusReq localStatusReq = new StatusReq();
      localStatusReq.setHeader(localReqHeader);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("mobile");
      localUniPacket.setFuncName("getRegStatus");
      localUniPacket.put("cinfo", localStatusReq);
      byte[] arrayOfByte1 = localUniPacket.encode();
      try
      {
        byte[] arrayOfByte2 = a.b(arrayOfByte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        localObject = arrayOfByte2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        localObject = null;
      }
    }
  }

  private void b()
  {
    byte[] arrayOfByte;
    if (-1 != this.d)
    {
      this.d = 3;
      arrayOfByte = a(this.e);
      if (arrayOfByte != null)
        break label50;
      Message localMessage = this.c.obtainMessage(12292, 105, 0);
      this.c.sendMessage(localMessage);
    }
    while (true)
    {
      return;
      label50: dl localdl = this.b;
      localdl.c = de.c();
      localdl.d = arrayOfByte;
      localdl.b = new dn(localdl);
      localdl.b.start();
    }
  }

  private byte[] b(String paramString1, String paramString2, byte paramByte)
  {
    RegReq localRegReq1 = new RegReq();
    ReqHeader localReqHeader = da.a(paramString1);
    RegReq localRegReq2;
    Object localObject;
    if (localReqHeader == null)
    {
      localRegReq2 = null;
      if (localRegReq2 != null)
        break label84;
      localObject = null;
    }
    while (true)
    {
      return localObject;
      localRegReq1.setHeader(localReqHeader);
      String str = cx.a(de.a(paramString2));
      if (str == null)
        str = "";
      localRegReq1.setMd5pwd(str);
      localRegReq1.setRegMethod(paramByte);
      localRegReq2 = localRegReq1;
      break;
      label84: UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("mobile");
      localUniPacket.setFuncName("validateMobile");
      localUniPacket.put("cinfo", localRegReq2);
      byte[] arrayOfByte1 = localUniPacket.encode();
      try
      {
        byte[] arrayOfByte2 = a.b(arrayOfByte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        localObject = arrayOfByte2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        localObject = null;
      }
    }
  }

  private void c()
  {
    this.d = -1;
    this.e = "";
    this.f = "";
    this.g = -1;
    if (this.h != null)
    {
      df localdf = this.h;
      if ((localdf.c != null) && (localdf.d != null))
        localdf.c.removeCallbacks(localdf.d);
    }
    this.i = 30;
  }

  private byte[] d()
  {
    RegReq localRegReq = new RegReq();
    ReqHeader localReqHeader = da.a();
    Object localObject;
    if (localReqHeader == null)
    {
      localRegReq = null;
      localObject = null;
      if (localRegReq != null)
        break label52;
    }
    while (true)
    {
      return localObject;
      localRegReq.setHeader(localReqHeader);
      localRegReq.setMd5pwd("");
      localRegReq.setRegMethod((byte)1);
      break;
      label52: UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("mobile");
      localUniPacket.setFuncName("validateMobile");
      localUniPacket.put("cinfo", localRegReq);
      byte[] arrayOfByte1 = localUniPacket.encode();
      try
      {
        byte[] arrayOfByte2 = a.b(arrayOfByte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        localObject = arrayOfByte2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        localObject = null;
      }
    }
  }

  public final void a()
  {
    this.i = (-1 + this.i);
    if (this.i <= 0)
    {
      this.d = -1;
      String str = this.e;
      Message localMessage2 = this.c.obtainMessage(12292, 102, 0, str);
      this.c.sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      int m = this.i;
      Message localMessage1 = this.c.obtainMessage(12292, 110, m);
      this.c.sendMessage(localMessage1);
      if (this.h == null)
        this.h = new df(this);
      df localdf = this.h;
      if ((localdf.c != null) && (localdf.d != null))
        localdf.c.postDelayed(localdf.d, 1000L);
    }
  }

  public final void a(int paramInt, HttpEntity paramHttpEntity)
  {
    if (-1 == this.d);
    while (true)
    {
      return;
      if ((200 != paramInt) || (paramHttpEntity == null))
      {
        this.j = (1 + this.j);
        if (3 <= this.j)
          this.j = 0;
        for (int m = 0; m == 0; m = 0)
        {
          c();
          Message localMessage1 = this.c.obtainMessage(12291, paramInt, 0);
          this.c.sendMessage(localMessage1);
          break;
          switch (this.d)
          {
          case 1:
          default:
          case 3:
          case 2:
          case 0:
          }
        }
        b();
        while (true)
        {
          m = 1;
          break;
          if (this.b == null)
            this.b = new dl(this);
          this.b.f = this.a;
          byte[] arrayOfByte = d();
          if (arrayOfByte == null)
          {
            Message localMessage2 = this.c.obtainMessage(12292, 103, 0);
            this.c.sendMessage(localMessage2);
          }
          else
          {
            this.d = 2;
            this.e = "";
            this.f = "";
            dl localdl = this.b;
            localdl.c = de.c();
            localdl.d = arrayOfByte;
            localdl.b = new dn(localdl);
            localdl.b.start();
            continue;
            a(this.e, this.f, this.g);
          }
        }
      }
      try
      {
        this.j = 0;
        a(paramHttpEntity.getContent());
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localIllegalStateException.printStackTrace();
        Message localMessage5 = this.c.obtainMessage(12292, 103, 0);
        this.c.sendMessage(localMessage5);
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        Message localMessage4 = this.c.obtainMessage(12292, 103, 0);
        this.c.sendMessage(localMessage4);
      }
      catch (Exception localException)
      {
        Message localMessage3 = this.c.obtainMessage(12292, 103, 0);
        this.c.sendMessage(localMessage3);
      }
    }
  }

  public final void a(String paramString1, String paramString2, byte paramByte)
  {
    if (this.b == null)
      this.b = new dl(this);
    this.b.f = this.a;
    c();
    byte[] arrayOfByte = b(paramString1, paramString2, paramByte);
    if (arrayOfByte == null)
    {
      Message localMessage = this.c.obtainMessage(12292, 103, 0);
      this.c.sendMessage(localMessage);
    }
    while (true)
    {
      return;
      this.d = 0;
      this.e = paramString1;
      this.f = paramString2;
      this.g = paramByte;
      dl localdl = this.b;
      localdl.c = de.c();
      localdl.d = arrayOfByte;
      localdl.b = new dn(localdl);
      localdl.b.start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cz
 * JD-Core Version:    0.6.2
 */