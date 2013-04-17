import QQPIM.ClientVersionInfo;
import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import QQPIM.ProductVersion;
import QQPIM.ServerCmdInfo;
import QQPIM.SoftUpdateInfo;
import QQPIM.TipsInfo;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class ax extends ar
{
  private z j = s.a.g();
  private boolean k;
  private ay l = new ay(this.b, "");

  public ax(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1, paramBoolean2);
  }

  public static String c(fx paramfx)
  {
    String str = null;
    if (paramfx != null)
    {
      int i = paramfx.b.size();
      str = null;
      if (i > 0)
        str = (String)((gb)paramfx.b.get(0)).d;
    }
    return str;
  }

  public final void a()
  {
  }

  protected final void a(Context paramContext, fx paramfx, aw paramaw)
  {
    if (!this.k)
    {
      String str = this.j.e();
      if ((str != null) && (str.equals(c(paramfx))));
    }
    else
    {
      e.a(paramContext, paramfx, false, paramaw);
    }
  }

  protected final void a(fx paramfx)
  {
    if ((paramfx != null) && (paramfx.b != null) && (!paramfx.b.isEmpty()) && (((gb)this.d.b.get(0)).a == 1))
    {
      this.j.e(bt.a().e());
      this.j.d(this.d.a);
    }
  }

  public final void b(fx paramfx)
  {
    this.l.a(paramfx);
  }

  public final void e()
  {
    ay localay = this.l;
    fy localfy = this.h;
    localay.c = false;
    if (localfy != null)
    {
      localfy.a.e = 0;
      Message localMessage2 = localfy.a.i.obtainMessage(1);
      localMessage2.arg1 = 1;
      localfy.a.i.sendMessage(localMessage2);
    }
    Object localObject1 = new fx();
    ((fx)localObject1).b = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new ClientVersionInfo(7, 1, "buildno=" + TMSApplication.getIntFromEnvMap("build") + "&version=" + TMSApplication.getStrFromEnvMap("softversion") + "&productid=" + TMSApplication.getIntFromEnvMap("product"), ""));
    if (localay.c);
    int i1;
    Message localMessage1;
    label224: int n;
    label247: int i;
    ServerCmdInfo localServerCmdInfo;
    for (int m = -3; ; m = -3)
    {
      if (localfy != null)
      {
        if (m == 0)
          break label1025;
        localfy.a.f = m;
        i1 = 3;
        if (-(-m % 100) != -3)
          break label827;
        i1 = 2;
        if (i1 != 0)
          break label889;
        localMessage1 = localfy.a.i.obtainMessage(6);
        localMessage1.arg1 = m;
        localfy.a.i.sendMessage(localMessage1);
        localfy.a.a();
        n = 0;
        if (n != 0)
          break label1031;
        localfy.a(null);
      }
      return;
      AtomicReference localAtomicReference = new AtomicReference();
      i = localay.b.a(localArrayList1, localAtomicReference);
      if (i != 0)
        break label1070;
      localServerCmdInfo = (ServerCmdInfo)localAtomicReference.get();
      if (!localay.c)
        break;
    }
    ArrayList localArrayList2 = localServerCmdInfo.getCloudinfos();
    CloudInfo localCloudInfo;
    Context localContext;
    Object localObject2;
    if ((localArrayList2 != null) && (localArrayList2.size() > 0))
    {
      localCloudInfo = (CloudInfo)localArrayList2.get(0);
      localContext = localay.a;
      if (localCloudInfo == null)
        localObject2 = null;
    }
    while (true)
    {
      fx localfx;
      label1025: label1031: if (localay.c)
      {
        m = -3;
        localObject1 = localObject2;
        break;
        localfx = new fx();
        localfx.b = new ArrayList();
        TipsInfo localTipsInfo = localCloudInfo.getTips();
        if (localTipsInfo != null)
        {
          localTipsInfo.getTitle();
          localfx.a = localTipsInfo.getMsg();
        }
        ArrayList localArrayList3 = localCloudInfo.getCloudcmds();
        if ((localArrayList3 == null) || (localArrayList3.size() <= 0))
          break label1063;
        CloudCmd localCloudCmd = (CloudCmd)localArrayList3.get(0);
        if (localCloudCmd.getCmdid() != 200)
          break label1063;
        int i2 = 0;
        label482: StringBuffer localStringBuffer1;
        long l2;
        if (localTipsInfo != null)
        {
          if (localTipsInfo.getAtype() == 1)
            i2 = 1;
        }
        else
        {
          gb localgb1 = new gb();
          localgb1.a = i2;
          localgb1.c = localContext.getPackageName();
          localfx.b.add(localgb1);
          byte[] arrayOfByte = localCloudCmd.getParam();
          UniAttribute localUniAttribute = new UniAttribute();
          localUniAttribute.setEncodeName("UTF-8");
          localUniAttribute.decode(arrayOfByte);
          SoftUpdateInfo localSoftUpdateInfo = (SoftUpdateInfo)localUniAttribute.getByClass("cloudcmd", new SoftUpdateInfo());
          if (localSoftUpdateInfo != null)
          {
            gb localgb2 = (gb)localfx.b.get(0);
            localgb2.b = localSoftUpdateInfo.getUrl();
            localStringBuffer1 = new StringBuffer();
            localStringBuffer1.append(localSoftUpdateInfo.getNewfeature());
            localStringBuffer1.append("\n");
            localStringBuffer1.append(localContext.getString(2131099778));
            ProductVersion localProductVersion = localSoftUpdateInfo.getNewversion();
            if (localProductVersion != null)
            {
              StringBuffer localStringBuffer2 = new StringBuffer();
              localStringBuffer2.append(localProductVersion.getPversion());
              localStringBuffer2.append(".");
              localStringBuffer2.append(localProductVersion.getCversion());
              localStringBuffer2.append(".");
              localStringBuffer2.append(localProductVersion.getHotfix());
              localgb2.d = localStringBuffer2.toString();
              localStringBuffer1.append(localStringBuffer2);
            }
            localStringBuffer1.append("\n");
            localStringBuffer1.append(localContext.getString(2131099779));
            l2 = localSoftUpdateInfo.getPkg_size() << 10;
            if (l2 != -1L)
              break label815;
          }
        }
        label815: for (String str = "0"; ; str = Formatter.formatFileSize(localContext, l2))
        {
          localStringBuffer1.append(str);
          localfx.a = localStringBuffer1.toString();
          localObject2 = localfx;
          break;
          i2 = 0;
          break label482;
        }
        label827: switch (-(1000 * (-m / 1000)))
        {
        default:
          break;
        case -5000:
        case -4000:
        case -3000:
        case -1000:
          i1 = 0;
          break;
          label889: if (i1 == 2)
          {
            localMessage1 = localfy.a.i.obtainMessage(3);
            localMessage1.obj = localfy.a.b.getString(2131099771);
            break label224;
          }
          localMessage1 = localfy.a.i.obtainMessage(3);
          localMessage1.obj = (localfy.a.b.getString(2131099773) + localfy.a.b.getString(2131099775) + " (" + localfy.a.b.getString(2131099776) + m + ")");
          break label224;
          n = 1;
          break label247;
          long l1 = System.currentTimeMillis();
          localay.d.a(l1);
          localfy.a((fx)localObject1);
          break;
        }
      }
      localObject1 = localObject2;
      m = i;
      break;
      label1063: localObject2 = localfx;
      continue;
      label1070: localObject2 = localObject1;
    }
  }

  protected final void f()
  {
    this.l.a();
  }

  public final void g()
  {
    this.k = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ax
 * JD-Core Version:    0.6.2
 */