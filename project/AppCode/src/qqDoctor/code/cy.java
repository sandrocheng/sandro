import QQPIM.ReqHeader;
import QQPIM.RespHeader;
import QQPIM.VerifyReq;
import QQPIM.VerifyResp;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.qq.jce.wup.ObjectCreateException;
import com.qq.jce.wup.UniPacket;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpEntity;

public final class cy
  implements do
{
  public dl a = null;
  public Handler b = null;
  public boolean c = false;
  private Context d = null;
  private int e = 0;
  private String f = "";
  private String g = "";

  public cy(Context paramContext, Handler paramHandler)
  {
    this.d = paramContext;
    this.b = paramHandler;
  }

  private boolean a(InputStream paramInputStream)
  {
    UniPacket localUniPacket = de.a(paramInputStream);
    boolean bool;
    if (localUniPacket == null)
    {
      Message localMessage4 = this.b.obtainMessage(12292, 103, 0);
      this.b.sendMessage(localMessage4);
      bool = false;
    }
    while (true)
    {
      return bool;
      try
      {
        localVerifyResp = (VerifyResp)localUniPacket.get("sinfo");
        if (localVerifyResp == null)
        {
          Message localMessage3 = this.b.obtainMessage(12292, 103, 0);
          this.b.sendMessage(localMessage3);
          bool = true;
        }
      }
      catch (ObjectCreateException localObjectCreateException)
      {
        while (true)
        {
          VerifyResp localVerifyResp = null;
          continue;
          int i = localVerifyResp.getHeader().getResult();
          if (i != 0)
          {
            Message localMessage2 = this.b.obtainMessage(12293, i, 0);
            this.b.sendMessage(localMessage2);
          }
          else
          {
            Message localMessage1 = this.b.obtainMessage(12292, 101, 0);
            this.b.sendMessage(localMessage1);
          }
        }
      }
    }
  }

  private byte[] b(String paramString1, String paramString2)
  {
    VerifyReq localVerifyReq = new VerifyReq();
    ReqHeader localReqHeader = da.a(paramString1);
    Object localObject;
    if (localReqHeader == null)
    {
      localVerifyReq = null;
      localObject = null;
      if (localVerifyReq != null)
        break label57;
    }
    while (true)
    {
      return localObject;
      localVerifyReq.setHeader(localReqHeader);
      if (paramString2 == null)
        paramString2 = "";
      localVerifyReq.setVerifyCode(paramString2);
      break;
      label57: UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("mobile");
      localUniPacket.setFuncName("checkVerifyCode");
      localUniPacket.put("cinfo", localVerifyReq);
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

  public final void a(int paramInt, HttpEntity paramHttpEntity)
  {
    if (this.c)
    {
      Message localMessage4 = this.b.obtainMessage(12292, 104, 0);
      this.b.sendMessage(localMessage4);
    }
    while (true)
    {
      return;
      if ((200 != paramInt) || (paramHttpEntity == null))
      {
        this.e = (1 + this.e);
        if (3 <= this.e)
          this.e = 0;
        for (int i = 0; ; i = 1)
        {
          if (i != 0)
            break label115;
          Message localMessage1 = this.b.obtainMessage(12291, paramInt, 0);
          this.b.sendMessage(localMessage1);
          break;
          a(this.f, this.g);
        }
      }
      else
      {
        try
        {
          label115: a(paramHttpEntity.getContent());
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException.printStackTrace();
          Message localMessage3 = this.b.obtainMessage(12292, 103, 0);
          this.b.sendMessage(localMessage3);
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          Message localMessage2 = this.b.obtainMessage(12292, 103, 0);
          this.b.sendMessage(localMessage2);
        }
      }
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    if (this.a == null)
      this.a = new dl(this);
    this.a.f = this.d;
    byte[] arrayOfByte = b(paramString1, paramString2);
    if (arrayOfByte == null)
    {
      Message localMessage = this.b.obtainMessage(12292, 103, 0);
      this.b.sendMessage(localMessage);
    }
    while (true)
    {
      return;
      this.f = paramString1;
      this.g = paramString2;
      dl localdl = this.a;
      localdl.c = de.c();
      localdl.d = arrayOfByte;
      localdl.b = new dn(localdl);
      localdl.b.start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cy
 * JD-Core Version:    0.6.2
 */