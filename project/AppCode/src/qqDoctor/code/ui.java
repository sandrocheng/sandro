import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.android.mms.NetworkConnectivityListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IMmsTransactionHelper;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import java.util.HashSet;
import java.util.concurrent.LinkedBlockingQueue;

public final class ui
{
  public static ui g;
  IMmsTransactionHelper a = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getMmsTransactionHelper();
  LinkedBlockingQueue<ml> b;
  Thread c;
  public HashSet<Integer> d;
  boolean e;
  int f;
  private NetworkConnectivityListener h;
  private Handler i = new Handler(new uj(this));

  public ui()
  {
    if (this.d == null)
      this.d = new HashSet();
    if (this.b == null)
      this.b = new LinkedBlockingQueue();
    this.h = new NetworkConnectivityListener();
    this.h.registerHandler(this.i, 1);
    this.h.startListening(TMSApplication.getApplicaionContext());
  }

  public final void a()
  {
    try
    {
      this.e = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(ml paramml)
  {
    if ((paramml == null) || (paramml.a == null));
    while (true)
    {
      return;
      new StringBuilder().append(this.d.size()).toString();
      if ((!this.d.contains(new Integer(paramml.b))) && (this.b.offer(paramml)))
      {
        this.d.add(new Integer(paramml.b));
        this.e = false;
        if ((this.c == null) || (!this.c.isAlive()))
        {
          this.c = new Thread(new ui.a());
          this.c.start();
        }
      }
    }
  }

  public final class a
    implements Runnable
  {
    public a()
    {
    }

    public final void run()
    {
      ml localml;
      if (!ui.this.b.isEmpty())
      {
        localml = (ml)ui.this.b.peek();
        if ((localml.a != null) && (localml.a.protocolType == 1) && (localml.a.mmsData != null) && (localml.a.mmsData.mmsNotificationIndHeader != null))
          break label97;
        if ((localml.a == null) || (localml.a.mmsData == null));
      }
      label97: 
      while (localml.a.mmsData.mmsNotificationIndHeader.contentLocation == null)
        return;
      ui localui1 = ui.this;
      mk localmk = localml.a;
      String str1 = u.a().a(0);
      if ((str1 != null) && (str1.equals(localmk.f)));
      String str2 = u.a().a(1);
      if ((str2 != null) && (str2.equals(localmk.f)));
      for (int i = 1; ; i = 0)
        while (true)
        {
          String str3 = u.a().b(i);
          int j = localui1.a.beginMmsConnectivity(str3);
          if (j == 1);
          try
          {
            ui localui3 = ui.this;
            localui3.f = (1 + localui3.f);
            if (ui.this.f == 50)
            {
              j = -1;
              ui.this.f = 0;
              new StringBuilder("open mmsnet ").append(ui.this.f).toString();
              if (j != 0)
                break label679;
              ui.this.f = 0;
              localui2 = ui.this;
              int k = localui2.a.retrieveMmsContent(localml.a);
              localui2.b.poll();
              localui2.d.remove(new Integer(localml.b));
              if (k == 0)
              {
                int m = localml.b;
                if (new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts").a(m) == null)
                  break label789;
                n = 1;
                if (n != 0)
                  break label526;
              }
              Intent localIntent2 = new Intent();
              localIntent2.setAction("com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE");
              localIntent2.putExtra("id", localml.b);
              localIntent2.putExtra("smslog", localml.a);
              TMSApplication.getApplicaionContext().sendBroadcast(localIntent2);
              ha.a(TMSApplication.getApplicaionContext(), 2131427477);
              if (!ui.this.e)
                break;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
            {
              label526: jp localjp;
              synchronized (ui.this.b)
              {
                ui localui2;
                ui.this.b.clear();
                ui.this.d.clear();
                new StringBuilder().append(ui.this.d.size()).toString();
                break;
                Thread.sleep(1000L);
                continue;
                localInterruptedException = localInterruptedException;
                localInterruptedException.printStackTrace();
                continue;
                if (new hq(2).b(localml.a.phonenum))
                {
                  localjp = new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts");
                  localjp.b(localml.a);
                  localml.a.date = System.currentTimeMillis();
                  localml.a.mmsData.mmsNotificationIndHeader = null;
                  localml.a.l = false;
                  localjp.a(localml.a, true);
                  Intent localIntent3 = new Intent();
                  localIntent3.setAction("com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_SUCCESS");
                  localIntent3.putExtra("id", localml.b);
                  localIntent3.putExtra("smslog", localml.a);
                  TMSApplication.getApplicaionContext().sendBroadcast(localIntent3);
                  localui2.a.sendAcknowledgeInd(localml.a);
                  continue;
                  label679: if ((j == 1) || (j == 0))
                    continue;
                  ui.this.b.poll();
                  ui.this.d.remove(new Integer(localml.b));
                  Intent localIntent1 = new Intent();
                  localIntent1.setAction("com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE");
                  localIntent1.putExtra("id", localml.b);
                  localIntent1.putExtra("smslog", localml.a);
                  TMSApplication.getApplicaionContext().sendBroadcast(localIntent1);
                }
              }
              continue;
              label789: int n = 0;
            }
          }
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ui
 * JD-Core Version:    0.6.2
 */