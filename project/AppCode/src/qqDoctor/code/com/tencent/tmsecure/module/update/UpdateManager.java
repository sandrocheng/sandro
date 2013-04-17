package com.tencent.tmsecure.module.update;

import QQPIM.ConfInfo;
import QQPIM.ConfSrc;
import QQPIM.TipInfo;
import QQPIM.VirusClientInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import bsv;
import btf.a;
import bth;
import bzc;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class UpdateManager extends BaseManager
{
  private bzc a;

  public final void addObserver(int paramInt, IUpdateObserver paramIUpdateObserver)
  {
    bzc localbzc = this.a;
    HashMap localHashMap = localbzc.e;
    if (paramIUpdateObserver != null);
    try
    {
      localbzc.e.put(Integer.valueOf(paramInt), new SoftReference(paramIUpdateObserver));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void cancel()
  {
    this.a.c.set(true);
  }

  public final void check(int paramInt, ICheckListener paramICheckListener)
  {
    bzc localbzc = this.a;
    localbzc.c.set(false);
    ICheckListener.Proxy localProxy = new ICheckListener.Proxy(paramICheckListener);
    localProxy.onCheckStarted();
    int i = UpdateConfig.prepareCheckFlag(paramInt);
    ArrayList localArrayList1 = new ArrayList();
    if (!bsv.a().b())
    {
      CheckResult localCheckResult1 = new CheckResult();
      localCheckResult1.mTitle = "提示";
      localCheckResult1.mMessage = "TMS模块已经过期，请联系供应商";
      localCheckResult1.mUpdateInfoList = localArrayList1;
      localProxy.onCheckFinished(localCheckResult1);
    }
    while (true)
    {
      return;
      if (!localbzc.c.get())
        break;
      localProxy.onCheckCanceled();
      localProxy.onCheckFinished(null);
    }
    ArrayList localArrayList2 = new ArrayList();
    int[] arrayOfInt = UpdateConfig.UPDATE_FLAGS;
    int j = arrayOfInt.length;
    int k = 0;
    int m;
    Iterator localIterator;
    label198: CheckResult localCheckResult2;
    TipInfo localTipInfo;
    String str1;
    if (k >= j)
    {
      ArrayList localArrayList3 = new ArrayList();
      AtomicReference localAtomicReference = new AtomicReference();
      m = localbzc.d.getConfigV3CPT(localArrayList2, localArrayList3, localAtomicReference);
      if (m != 0)
        break label550;
      if (localArrayList3.size() > 0)
      {
        localIterator = localArrayList3.iterator();
        if (localIterator.hasNext())
          break label428;
      }
      localCheckResult2 = new CheckResult();
      localTipInfo = (TipInfo)localAtomicReference.get();
      if (localTipInfo == null)
        break label575;
      str1 = localTipInfo.strTitle;
      label239: localCheckResult2.mTitle = str1;
      if (localTipInfo == null)
        break label582;
    }
    label428: label575: label582: for (String str2 = localTipInfo.strTips; ; str2 = "")
    {
      localCheckResult2.mMessage = str2;
      localCheckResult2.mUpdateInfoList = localArrayList1;
      localProxy.onCheckFinished(localCheckResult2);
      break;
      int n = arrayOfInt[k];
      ConfInfo localConfInfo;
      if ((n & i) != 0)
      {
        if (n != 4)
          break label369;
        localConfInfo = UpdateUtil.getSmsCheckerConfInfo(localbzc.a, localbzc.a(n));
      }
      while (true)
      {
        if (localConfInfo == null)
        {
          localConfInfo = new ConfInfo();
          localConfInfo.filename = UpdateConfig.getFileNameByFlag(n);
          localConfInfo.checksum = "";
          localConfInfo.timestamp = 0;
        }
        localArrayList2.add(localConfInfo);
        k++;
        break;
        label369: if (n == 8)
          localConfInfo = UpdateUtil.getVirusConfInfo(localbzc.a, localbzc.a(n));
        else if (n == 2)
          localConfInfo = UpdateUtil.getLocationConfInfo(localbzc.a(n));
        else
          localConfInfo = UpdateUtil.getFileConfInfo(localbzc.a(n));
      }
      ConfSrc localConfSrc = (ConfSrc)localIterator.next();
      if (localConfSrc == null)
        break label198;
      UpdateInfo localUpdateInfo = new UpdateInfo();
      if (localConfSrc.isincreupdate == 0);
      for (localUpdateInfo.fileName = localConfSrc.getFilename(); ; localUpdateInfo.fileName = (localConfSrc.getFilename() + ".patch"))
      {
        localUpdateInfo.flag = UpdateConfig.getFlagByFileName(localConfSrc.getFilename());
        localUpdateInfo.type = 0;
        localUpdateInfo.url = localConfSrc.getUrl();
        localUpdateInfo.data1 = localConfSrc;
        localArrayList1.add(localUpdateInfo);
        break;
      }
      if (m != 0)
        localProxy.onCheckEvent(m);
      localProxy.onCheckFinished(null);
      break;
      str1 = "";
      break label239;
    }
  }

  public final String getFileSavePath()
  {
    return this.a.b;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bzc();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void removeObserver(int paramInt)
  {
    bzc localbzc = this.a;
    synchronized (localbzc.e)
    {
      localbzc.e.remove(Integer.valueOf(paramInt));
      return;
    }
  }

  public final void update(List<UpdateInfo> paramList, IUpdateListener paramIUpdateListener)
  {
    bzc localbzc = this.a;
    localbzc.c.set(false);
    IUpdateListener.UpdateListener localUpdateListener = new IUpdateListener.UpdateListener(paramIUpdateListener);
    localUpdateListener.onUpdateStarted();
    if (bsv.a().b())
    {
      if (localbzc.c.get())
        localUpdateListener.onUpdateCanceled();
    }
    else
    {
      localUpdateListener.onUpdateFinished();
      return;
    }
    AtomicBoolean localAtomicBoolean = new AtomicBoolean(false);
    int i = 0;
    label71: UpdateInfo localUpdateInfo;
    label119: int k;
    if (i < paramList.size())
    {
      localUpdateInfo = (UpdateInfo)paramList.get(i);
      if (localUpdateInfo != null)
        if (paramList.size() == 1)
        {
          localUpdateListener.onProgressChanged(localUpdateInfo, 50);
          if (localUpdateInfo.flag != 8)
            break label315;
          VirusClientInfo localVirusClientInfo = UpdateUtil.getVirusClientInfo(localbzc.a, localbzc.a(8));
          if (localVirusClientInfo == null)
            break label527;
          localVirusClientInfo.setEngine_version(3);
          AtomicReference localAtomicReference = new AtomicReference();
          ArrayList localArrayList = new ArrayList();
          k = localbzc.d.getVirusInfos(localVirusClientInfo, localAtomicReference, localArrayList);
          if (k == 0)
          {
            VirusServerInfo localVirusServerInfo = (VirusServerInfo)localAtomicReference.get();
            if ((localVirusServerInfo != null) && (!localVirusServerInfo.getBUpdate()) && (localArrayList.size() > 0))
            {
              String str = localbzc.a(8);
              AmScanner.updateBase(localbzc.a, str, localVirusServerInfo, localArrayList);
            }
          }
        }
    }
    label519: label521: label527: for (int j = k; ; j = 0)
    {
      if (j != 0)
        localAtomicBoolean.set(true);
      while (true)
      {
        if (localAtomicBoolean.get())
          break label519;
        localbzc.a(localUpdateInfo);
        if (!localbzc.c.get())
          break label521;
        localUpdateListener.onUpdateCanceled();
        break;
        localUpdateListener.onProgressChanged(localUpdateInfo, (int)(i / paramList.size()));
        break label119;
        label315: if ((localUpdateInfo != null) && (localUpdateInfo.url != null))
        {
          bth localbth = new bth(localbzc.a);
          localbth.f = (localbzc.b + "/");
          localbth.g = localUpdateInfo.fileName;
          localbth.e = new btf.a(localUpdateListener, localUpdateInfo, localAtomicBoolean);
          localbth.a(localUpdateInfo.url + "?m=def", true);
          if ((!localAtomicBoolean.get()) && (localUpdateInfo.flag == 2))
          {
            TelNumberLocator localTelNumberLocator = TelNumberLocator.getDefault(localbzc.a);
            ConfSrc localConfSrc = (ConfSrc)localUpdateInfo.data1;
            if (localConfSrc.isincreupdate != 0)
              localTelNumberLocator.patchLocation(localbzc.b + File.separator + localUpdateInfo.fileName, localConfSrc.getIuchecksum());
            localTelNumberLocator.reload();
          }
        }
      }
      break;
      i++;
      break label71;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.update.UpdateManager
 * JD-Core Version:    0.6.2
 */