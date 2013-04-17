import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.android.mms.MmsConfig;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.pdu.AcknowledgeInd;
import com.google.android.mms.pdu.NotifyRespInd;
import com.google.android.mms.pdu.PduComposer;
import com.google.android.mms.pdu.PduParser;
import com.google.android.mms.pdu.RetrieveConf;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.module.aresengine.IMmsTransactionHelper;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicReference;

public final class bvg
  implements IMmsTransactionHelper
{
  private Context a;
  private ConnectivityManager b;
  private PowerManager.WakeLock c;
  private volatile int d = 0;
  private String e = "enableMMS";
  private bvg.a f;
  private HandlerThread g;

  public bvg(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    this.g = new HandlerThread("Mms Hanlder");
    this.g.start();
    this.f = new bvg.a(this.g.getLooper());
  }

  private static int a(String paramString)
  {
    try
    {
      InetAddress localInetAddress = InetAddress.getByName(paramString);
      byte[] arrayOfByte = localInetAddress.getAddress();
      i = (0xFF & arrayOfByte[3]) << 24 | (0xFF & arrayOfByte[2]) << 16 | (0xFF & arrayOfByte[1]) << 8 | 0xFF & arrayOfByte[0];
      return i;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      while (true)
        int i = -1;
    }
  }

  private byte[] a(String paramString1, bvh parambvh, byte[] paramArrayOfByte, String paramString2)
    throws NetWorkException
  {
    Object localObject1 = null;
    int i = 2;
    if (paramString1 == null)
      throw new NetWorkException(-1057, "mmsc url is null!");
    Context localContext;
    int i1;
    ConnectivityManager localConnectivityManager4;
    if (parambvh == null)
    {
      localContext = this.a;
      ConnectivityManager localConnectivityManager3 = this.b;
      if (SDKUtil.getSDKVersion() <= 7)
        break label175;
      i1 = i;
      if (!localConnectivityManager3.getNetworkInfo(i1).isConnected())
        break label497;
      localConnectivityManager4 = this.b;
      if (SDKUtil.getSDKVersion() <= 7)
        break label181;
    }
    String str;
    int n;
    label162: label175: label181: for (int i2 = i; ; i2 = 0)
    {
      str = localConnectivityManager4.getNetworkInfo(i2).getExtraInfo();
      parambvh = new bvh(localContext, str);
      try
      {
        if (!parambvh.d())
          break label241;
        n = a(parambvh.b());
        if (n != -1)
          break label187;
        throw new NetWorkException(-1062, "Cannot establish route for " + paramString1 + ": Unknown host");
      }
      finally
      {
      }
      if (localObject1 != null)
        localObject1.d();
      throw localObject2;
      i1 = 0;
      break;
    }
    label187: ConnectivityManager localConnectivityManager2 = this.b;
    label201: label241: int j;
    ConnectivityManager localConnectivityManager1;
    if (SDKUtil.getSDKVersion() > 7)
      if (!localConnectivityManager2.requestRouteToHost(i, n))
      {
        throw new NetWorkException(-1056, "Cannot establish route to proxy " + n);
        j = a(Uri.parse(paramString1).getHost());
        if (j == -1)
          throw new NetWorkException(-1062, "Cannot establish route for " + paramString1 + ": Unknown host");
        localConnectivityManager1 = this.b;
        if (SDKUtil.getSDKVersion() <= 7)
          break label509;
      }
    while (true)
    {
      if (!localConnectivityManager1.requestRouteToHost(i, j))
        throw new NetWorkException(-1056, "Cannot establish route to " + j + " for " + paramString1);
      btg localbtg = btg.a(paramString1, parambvh.d(), parambvh.b(), parambvh.c());
      try
      {
        localbtg.b(paramString2);
        if ("POST".equals(paramString2))
        {
          if (paramArrayOfByte != null)
            localbtg.a(paramArrayOfByte);
          localbtg.a("Content-Type", "application/vnd.wap.mms-message");
          localbtg.a("Accept", "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic");
        }
        int k = localbtg.a();
        Object localObject4 = null;
        if (200 == k)
        {
          AtomicReference localAtomicReference = new AtomicReference();
          int m = localbtg.a(localAtomicReference);
          localObject4 = null;
          if (m == 0)
          {
            byte[] arrayOfByte = (byte[])localAtomicReference.get();
            localObject4 = arrayOfByte;
          }
        }
        if (localbtg != null)
          localbtg.d();
        return localObject4;
      }
      finally
      {
        localObject1 = localbtg;
      }
      break label162;
      label497: str = null;
      break;
      i = 0;
      break label201;
      label509: i = 0;
    }
  }

  private boolean b()
  {
    int i = 0;
    int j = beginMmsConnectivity(this.e);
    int m;
    int k;
    label47: boolean bool1;
    if (j == 1)
    {
      m = i + 1;
      if (i < 5);
    }
    else
    {
      if (j == 0)
        break label101;
      ConnectivityManager localConnectivityManager = this.b;
      if (SDKUtil.getSDKVersion() <= 7)
        break label95;
      k = 2;
      boolean bool2 = localConnectivityManager.getNetworkInfo(k).isConnected();
      bool1 = false;
      if (bool2)
        break label101;
    }
    while (true)
    {
      while (true)
      {
        return bool1;
        try
        {
          Thread.sleep(1500L);
          i = m;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
          i = m;
        }
      }
      break;
      label95: k = 0;
      break label47;
      label101: this.f.removeMessages(0);
      this.f.sendMessageDelayed(this.f.obtainMessage(0), 30000L);
      bool1 = true;
    }
  }

  private void c()
  {
    try
    {
      if (this.c == null)
      {
        this.c = ((PowerManager)this.a.getSystemService("power")).newWakeLock(1, "MMS Connectivity");
        this.c.setReferenceCounted(false);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a()
  {
    if (this.g != null)
    {
      this.g.quit();
      this.g = null;
    }
  }

  public final int beginMmsConnectivity(String paramString)
  {
    c();
    this.e = paramString;
    int i = this.b.startUsingNetworkFeature(0, paramString);
    switch (i)
    {
    default:
      i = -1;
    case 0:
    case 1:
    }
    while (true)
    {
      return i;
      this.c.acquire();
    }
  }

  public final int retrieveMmsContent(SmsEntity paramSmsEntity)
  {
    int i = -1057;
    int j = -1000;
    while (true)
    {
      try
      {
        this.f.removeMessages(1);
        this.d = (1 + this.d);
        if (paramSmsEntity == null)
          return i;
        boolean bool1 = b();
        if (!bool1)
        {
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1052;
          continue;
        }
        byte[] arrayOfByte1 = paramSmsEntity.b();
        if (arrayOfByte1 == null)
        {
          this.d = (-1 + this.d);
          if (this.d != 0)
            continue;
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
          continue;
        }
        String str1 = new String(arrayOfByte1);
        Context localContext = this.a;
        ConnectivityManager localConnectivityManager1 = this.b;
        if (SDKUtil.getSDKVersion() > 7)
        {
          m = 2;
          boolean bool2 = localConnectivityManager1.getNetworkInfo(m).isConnected();
          String str2 = null;
          if (bool2)
          {
            ConnectivityManager localConnectivityManager2 = this.b;
            if (SDKUtil.getSDKVersion() <= 7)
              continue;
            n = 2;
            str2 = localConnectivityManager2.getNetworkInfo(n).getExtraInfo();
          }
          byte[] arrayOfByte2 = a(str1, new bvh(localContext, str2), null, "GET");
          j = -4000;
          if (arrayOfByte2 == null)
            break label556;
          RetrieveConf localRetrieveConf = (RetrieveConf)new PduParser(arrayOfByte2).parse();
          paramSmsEntity.protocolType = 1;
          paramSmsEntity.date = (1000L * localRetrieveConf.getDate());
          paramSmsEntity.body = "";
          if (paramSmsEntity.date <= 0L)
            paramSmsEntity.date = System.currentTimeMillis();
          paramSmsEntity.mmsData.a(localRetrieveConf);
          i = 0;
          this.d = (-1 + this.d);
          if (this.d != 0)
            continue;
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
          continue;
        }
        int m = 0;
        continue;
        int n = 0;
        continue;
      }
      catch (NetWorkException localNetWorkException)
      {
        localNetWorkException.printStackTrace();
        int k = localNetWorkException.getErrCode();
        i = k;
        this.d = (-1 + this.d);
        if (this.d != 0)
          continue;
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
        continue;
      }
      catch (Exception localException)
      {
        i = j - 2;
        this.d = (-1 + this.d);
        if (this.d != 0)
          continue;
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
        continue;
      }
      finally
      {
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
      }
      label556: i = j;
    }
  }

  public final int sendAcknowledgeInd(SmsEntity paramSmsEntity)
  {
    while (true)
    {
      String str2;
      try
      {
        this.f.removeMessages(1);
        this.d = (1 + this.d);
        if (paramSmsEntity == null)
        {
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1057;
          return i;
        }
        boolean bool1 = b();
        if (!bool1)
        {
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1052;
          continue;
        }
        byte[] arrayOfByte1 = paramSmsEntity.c();
        if (arrayOfByte1 == null)
        {
          this.d = (-1 + this.d);
          int n = this.d;
          i = 0;
          if (n != 0)
            continue;
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
          i = 0;
          continue;
        }
        AcknowledgeInd localAcknowledgeInd = new AcknowledgeInd(18, arrayOfByte1);
        byte[] arrayOfByte2 = new PduComposer(this.a, localAcknowledgeInd).make();
        Context localContext = this.a;
        ConnectivityManager localConnectivityManager1 = this.b;
        bvh localbvh;
        byte[] arrayOfByte3;
        if (SDKUtil.getSDKVersion() > 7)
        {
          k = 2;
          boolean bool2 = localConnectivityManager1.getNetworkInfo(k).isConnected();
          String str1 = null;
          if (bool2)
          {
            ConnectivityManager localConnectivityManager2 = this.b;
            if (SDKUtil.getSDKVersion() <= 7)
              continue;
            m = 2;
            str1 = localConnectivityManager2.getNetworkInfo(m).getExtraInfo();
          }
          localbvh = new bvh(localContext, str1);
          str2 = localbvh.a();
          if ((str2 != null) && (!MmsConfig.getNotifyWapMMSC()))
            break label607;
          arrayOfByte3 = paramSmsEntity.b();
          if (arrayOfByte3 != null)
            continue;
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1057;
          continue;
        }
        int k = 0;
        continue;
        int m = 0;
        continue;
        str3 = new String(arrayOfByte3);
        byte[] arrayOfByte4 = a(str3, localbvh, arrayOfByte2, "POST");
        i = 0;
        if (arrayOfByte4 != null)
        {
          this.d = (-1 + this.d);
          if (this.d != 0)
            continue;
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
          continue;
        }
        i = -4000;
        continue;
      }
      catch (NetWorkException localNetWorkException)
      {
        int j = localNetWorkException.getErrCode();
        i = j;
        this.d = (-1 + this.d);
        if (this.d != 0)
          continue;
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
        continue;
      }
      catch (Exception localException)
      {
        int i = -1002;
        this.d = (-1 + this.d);
        if (this.d != 0)
          continue;
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
        continue;
      }
      finally
      {
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
      }
      label607: String str3 = str2;
    }
  }

  public final int sendNotifyRespInd(int paramInt, SmsEntity paramSmsEntity)
  {
    try
    {
      this.f.removeMessages(1);
      this.d = (1 + this.d);
      if (paramSmsEntity == null)
      {
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
        i = -1057;
      }
      byte[] arrayOfByte1;
      while (true)
      {
        return i;
        boolean bool1 = b();
        if (!bool1)
        {
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1052;
        }
        else
        {
          arrayOfByte1 = paramSmsEntity.c();
          if (arrayOfByte1 != null)
            break;
          this.d = (-1 + this.d);
          if (this.d == 0)
          {
            this.f.removeMessages(1);
            this.f.sendEmptyMessageDelayed(1, 30000L);
          }
          i = -1057;
        }
      }
      NotifyRespInd localNotifyRespInd = new NotifyRespInd(18, arrayOfByte1, paramInt);
      byte[] arrayOfByte2 = new PduComposer(this.a, localNotifyRespInd).make();
      Context localContext = this.a;
      ConnectivityManager localConnectivityManager1 = this.b;
      int k;
      label234: String str1;
      ConnectivityManager localConnectivityManager2;
      if (SDKUtil.getSDKVersion() > 7)
      {
        k = 2;
        boolean bool2 = localConnectivityManager1.getNetworkInfo(k).isConnected();
        str1 = null;
        if (bool2)
        {
          localConnectivityManager2 = this.b;
          if (SDKUtil.getSDKVersion() <= 7)
            break label376;
        }
      }
      bvh localbvh;
      byte[] arrayOfByte3;
      label376: for (int m = 2; ; m = 0)
      {
        str1 = localConnectivityManager2.getNetworkInfo(m).getExtraInfo();
        localbvh = new bvh(localContext, str1);
        str2 = localbvh.a();
        if ((str2 != null) && (!MmsConfig.getNotifyWapMMSC()))
          break label393;
        arrayOfByte3 = paramSmsEntity.b();
        if (arrayOfByte3 != null)
          break label382;
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
        i = -1057;
        break;
        k = 0;
        break label234;
      }
      label382: String str2 = new String(arrayOfByte3);
      label393: byte[] arrayOfByte4 = a(str2, localbvh, arrayOfByte2, "POST");
      i = 0;
      if (arrayOfByte4 != null);
      while (true)
      {
        this.d = (-1 + this.d);
        if (this.d != 0)
          break;
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
        break;
        i = -4000;
      }
    }
    catch (InvalidHeaderValueException localInvalidHeaderValueException)
    {
      while (true)
      {
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
        i = -1057;
      }
    }
    catch (NetWorkException localNetWorkException)
    {
      while (true)
      {
        int j = localNetWorkException.getErrCode();
        i = j;
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int i = -1002;
        this.d = (-1 + this.d);
        if (this.d == 0)
        {
          this.f.removeMessages(1);
          this.f.sendEmptyMessageDelayed(1, 30000L);
        }
      }
    }
    finally
    {
      this.d = (-1 + this.d);
      if (this.d == 0)
      {
        this.f.removeMessages(1);
        this.f.sendEmptyMessageDelayed(1, 30000L);
      }
    }
  }

  final class a extends Handler
  {
    public a(Looper arg2)
    {
      super();
    }

    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 0:
      case 1:
      }
      while (true)
      {
        return;
        if (bvg.this.beginMmsConnectivity(bvg.a(bvg.this)) == 0)
        {
          sendMessageDelayed(obtainMessage(0), 30000L);
          continue;
          if (bvg.b(bvg.this) == 0)
            bvg.c(bvg.this);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvg
 * JD-Core Version:    0.6.2
 */