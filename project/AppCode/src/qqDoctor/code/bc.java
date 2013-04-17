import WUPSYNC.AccInfo;
import WUPSYNC.PimPwdSetReq;
import WUPSYNC.PimPwdSetResp;
import com.qq.jce.wup.UniPacket;
import java.util.concurrent.atomic.AtomicInteger;

public final class bc
{
  public final int a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      String str = cx.a(paramString4);
      PimPwdSetReq localPimPwdSetReq = new PimPwdSetReq(new AccInfo(1, paramString1, paramString2, paramString3), str);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("UTF-8");
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("wupsync");
      localUniPacket.setFuncName("setPimPwd");
      localUniPacket.put("req", localPimPwdSetReq);
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
        dk.b("PimPwdUtils", "setPimPwd constructPimPwdSetRequestData exception e=" + localException.toString());
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
          PimPwdSetResp localPimPwdSetResp = (PimPwdSetResp)a.a(arrayOfByte2);
          if (localPimPwdSetResp == null)
          {
            j = -1;
          }
          else
          {
            int i = localPimPwdSetResp.getResult();
            dk.b("PimPwdUtils", "handleSetPimPwdResp result=" + i);
            j = a.a(i);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bc
 * JD-Core Version:    0.6.2
 */