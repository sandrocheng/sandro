import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.List;

final class zr
  implements Runnable
{
  zr(zq paramzq)
  {
  }

  public final void run()
  {
    zq localzq1 = this.a;
    ki localki = (ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
    jp localjp = new jp("smslog", "mms_pdu", "mms_parts");
    if (!localzq1.h)
    {
      localzq1.d = localki.a();
      if (!localzq1.h)
      {
        localzq1.e = localjp.a();
        if (!localzq1.h)
          if (localzq1.d == null)
            break label495;
      }
    }
    label495: for (int i = 0 + localzq1.d.size(); ; i = 0)
    {
      if (localzq1.e != null)
        i += localzq1.e.size();
      if ((localzq1.g != null) && (localzq1.f))
      {
        Message localMessage = localzq1.g.obtainMessage();
        localMessage.what = 0;
        localMessage.arg1 = i;
        localzq1.g.sendMessage(localMessage);
      }
      if (this.a.e != null)
        while (this.a.e.size() > 0)
        {
          long l3 = System.currentTimeMillis();
          if (this.a.h)
            break;
          zq.a(this.a, this.a.e, true);
          long l4 = System.currentTimeMillis();
          if (l4 - l3 < this.a.i)
            try
            {
              Thread.sleep(this.a.i - (l4 - l3));
            }
            catch (Exception localException2)
            {
            }
          else
            Thread.yield();
        }
      this.a.e = null;
      if (this.a.d != null)
        while (this.a.d.size() > 0)
        {
          long l1 = System.currentTimeMillis();
          if (this.a.h)
            break;
          zq.a(this.a, this.a.d, false);
          long l2 = System.currentTimeMillis();
          if (l2 - l1 < this.a.i)
            try
            {
              Thread.sleep(this.a.i - (l2 - l1));
            }
            catch (Exception localException1)
            {
            }
          else
            Thread.yield();
        }
      this.a.d = null;
      if ((this.a.g != null) && (this.a.f))
        this.a.g.sendEmptyMessage(2);
      zq localzq2 = this.a;
      if (localzq2.d != null)
      {
        localzq2.d.clear();
        localzq2.d = null;
      }
      if (localzq2.e != null)
      {
        localzq2.e.clear();
        localzq2.e = null;
      }
      zq.c = null;
      this.a.f = false;
      this.a.h = false;
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zr
 * JD-Core Version:    0.6.2
 */