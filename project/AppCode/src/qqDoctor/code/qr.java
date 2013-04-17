import QQPIM.BaseInfo;
import QQPIM.ClientVersionInfo;
import QQPIM.CloudCmd;
import QQPIM.CloudCmdRes;
import QQPIM.CloudInfo;
import QQPIM.CloudInfoRes;
import QQPIM.CmdInfoRes;
import QQPIM.ConfInfo;
import QQPIM.DayColorEggs;
import QQPIM.DeleteFileInfo;
import QQPIM.ExecShell;
import QQPIM.FuncActivityInfo;
import QQPIM.ImageAds;
import QQPIM.InstallInfo;
import QQPIM.KillProcessInfo;
import QQPIM.KillToolInfo;
import QQPIM.LotteryColorEggs;
import QQPIM.LotteryPrize;
import QQPIM.MQQSecRunInfo;
import QQPIM.OpenLinkInfo;
import QQPIM.OpenUIActionInfo;
import QQPIM.PromptImpeach;
import QQPIM.RecommendSoft;
import QQPIM.ServerCmdInfo;
import QQPIM.SmsRecoverRule;
import QQPIM.SwitchSet;
import QQPIM.TimeCtrl;
import QQPIM.TipsInfo;
import QQPIM.UninstallInfo;
import QQPIM.VirusClientInfo;
import QQPIM.VirusUpdateInfo;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import com.qq.jce.wup.UniAttribute;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.ui.activity.TipsDialog;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class qr
{
  private static qr e = null;
  private Context a;
  private List<CloudInfo> b;
  private List<CloudInfo> c;
  private ArrayList<CloudInfoRes> d;

  private qr(Context paramContext)
  {
    this.a = paramContext;
    a.a(paramContext, "nldb.sdb", null);
    a.a(paramContext, "rule_store.sys", null);
    a.a(paramContext, UpdateConfig.WHITELIST_COMMON_NAME, null);
    a.a(paramContext, UpdateConfig.ROM_THIRDPART_NAME, null);
    a.a(paramContext, UpdateConfig.WHITELIST_UNUSUAL_NAME, null);
    a.a(paramContext, UpdateConfig.BLACKLIST_ROM_NAME, null);
    a.a(paramContext, UpdateConfig.BLACKLIST_WITHPLUGIN_NAME, null);
    a.a(paramContext, "qv_base.amf", null);
    a.a(paramContext, "trusturls.dat", null);
    a.a(paramContext, "net_interface_type_traffic_stat.dat", null);
    this.b = ((List)fj.a(paramContext, "tips", "tips.dat"));
    this.c = ((List)fj.a(paramContext, "p_tips", "p_tips.dat"));
    this.d = ((ArrayList)fj.a(paramContext, "tips_res", "tips_res.dat"));
    if (this.c == null)
      this.c = new ArrayList();
    if (this.d == null)
      this.d = new ArrayList();
    if (this.b == null)
      this.b = new ArrayList();
  }

  public static qr a(Context paramContext)
  {
    if (e == null)
      e = new qr(paramContext);
    return e;
  }

  private void a(CloudInfo paramCloudInfo, CloudInfoRes paramCloudInfoRes)
  {
    while (true)
    {
      int i;
      try
      {
        paramCloudInfoRes.setPhase(3);
        paramCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
        ArrayList localArrayList = paramCloudInfo.getCloudcmds();
        Iterator localIterator;
        if (localArrayList == null)
        {
          paramCloudInfoRes.setRes(-6);
        }
        else
        {
          paramCloudInfoRes.setRes(1);
          localIterator = localArrayList.iterator();
        }
        if (!localIterator.hasNext())
          continue;
        CloudCmd localCloudCmd = (CloudCmd)localIterator.next();
        i = a(paramCloudInfo, localCloudCmd);
        int j = localCloudCmd.getSeqid();
        if (i == 0)
        {
          k = 1;
          CloudCmdRes localCloudCmdRes = new CloudCmdRes(j, k);
          paramCloudInfoRes.getCmdres().add(localCloudCmdRes);
          if (i == 0)
            continue;
          paramCloudInfoRes.setRes(0);
          continue;
        }
      }
      finally
      {
      }
      int k = i;
    }
  }

  private void a(ServerCmdInfo paramServerCmdInfo)
  {
    this.b.clear();
    this.b = paramServerCmdInfo.getCloudinfos();
    if (this.b != null)
      fj.a(this.a, this.b, "tips", "tips.dat");
    this.c.clear();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.d.iterator();
    label340: 
    while (true)
    {
      CloudInfoRes localCloudInfoRes3;
      if (localIterator1.hasNext())
      {
        localCloudInfoRes3 = (CloudInfoRes)localIterator1.next();
        Iterator localIterator4 = this.b.iterator();
        do
          if (!localIterator4.hasNext())
            break;
        while (!((CloudInfo)localIterator4.next()).getBase().getTipsid().equals(localCloudInfoRes3.getTipsid()));
      }
      for (int i = 0; ; i = 1)
      {
        if (i == 0)
          break label340;
        localArrayList.add(localCloudInfoRes3);
        break;
        if (localArrayList.size() > 0)
        {
          CmdInfoRes localCmdInfoRes = new CmdInfoRes();
          localCmdInfoRes.setInfores(localArrayList);
          if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportTipsRes(localCmdInfoRes) == 0)
          {
            Iterator localIterator3 = localArrayList.iterator();
            while (localIterator3.hasNext())
            {
              CloudInfoRes localCloudInfoRes2 = (CloudInfoRes)localIterator3.next();
              this.d.remove(localCloudInfoRes2);
            }
          }
        }
        Iterator localIterator2 = this.b.iterator();
        while (localIterator2.hasNext())
        {
          CloudInfo localCloudInfo = (CloudInfo)localIterator2.next();
          CloudInfoRes localCloudInfoRes1 = new CloudInfoRes(localCloudInfo.getBase().getTipsid(), 0, 0, new ArrayList(), 1, 0, localCloudInfo.getTime().getTime());
          this.d.add(localCloudInfoRes1);
        }
        if (this.d != null)
          fj.a(this.a, this.d, "tips_res", "tips_res.dat");
        return;
      }
    }
  }

  private static boolean d(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm install " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private static boolean e(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("mount -o remount,rw /");
      localArrayList.add("chmod 0777 " + paramString);
      localArrayList.add("rm " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      File localFile = new File(paramString);
      if (localFile.exists())
        localFile.delete();
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private static boolean f(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm uninstall " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private static boolean g(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm disable " + paramString);
      localArrayList.add("pm enable " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private static boolean h(String paramString)
  {
    boolean bool = true;
    try
    {
      int i = ScriptHelper.runScriptAsRoot(new String[] { paramString });
      if (i == 0)
        return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        bool = false;
      }
    }
  }

  public final int a(CloudInfo paramCloudInfo, CloudCmd paramCloudCmd)
  {
    int i = 0;
    int j = -5;
    UniAttribute localUniAttribute = new UniAttribute();
    localUniAttribute.setEncodeName("UTF-8");
    localUniAttribute.decode(paramCloudCmd.getParam());
    switch (paramCloudCmd.getCmdid())
    {
    default:
    case 200:
    case 201:
      while (true)
      {
        return j;
        ss localss = new ss(this.a, false, true);
        localss.e();
        j = localss.b();
        continue;
        acg localacg = new acg(this.a, false, true);
        localacg.e();
        j = localacg.b();
      }
    case 4:
      DeleteFileInfo localDeleteFileInfo = (DeleteFileInfo)localUniAttribute.getByClass("cloudcmd", new DeleteFileInfo());
      if (localDeleteFileInfo != null)
      {
        String str4 = localDeleteFileInfo.getFile();
        if (!e(str4))
          break;
      }
      break;
    case 6:
    case 3:
    case 1:
    case 101:
    case 9:
    case 7:
    case 301:
    case 302:
    case 102:
    case 312:
    case 313:
    case 311:
    case 318:
    case 401:
    case 319:
    case 320:
    case 321:
    }
    for (int k = 0; ; k = j)
    {
      j = k;
      break;
      InstallInfo localInstallInfo = (InstallInfo)localUniAttribute.getByClass("cloudcmd", new InstallInfo());
      if (localInstallInfo == null)
        break;
      localInstallInfo.getUrl();
      switch (localInstallInfo.getOption())
      {
      default:
        break;
      case 1:
        Context localContext3 = this.a;
        String str3 = this.a.getFilesDir().getAbsolutePath() + "/temp.apk";
        Intent localIntent5 = new Intent("android.intent.action.VIEW");
        localIntent5.addFlags(268435456);
        localIntent5.setDataAndType(Uri.fromFile(new File(str3)), "application/vnd.android.package-archive");
        localContext3.startActivity(localIntent5);
        j = 0;
        break;
      case 5:
        if (!d(this.a.getFilesDir().getAbsolutePath() + "/temp.apk"))
          break;
        j = 0;
        break;
        KillProcessInfo localKillProcessInfo = (KillProcessInfo)localUniAttribute.getByClass("cloudcmd", new KillProcessInfo());
        if ((localKillProcessInfo == null) || (!g(localKillProcessInfo.getProcess())))
          break;
        j = 0;
        break;
        UninstallInfo localUninstallInfo = (UninstallInfo)localUniAttribute.getByClass("cloudcmd", new UninstallInfo());
        if (localUninstallInfo == null)
          break;
        switch (localUninstallInfo.getOption())
        {
        default:
          break;
        case 1:
          Context localContext2 = this.a;
          String str2 = localUninstallInfo.getUid();
          Intent localIntent4 = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str2));
          localIntent4.addFlags(268435456);
          localContext2.startActivity(localIntent4);
          j = 0;
          break;
        case 5:
          if (!f(localUninstallInfo.getUid()))
            break;
          j = 0;
          break;
          OpenLinkInfo localOpenLinkInfo = (OpenLinkInfo)localUniAttribute.getByClass("cloudcmd", new OpenLinkInfo());
          if (localOpenLinkInfo != null)
          {
            Intent localIntent3 = new Intent();
            localIntent3.setAction("android.intent.action.VIEW");
            localIntent3.setData(Uri.parse(localOpenLinkInfo.getUrl()));
            localIntent3.setFlags(268435456);
            this.a.startActivity(localIntent3);
          }
          while (true)
          {
            j = i;
            break;
            ExecShell localExecShell = (ExecShell)localUniAttribute.getByClass("cloudcmd", new ExecShell());
            if ((localExecShell == null) || (!h(localExecShell.getShellcmd())))
              break;
            j = 0;
            break;
            localUniAttribute.getByClass("cloudcmd", new MQQSecRunInfo());
            break;
            SwitchSet localSwitchSet = (SwitchSet)localUniAttribute.getByClass("cloudcmd", new SwitchSet());
            if (localSwitchSet == null)
              break;
            new StringBuilder("CloudServiceManager switchSet.getSwitchid() ").append(localSwitchSet.getSwitchid()).toString();
            switch (localSwitchSet.getSwitchid())
            {
            default:
              break;
            case 1:
              ho localho4 = ho.a();
              if (localSwitchSet.getIsopen() == 1)
              {
                localho4.a("auto_upload_crash", true);
                break;
              }
              localho4.a("auto_upload_crash", false);
              break;
            case 6:
              ho localho3 = ho.a();
              new StringBuilder("CloudServiceManager switchSet.getIsopen() ").append(localSwitchSet.getIsopen()).toString();
              if (localSwitchSet.getIsopen() == 1)
              {
                localho3.L(true);
                break;
              }
              localho3.L(false);
              break;
              ImageAds localImageAds = (ImageAds)localUniAttribute.getByClass("cloudcmd", new ImageAds());
              if (localImageAds == null)
                break;
              switch (localImageAds.getLocation())
              {
              default:
                break;
              case 1201:
                si localsi = si.a(this.a);
                lu locallu = new lu();
                locallu.c = localsi.a(localImageAds.getLocation());
                locallu.a(localImageAds.getPicurl());
                locallu.b = localImageAds.getLinkurl();
                locallu.e = (1000L * paramCloudInfo.getTime().getValidEndTime());
                locallu.d = (1000L * localImageAds.getShowtime());
                localsi.a(locallu);
                break;
              case 1202:
                if (paramCloudInfo.getTips() == null)
                  break;
                wq localwq = wq.a();
                localwq.getClass();
                wq.a locala = new wq.a();
                locala.a = localImageAds.getTitle();
                locala.b = paramCloudInfo.getBase().getTipsid();
                locala.c = localImageAds.getLinkurl();
                locala.d = (1000L * localImageAds.getShowtime());
                locala.e = (1000L * paramCloudInfo.getTime().getValidEndTime());
                locala.f = true;
                localwq.a(locala);
                break;
                OpenUIActionInfo localOpenUIActionInfo = (OpenUIActionInfo)localUniAttribute.getByClass("cloudcmd", new OpenUIActionInfo());
                if ((localOpenUIActionInfo == null) || (localOpenUIActionInfo.getAction() != 120101000) || (localOpenUIActionInfo.getUiid() != 12010100))
                  break;
                new StringBuilder(" CloudServiceManager getTitle ").append(localOpenUIActionInfo.getTitle()).append(" getMsg ").append(localOpenUIActionInfo.getMsg()).toString();
                if ((!di.b().a()) && (!this.a.getSharedPreferences("tool_box_setting_info", 0).getBoolean("tool_box_set_default", false)))
                  break;
                new acz().a(localOpenUIActionInfo.getTitle(), localOpenUIActionInfo.getMsg());
                break;
                nd.a().a(26285);
                VirusUpdateInfo localVirusUpdateInfo = (VirusUpdateInfo)localUniAttribute.getByClass("cloudcmd", new VirusUpdateInfo());
                if (localVirusUpdateInfo == null)
                  break;
                Context localContext1 = this.a;
                Intent localIntent2 = new Intent(this.a, VirusScanActivity.class);
                localIntent2.putExtra("update_data", localVirusUpdateInfo);
                localIntent2.setFlags(268435456);
                localIntent2.putExtra("extra_back_to_main", true);
                localContext1.startActivity(localIntent2);
                break;
                nd.a().a(26288);
                KillToolInfo localKillToolInfo = (KillToolInfo)localUniAttribute.getByClass("cloudcmd", new KillToolInfo());
                if (localKillToolInfo == null)
                  break;
                kw localkw = new kw();
                localkw.setPackageName(localKillToolInfo.pkgname);
                localkw.setCertMD5(localKillToolInfo.certmd5);
                Intent localIntent1 = kw.a(localkw, -1, 0);
                localIntent1.putExtra("extra_back_to_main", true);
                this.a.startActivity(localIntent1);
                break;
                RecommendSoft localRecommendSoft = (RecommendSoft)localUniAttribute.getByClass("cloudcmd", new RecommendSoft());
                if (localRecommendSoft != null)
                {
                  ho.a().J(localRecommendSoft.getUrl());
                  new StringBuilder("CloudServiceManager setQQphonebookUrl ").append(localRecommendSoft.getUrl()).toString();
                }
                if ((paramCloudInfo == null) || (paramCloudInfo.getTips() == null))
                  break;
                ho localho2 = ho.a();
                localho2.H(paramCloudInfo.getTips().getMsg());
                new StringBuilder("CloudServiceManager setQQphonebookTipsInfo ").append(paramCloudInfo.getTips().getMsg()).toString();
                localho2.I(paramCloudInfo.getTips().getTitle());
                new StringBuilder("CloudServiceManager setQQphonebookTipsTitle ").append(paramCloudInfo.getTips().getTitle()).toString();
                break;
                DayColorEggs localDayColorEggs = (DayColorEggs)localUniAttribute.getByClass("cloudcmd", new DayColorEggs());
                if (localDayColorEggs == null)
                  break;
                qt localqt3 = qt.a(this.a);
                ma localma = new ma();
                localma.b = String.valueOf(localDayColorEggs.getNvalue());
                localma.c = localDayColorEggs.getEggurl();
                localma.f = localDayColorEggs.getOrbit();
                localma.g = localDayColorEggs.getToast();
                localma.a = paramCloudInfo.getBase().getTipsid();
                localma.e = false;
                localma.k = (1000L * paramCloudInfo.getTime().getValidEndTime());
                localma.h = localDayColorEggs.getBshare();
                localma.j = localDayColorEggs.getText();
                localma.i = localDayColorEggs.getWording();
                localqt3.a(localma);
                break;
                LotteryColorEggs localLotteryColorEggs = (LotteryColorEggs)localUniAttribute.getByClass("cloudcmd", new LotteryColorEggs());
                if (localLotteryColorEggs == null)
                  break;
                qt localqt2 = qt.a(this.a);
                lx locallx = new lx();
                locallx.b = localLotteryColorEggs.getActivityid();
                locallx.c = localLotteryColorEggs.getEggurl();
                locallx.f = localLotteryColorEggs.getOrbit();
                locallx.g = localLotteryColorEggs.getWording();
                locallx.a = paramCloudInfo.getBase().getTipsid();
                locallx.k = localLotteryColorEggs.getPrize().getPrizeid();
                locallx.i = localLotteryColorEggs.getCheckurl();
                locallx.h = localLotteryColorEggs.getPrizeurl();
                locallx.e = false;
                locallx.j = (1000L * paramCloudInfo.getTime().getValidEndTime());
                localqt2.a(locallx);
                break;
                FuncActivityInfo localFuncActivityInfo = (FuncActivityInfo)localUniAttribute.getByClass("cloudcmd", new FuncActivityInfo());
                if (localFuncActivityInfo == null)
                  break;
                qt localqt1 = qt.a(this.a);
                ld localld = new ld();
                localld.b = localFuncActivityInfo.getActivityid();
                localld.a = paramCloudInfo.getBase().getTipsid();
                localld.c = localFuncActivityInfo.getWording();
                localld.d = localFuncActivityInfo.getDetailurl();
                localld.e = false;
                localld.f = (1000L * paramCloudInfo.getTime().getValidEndTime());
                String str1 = localld.a;
                if (localqt1.a.a(str1, "color_egg_activity_config", "tips_id"))
                  break;
                localqt1.a(localld);
                break;
                PromptImpeach localPromptImpeach = (PromptImpeach)localUniAttribute.getByClass("cloudcmd", new PromptImpeach());
                if (localPromptImpeach == null)
                  break;
                ho localho1 = ho.a();
                localho1.M(localPromptImpeach.getBswitch());
                localho1.K(localPromptImpeach.getActionmarkstr());
                localho1.E(localPromptImpeach.getMaxreport());
                localho1.N(localPromptImpeach.getBfiltercontent());
                localho1.L(localPromptImpeach.getKeywords());
                localho1.G(localPromptImpeach.getMaxsinglereport());
                localho1.A(1000L * paramCloudInfo.getTime().getValidEndTime());
                break;
                localUniAttribute.getByClass("cloudcmd", new SmsRecoverRule());
                break;
                i = j;
              }
              break;
            }
          }
        }
        break;
      }
    }
  }

  public final void a(int paramInt)
  {
    ArrayList localArrayList1;
    try
    {
      localArrayList1 = new ArrayList();
      Iterator localIterator1 = this.b.iterator();
      while (localIterator1.hasNext())
      {
        CloudInfo localCloudInfo2 = (CloudInfo)localIterator1.next();
        if ((localCloudInfo2 != null) && (localCloudInfo2.getTime().getTime() == paramInt))
          localArrayList1.add(localCloudInfo2);
      }
    }
    finally
    {
    }
    ArrayList localArrayList2 = new ArrayList();
    CloudInfo localCloudInfo1;
    CloudInfoRes localCloudInfoRes;
    if (localArrayList1.size() > 0)
    {
      Iterator localIterator2 = localArrayList1.iterator();
      if (localIterator2.hasNext())
      {
        localCloudInfo1 = (CloudInfo)localIterator2.next();
        localCloudInfoRes = c(localCloudInfo1.getBase().getTipsid());
        if (localCloudInfoRes == null)
          localCloudInfoRes = null;
      }
    }
    while (true)
    {
      if (localCloudInfoRes != null)
        localArrayList2.add(localCloudInfoRes);
      this.c.add(localCloudInfo1);
      this.b.remove(localCloudInfo1);
      break;
      localCloudInfoRes.setPhase(1);
      localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
      TimeCtrl localTimeCtrl = localCloudInfo1.getTime();
      label424: if (localCloudInfo1.getTime().getValidEndTime() != 0)
        if (System.currentTimeMillis() / 1000L >= localTimeCtrl.getValidEndTime())
          break label424;
      while (true)
      {
        int i;
        if (i == 0)
        {
          localCloudInfoRes.setRes(2);
          break;
        }
        TipsInfo localTipsInfo = localCloudInfo1.getTips();
        if (localTipsInfo == null)
          break;
        String str = localCloudInfo1.getBase().getTipsid();
        switch (localTipsInfo.getType())
        {
        case 6:
          if (paramInt != 120103000)
          {
            TipsDialog.a(this.a, str);
            localCloudInfoRes.setRes(1);
            break;
          }
          a(localCloudInfo1, localCloudInfoRes);
          break;
        case 8:
          ss.b(this.a, localCloudInfo1);
          if (!ss.a(this.a, localCloudInfo1))
            break label436;
          ov.a().a(this.a, localCloudInfo1);
          localCloudInfoRes.setRes(1);
          break;
        case 0:
          a(localCloudInfo1, localCloudInfoRes);
          break;
          a(localArrayList2);
          return;
          i = 1;
          continue;
          i = 0;
        }
      }
      localCloudInfoRes = null;
      continue;
      label436: localCloudInfoRes = null;
    }
  }

  public final void a(String paramString)
  {
    Object localObject1 = null;
    Iterator localIterator = this.c.iterator();
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (CloudInfo)localIterator.next();
      if (!((CloudInfo)localObject2).getBase().getTipsid().equals(paramString))
        break label92;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 != null)
        this.c.remove(localObject1);
      if (this.c != null)
        fj.a(this.a, this.c, "p_tips", "p_tips.dat");
      return;
      label92: localObject2 = localObject1;
    }
  }

  public final void a(ArrayList<CloudInfoRes> paramArrayList)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new CloudInfoRes());
    UniAttribute localUniAttribute = new UniAttribute();
    localUniAttribute.put("data", paramArrayList);
    ArrayList localArrayList2 = (ArrayList)localUniAttribute.getByClass("data", localArrayList1);
    CmdInfoRes localCmdInfoRes = new CmdInfoRes(localArrayList2);
    if (paramArrayList.size() > 0)
      new Thread(new qs(this, localCmdInfoRes, localArrayList2)).start();
  }

  public final boolean a()
  {
    if (this.b.size() > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(List<CloudInfo> paramList)
  {
    boolean bool1 = false;
    label127: boolean bool2;
    if (paramList != null)
    {
      int i = paramList.size();
      bool1 = false;
      if (i > 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        Iterator localIterator1 = paramList.iterator();
        while (true)
        {
          if (!localIterator1.hasNext())
            break label127;
          CloudInfo localCloudInfo2 = (CloudInfo)localIterator1.next();
          ArrayList localArrayList2 = localCloudInfo2.getCloudcmds();
          if ((localArrayList2 != null) && (localArrayList2.size() > 0))
          {
            Iterator localIterator4 = localArrayList2.iterator();
            if (localIterator4.hasNext())
            {
              if (((CloudCmd)localIterator4.next()).getCmdid() != 201)
                break;
              localArrayList1.add(localCloudInfo2);
            }
          }
        }
        int j = localArrayList1.size();
        bool1 = false;
        if (j > 0)
        {
          Iterator localIterator2 = localArrayList1.iterator();
          bool2 = false;
          if (localIterator2.hasNext())
          {
            CloudInfo localCloudInfo1 = (CloudInfo)localIterator2.next();
            CloudInfoRes localCloudInfoRes = c(localCloudInfo1.getBase().getTipsid());
            Iterator localIterator3 = localCloudInfo1.getCloudcmds().iterator();
            CloudCmd localCloudCmd;
            int k;
            int m;
            if (localIterator3.hasNext())
            {
              localCloudCmd = (CloudCmd)localIterator3.next();
              k = a(localCloudInfo1, localCloudCmd);
              m = localCloudCmd.getSeqid();
              if (k != 0)
                break label300;
            }
            label300: for (int n = 1; ; n = k)
            {
              CloudCmdRes localCloudCmdRes = new CloudCmdRes(m, n);
              localCloudInfoRes.getCmdres().add(localCloudCmdRes);
              if (k == 0)
                break label307;
              localCloudInfoRes.setRes(0);
              a(localCloudInfo1.getBase().getTipsid());
              break;
            }
            label307: if (localCloudCmd.getCmdid() != 201)
              break label333;
          }
        }
      }
    }
    label333: for (boolean bool3 = true; ; bool3 = bool2)
    {
      bool2 = bool3;
      break;
      bool1 = bool2;
      return bool1;
    }
  }

  public final int b()
  {
    ArrayList localArrayList1;
    qx localqx;
    try
    {
      Context localContext = this.a;
      localArrayList1 = new ArrayList();
      localqx = qx.a();
      localArrayList1.add(new ClientVersionInfo(4, 2, "buildno=" + localqx.b() + "&version=" + localqx.f() + "&productid=1", ""));
      String str = localContext.getFilesDir().getAbsolutePath();
      ConfInfo localConfInfo1 = UpdateUtil.getFileConfInfo(str + File.separator + "nldb.sdb");
      if (localConfInfo1 != null)
        localArrayList1.add(new ClientVersionInfo(1, 2, "file=" + localConfInfo1.getFilename() + "&time=" + localConfInfo1.getTimestamp() + "&checksum=" + localConfInfo1.getChecksum() + "&pfutimestamp=" + localConfInfo1.getPfutimestamp(), ""));
      ConfInfo localConfInfo2 = UpdateUtil.getSmsCheckerConfInfo(localContext, str + File.separator + "rule_store.sys");
      if (localConfInfo2 != null)
        localArrayList1.add(new ClientVersionInfo(2, 2, "file=" + localConfInfo2.getFilename() + "&time=" + localConfInfo2.getTimestamp() + "&checksum=" + localConfInfo2.getChecksum(), ""));
      VirusClientInfo localVirusClientInfo = UpdateUtil.getVirusClientInfo(localContext, str + File.separator + "qv_base.amf");
      if (localVirusClientInfo != null)
        localArrayList1.add(new ClientVersionInfo(3, 2, "time=" + localVirusClientInfo.getTimestamp() + "&version=" + localVirusClientInfo.getVersion(), ""));
      ArrayList localArrayList2 = new ArrayList();
      ConfInfo localConfInfo3 = UpdateUtil.getFileConfInfo(str + File.separator + UpdateConfig.WHITELIST_COMMON_NAME);
      if (localConfInfo3 != null)
        localArrayList2.add(localConfInfo3);
      ConfInfo localConfInfo4 = UpdateUtil.getFileConfInfo(str + File.separator + UpdateConfig.ROM_THIRDPART_NAME);
      if (localConfInfo4 != null)
        localArrayList2.add(localConfInfo4);
      ConfInfo localConfInfo5 = UpdateUtil.getFileConfInfo(str + File.separator + UpdateConfig.WHITELIST_UNUSUAL_NAME);
      if (localConfInfo5 != null)
        localArrayList2.add(localConfInfo5);
      ConfInfo localConfInfo6 = UpdateUtil.getFileConfInfo(str + File.separator + UpdateConfig.BLACKLIST_ROM_NAME);
      if (localConfInfo6 != null)
        localArrayList2.add(localConfInfo6);
      ConfInfo localConfInfo7 = UpdateUtil.getFileConfInfo(str + File.separator + UpdateConfig.BLACKLIST_WITHPLUGIN_NAME);
      if (localConfInfo7 != null)
        localArrayList2.add(localConfInfo7);
      ConfInfo localConfInfo8 = UpdateUtil.getFileConfInfo(str + File.separator + "trusturls.dat");
      if (localConfInfo8 != null)
        localArrayList2.add(localConfInfo8);
      ConfInfo localConfInfo9 = UpdateUtil.getFileConfInfo(str + File.separator + "net_interface_type_traffic_stat.dat");
      if (localConfInfo9 != null)
        localArrayList2.add(localConfInfo9);
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
      {
        ConfInfo localConfInfo10 = (ConfInfo)localIterator.next();
        localArrayList1.add(new ClientVersionInfo(21, 2, "file=" + localConfInfo10.getFilename() + "&time=" + localConfInfo10.getTimestamp() + "&checksum=" + localConfInfo10.getChecksum(), ""));
      }
    }
    finally
    {
    }
    localArrayList1.add(new ClientVersionInfo(11, 2, "buildno=" + localqx.b() + "&version=" + localqx.f() + "&productid=1", ""));
    AtomicReference localAtomicReference = new AtomicReference();
    int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getUpdatesV2(localArrayList1, localAtomicReference);
    if (i != 0)
      if (i < 0)
        nd.a().a(26417, i);
    for (int j = i; ; j = i)
    {
      return j;
      ServerCmdInfo localServerCmdInfo = (ServerCmdInfo)localAtomicReference.get();
      if (localServerCmdInfo != null)
      {
        AlarmManager localAlarmManager = (AlarmManager)this.a.getSystemService("alarm");
        Intent localIntent = new Intent();
        localIntent.setClass(this.a, SecureService.class);
        localIntent.setAction("com.tencent.action.cloud_service");
        PendingIntent localPendingIntent = PendingIntent.getService(this.a, 0, localIntent, 0);
        localAlarmManager.cancel(localPendingIntent);
        long l = System.currentTimeMillis() + 1000 * localServerCmdInfo.getNextcheckinterval();
        localAlarmManager.set(1, l, localPendingIntent);
        ho.a().j(l);
        a(localServerCmdInfo);
        a(1);
      }
    }
  }

  public final CloudInfo b(String paramString)
  {
    Iterator localIterator = this.c.iterator();
    CloudInfo localCloudInfo;
    do
    {
      if (!localIterator.hasNext())
        break;
      localCloudInfo = (CloudInfo)localIterator.next();
    }
    while (!localCloudInfo.getBase().getTipsid().equals(paramString));
    while (true)
    {
      return localCloudInfo;
      localCloudInfo = null;
    }
  }

  public final CloudInfoRes c(String paramString)
  {
    CloudInfoRes localCloudInfoRes;
    if (paramString == null)
      localCloudInfoRes = null;
    while (true)
    {
      return localCloudInfoRes;
      Iterator localIterator = this.d.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          localCloudInfoRes = (CloudInfoRes)localIterator.next();
          if (paramString.equals(localCloudInfoRes.getTipsid()))
            break;
        }
      localCloudInfoRes = null;
    }
  }

  public final List<CloudInfo> c()
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = this.b.iterator();
    while (localIterator1.hasNext())
    {
      CloudInfo localCloudInfo3 = (CloudInfo)localIterator1.next();
      TipsInfo localTipsInfo2 = localCloudInfo3.getTips();
      if ((localTipsInfo2 != null) && (localTipsInfo2.getType() == 7))
        localArrayList1.add(localCloudInfo3);
    }
    Iterator localIterator2 = localArrayList1.iterator();
    while (localIterator2.hasNext())
    {
      CloudInfo localCloudInfo2 = (CloudInfo)localIterator2.next();
      this.c.add(localCloudInfo2);
      this.b.remove(localCloudInfo2);
    }
    if (this.b != null)
      fj.a(this.a, this.b, "tips", "tips.dat");
    if (localArrayList1.size() > 0)
    {
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator3 = localArrayList1.iterator();
      while (localIterator3.hasNext())
      {
        CloudInfoRes localCloudInfoRes = c(((CloudInfo)localIterator3.next()).getBase().getTipsid());
        if (localCloudInfoRes != null)
        {
          localCloudInfoRes.setPhase(1);
          localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
          localCloudInfoRes.setRes(1);
          localArrayList2.add(localCloudInfoRes);
        }
      }
      a(localArrayList2);
    }
    localArrayList1.clear();
    Iterator localIterator4 = this.c.iterator();
    while (localIterator4.hasNext())
    {
      CloudInfo localCloudInfo1 = (CloudInfo)localIterator4.next();
      TipsInfo localTipsInfo1 = localCloudInfo1.getTips();
      if ((localTipsInfo1 != null) && (localTipsInfo1.getType() == 7))
        localArrayList1.add(localCloudInfo1);
    }
    return localArrayList1;
  }

  public final void d()
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = this.c.iterator();
    while (localIterator1.hasNext())
    {
      CloudInfo localCloudInfo2 = (CloudInfo)localIterator1.next();
      TipsInfo localTipsInfo = localCloudInfo2.getTips();
      if ((localTipsInfo != null) && (localTipsInfo.getType() == 7))
        localArrayList1.add(localCloudInfo2);
    }
    if (localArrayList1.size() > 0)
    {
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator2 = localArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        CloudInfo localCloudInfo1 = (CloudInfo)localIterator2.next();
        this.c.remove(localCloudInfo1);
        CloudInfoRes localCloudInfoRes = c(localCloudInfo1.getBase().getTipsid());
        if (localCloudInfoRes != null)
        {
          localCloudInfoRes.setPhase(2);
          localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
          localCloudInfoRes.setAction(2);
          localCloudInfoRes.setRes(1);
          localArrayList2.add(localCloudInfoRes);
        }
      }
      a(localArrayList2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qr
 * JD-Core Version:    0.6.2
 */