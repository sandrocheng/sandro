import WUPSYNC.AccInfo;
import WUPSYNC.LoginStatReq;
import WUPSYNC.LoginStatResp;
import com.qq.jce.wup.UniPacket;
import java.util.concurrent.atomic.AtomicInteger;

public final class bb
{
  public static int a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      AccInfo localAccInfo = new AccInfo(paramInt, paramString1, paramString2, paramString3);
      LoginStatReq localLoginStatReq = new LoginStatReq();
      localLoginStatReq.setUserInfo(localAccInfo);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("wupsync");
      localUniPacket.setFuncName("loginStatusQuery");
      localUniPacket.put("req", localLoginStatReq);
      byte[] arrayOfByte3 = a.b(localUniPacket.encode());
      arrayOfByte1 = arrayOfByte3;
      if (arrayOfByte1 == null)
      {
        j = -4;
        return j;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int j;
        dk.b("LoginStateProtocol", "checkLoginState constructCheckLoginStateData exception e=" + localException.toString());
        byte[] arrayOfByte1 = null;
        continue;
        AtomicInteger localAtomicInteger = new AtomicInteger();
        byte[] arrayOfByte2 = de.a(arrayOfByte1, bl.a(), localAtomicInteger);
        if (localAtomicInteger.get() != 200)
        {
          j = -1;
        }
        else
        {
          LoginStatResp localLoginStatResp = (LoginStatResp)a.a(arrayOfByte2);
          if (localLoginStatResp == null)
          {
            j = -1;
          }
          else
          {
            int i = localLoginStatResp.getResult();
            dk.b("LoginStateProtocol", "handleCheckLoginStateResp result=" + i);
            j = a.a(i);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bb
 * JD-Core Version:    0.6.2
 */