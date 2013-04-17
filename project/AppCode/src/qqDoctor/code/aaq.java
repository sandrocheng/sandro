import QQPIM.ClientVersionInfo;
import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import QQPIM.ProductVersion;
import QQPIM.ServerCmdInfo;
import QQPIM.SoftUpdateInfo;
import QQPIM.TipsInfo;
import android.content.Context;
import android.os.Handler;
import android.text.format.Formatter;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class aaq
{
  Context a;
  kw b;
  protected Handler c;
  private String d = null;
  private WupSessionManager e;
  private boolean f = false;
  private ho g;
  private DownloadServiceBinder h;
  private BaseServiceConnection i = new BaseServiceConnection(ss.class);
  private NetworkLoadTaskListener<kv> j = new aar(this);

  public aaq(Context paramContext, String paramString)
  {
    this.d = paramString;
    this.a = paramContext;
    this.g = ho.a();
    this.e = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class));
  }

  public static CheckResult a(Context paramContext, CloudInfo paramCloudInfo)
  {
    int k = 1;
    Object localObject;
    if (paramCloudInfo == null)
    {
      localObject = null;
      return localObject;
    }
    CheckResult localCheckResult = new CheckResult();
    localCheckResult.mUpdateInfoList = new ArrayList();
    TipsInfo localTipsInfo = paramCloudInfo.getTips();
    if (localTipsInfo != null)
    {
      localCheckResult.mTitle = localTipsInfo.getTitle();
      localCheckResult.mMessage = localTipsInfo.getMsg();
    }
    ArrayList localArrayList = paramCloudInfo.getCloudcmds();
    CloudCmd localCloudCmd;
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      localCloudCmd = (CloudCmd)localArrayList.get(0);
      if (localCloudCmd.getCmdid() == 200)
      {
        if (localTipsInfo == null)
          break label448;
        if (localTipsInfo.getAtype() != k)
          break label432;
      }
    }
    while (true)
    {
      label115: UpdateInfo localUpdateInfo1 = new UpdateInfo();
      localUpdateInfo1.type = k;
      localUpdateInfo1.flag = 2097152;
      localUpdateInfo1.fileName = paramContext.getPackageName();
      localCheckResult.mUpdateInfoList.add(localUpdateInfo1);
      byte[] arrayOfByte = localCloudCmd.getParam();
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      localUniAttribute.decode(arrayOfByte);
      SoftUpdateInfo localSoftUpdateInfo = (SoftUpdateInfo)localUniAttribute.getByClass("cloudcmd", new SoftUpdateInfo());
      StringBuffer localStringBuffer1;
      long l;
      if (localSoftUpdateInfo != null)
      {
        UpdateInfo localUpdateInfo2 = (UpdateInfo)localCheckResult.mUpdateInfoList.get(0);
        localUpdateInfo2.url = localSoftUpdateInfo.getUrl();
        localStringBuffer1 = new StringBuffer();
        localStringBuffer1.append(localSoftUpdateInfo.getNewfeature());
        localStringBuffer1.append("\n");
        localStringBuffer1.append(paramContext.getString(2131428885));
        ProductVersion localProductVersion = localSoftUpdateInfo.getNewversion();
        if (localProductVersion != null)
        {
          StringBuffer localStringBuffer2 = new StringBuffer();
          localStringBuffer2.append(localProductVersion.getPversion());
          localStringBuffer2.append(".");
          localStringBuffer2.append(localProductVersion.getCversion());
          localStringBuffer2.append(".");
          localStringBuffer2.append(localProductVersion.getHotfix());
          localUpdateInfo2.data1 = localStringBuffer2.toString();
          localStringBuffer1.append(localStringBuffer2);
        }
        localStringBuffer1.append("\n");
        localStringBuffer1.append(paramContext.getString(2131428886));
        l = localSoftUpdateInfo.getPkg_size() << 10;
        if (l != -1L)
          break label437;
      }
      label432: label437: for (String str = "0"; ; str = Formatter.formatFileSize(paramContext, l))
      {
        localStringBuffer1.append(str);
        localCheckResult.mMessage = localStringBuffer1.toString();
        localObject = localCheckResult;
        break;
        k = 0;
        break label115;
      }
      label448: k = 0;
    }
  }

  public final CheckResult a(ICheckListener paramICheckListener)
  {
    this.f = false;
    if (paramICheckListener != null)
      paramICheckListener.onCheckStarted();
    Object localObject1 = new CheckResult();
    ((CheckResult)localObject1).mUpdateInfoList = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new ClientVersionInfo(7, 1, "buildno=" + TMSApplication.getIntFromEnvMap("build") + "&version=" + TMSApplication.getStrFromEnvMap("softversion") + "&productid=" + TMSApplication.getIntFromEnvMap("product"), ""));
    int m;
    if (this.f)
      m = -3;
    while (true)
    {
      int n;
      label143: label155: int k;
      CloudInfo localCloudInfo;
      if (paramICheckListener != null)
      {
        if (m != 0)
        {
          paramICheckListener.onCheckEvent(m);
          n = 0;
          if (n != 0)
            break label277;
          paramICheckListener.onCheckFinished(null);
        }
      }
      else
      {
        return localObject1;
        AtomicReference localAtomicReference = new AtomicReference();
        k = this.e.getUpdatesV2(localArrayList1, localAtomicReference);
        if (k != 0)
          break label297;
        ServerCmdInfo localServerCmdInfo = (ServerCmdInfo)localAtomicReference.get();
        if (localServerCmdInfo == null)
          break label303;
        if (this.f)
        {
          m = -3;
          continue;
        }
        ArrayList localArrayList2 = localServerCmdInfo.getCloudinfos();
        if ((localArrayList2 == null) || (localArrayList2.size() <= 0))
          break label297;
        localCloudInfo = (CloudInfo)localArrayList2.get(0);
      }
      label277: label297: for (Object localObject2 = a(this.a, localCloudInfo); ; localObject2 = localObject1)
      {
        if (this.f)
        {
          localObject1 = localObject2;
          m = -3;
          break;
          n = 1;
          break label143;
          paramICheckListener.onCheckFinished((CheckResult)localObject1);
          break label155;
        }
        localObject1 = localObject2;
        m = k;
        break;
      }
      label303: m = k;
    }
  }

  public final void a()
  {
    try
    {
      this.f = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(CheckResult paramCheckResult)
  {
    if (paramCheckResult.mUpdateInfoList == null);
    while (true)
    {
      return;
      UpdateInfo localUpdateInfo = (UpdateInfo)paramCheckResult.mUpdateInfoList.get(0);
      if (localUpdateInfo.type == 1)
      {
        this.g.aP();
        this.g.l(paramCheckResult.mMessage);
      }
      this.b = a.a(((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).getAppInfo(this.a.getPackageName(), 121));
      this.b.d(localUpdateInfo.url);
      this.b.setVersionCode(1 + this.b.getVersionCode());
      this.b.h(this.d);
      if (this.c == null)
        this.c = new aat(this, this.a.getMainLooper());
      this.c.sendEmptyMessage(13);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aaq
 * JD-Core Version:    0.6.2
 */