package com.tencent.qqpimsecure.service;

import QQPIM.ConnectType;
import QQPIM.SoftListType;
import aaa;
import abo;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PackageStats;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import bzo;
import bzq;
import bzt;
import bzu;
import bzy;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper.Pair;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.NetworkUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import com.tencent.tmsecure.utils.StringUtil;
import f;
import hh;
import hi;
import hp;
import hq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import jp;
import kw;
import ky;
import lf;
import mk;
import org.json.JSONException;
import zo;
import zs;
import zv;

public final class TMSLiteService extends Service
{
  private b a = null;
  private bzt b = null;
  private bzy c = null;
  private bzq d = null;

  public final IBinder onBind(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("service_type", 0);
    Object localObject = null;
    switch (i)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return localObject;
      if (this.b == null)
        this.b = new c();
      localObject = this.b;
      continue;
      if (this.c == null)
        this.c = new d();
      localObject = this.c;
      continue;
      if (this.d == null)
        this.d = new a();
      localObject = this.d;
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = new b();
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  final class a extends bzq
  {
    a()
    {
    }

    public final int a()
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (int i = 0; ; i = hh.a().d())
        return i;
    }

    public final ArrayList<bzo> a(int paramInt)
      throws RemoteException
    {
      Object localObject;
      if (!TMSLiteService.a(TMSLiteService.this).a())
      {
        localObject = new ArrayList();
        return localObject;
      }
      ArrayList localArrayList = new ArrayList();
      if (paramInt == 0)
        try
        {
          localIterator2 = new jp("smslog", "mms_pdu", "mms_parts").a().iterator();
          while (localIterator2.hasNext())
          {
            localmk = (mk)localIterator2.next();
            localbzo2 = new bzo();
            localbzo2.put("ContactName", StringUtil.assertNotNullString(localmk.name));
            localbzo2.put("ContactNumber", localmk.phonenum);
            localbzo2.put("Date", localmk.date);
            localbzo2.put("Id", localmk.id);
            localbzo2.put("SmsContent", localmk.body);
            if (localmk.a != 1)
              break label201;
            bool2 = true;
            localbzo2.put("SmsIsRead", bool2);
            localArrayList.add(localbzo2);
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      label201: 
      while (paramInt != 1)
        while (true)
        {
          Iterator localIterator2;
          mk localmk;
          bzo localbzo2;
          localObject = localArrayList;
          break;
          boolean bool2 = false;
        }
      Iterator localIterator1 = new hi(0).b().iterator();
      label230: bzo localbzo1;
      if (localIterator1.hasNext())
      {
        ky localky = (ky)localIterator1.next();
        localbzo1 = new bzo();
        localbzo1.put("ContactName", StringUtil.assertNotNullString(localky.name));
        localbzo1.put("ContactNumber", localky.phonenum);
        localbzo1.put("Date", localky.date);
        localbzo1.put("Id", localky.id);
        if (localky.type != 3)
          break label348;
      }
      label348: for (boolean bool1 = true; ; bool1 = false)
      {
        localbzo1.put("CallIsOnceRing", bool1);
        localArrayList.add(localbzo1);
        break label230;
        break;
      }
    }

    public final void a(int paramInt1, int paramInt2, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        if (paramInt1 == 0)
        {
          jp localjp = new jp("smslog", "mms_pdu", "mms_parts");
          mk localmk = localjp.a(paramInt2);
          if (localmk != null)
            if (paramBoolean)
              localjp.c(localjp.a(localmk.phonenum));
            else
              localjp.b(localmk);
        }
        else if (paramInt1 == 1)
        {
          hi localhi = new hi(0);
          ky localky = localhi.a(paramInt2);
          if (localky != null)
            if (paramBoolean)
              localhi.a(localhi.a(localky.phonenum));
            else
              localhi.c(localky);
        }
      }
    }

    public final boolean a(int paramInt1, int paramInt2)
      throws RemoteException
    {
      boolean bool1 = TMSLiteService.a(TMSLiteService.this).a();
      boolean bool2 = false;
      if (!bool1);
      ConnectType localConnectType1;
      ConnectType localConnectType2;
      do
      {
        return bool2;
        localConnectType1 = NetworkUtil.getNetworkType();
        localConnectType2 = ConnectType.CT_NONE;
        bool2 = false;
      }
      while (localConnectType1 == localConnectType2);
      TMSApplication.getApplicaionContext();
      zs localzs = new zs();
      if (paramInt1 == 0)
      {
        mk localmk = new jp("smslog", "mms_pdu", "mms_parts").a(paramInt2);
        if (localmk != null)
          new zv(localzs, true, localmk, null).start();
      }
      while (true)
      {
        bool2 = true;
        break;
        if (paramInt1 == 1)
        {
          ky localky = new hi(0).a(paramInt2);
          if (localky != null)
            new aaa(localzs, true, localky, null).start();
        }
      }
    }

    public final boolean a(String paramString1, String paramString2, int paramInt)
      throws RemoteException
    {
      boolean bool1 = TMSLiteService.a(TMSLiteService.this).a();
      boolean bool2 = false;
      if (!bool1);
      hq localhq1;
      hq localhq2;
      boolean bool3;
      do
      {
        do
        {
          return bool2;
          localhq1 = new hq(0);
          localhq2 = new hq(1);
          if (paramInt != 0)
            break;
          bool2 = false;
        }
        while (paramString2 == null);
        bool3 = localhq1.b(paramString2);
        bool2 = false;
      }
      while (bool3);
      localhq1.a(new lf(paramString1, paramString2, 0));
      f.c().c = hp.a(new hq(0));
      lf locallf1 = localhq2.a(paramString2);
      if (locallf1 != null)
      {
        localhq2.c(locallf1);
        f.c().b = hp.a(new hq(1));
      }
      while (true)
      {
        bool2 = true;
        break;
        if (paramInt == 1)
        {
          bool2 = false;
          if (paramString2 == null)
            break;
          boolean bool4 = localhq2.b(paramString2);
          bool2 = false;
          if (bool4)
            break;
          localhq2.a(new lf(paramString1, paramString2, 1));
          f.c().b = hp.a(new hq(1));
          lf locallf2 = localhq1.a(paramString2);
          if (locallf2 != null)
          {
            localhq1.c(locallf2);
            f.c().c = hp.a(new hq(0));
          }
        }
      }
    }

    public final int b()
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (int i = 0; ; i = hh.a().b())
        return i;
    }

    public final void b(int paramInt)
      throws RemoteException
    {
      new jp("smslog", "mms_pdu", "mms_parts").b(paramInt);
    }

    public final void b(int paramInt1, int paramInt2)
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        hq localhq = new hq(0);
        if ((paramInt2 != 0) && (paramInt2 == 1))
          localhq = new hq(1);
        lf locallf = localhq.a(paramInt1);
        if (locallf != null)
          localhq.c(locallf);
      }
    }

    public final void b(int paramInt1, int paramInt2, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        if (paramInt1 == 0)
        {
          jp localjp = new jp("smslog", "mms_pdu", "mms_parts");
          mk localmk = localjp.a(paramInt2);
          if (localmk != null)
            if (paramBoolean)
              localjp.b(localmk.phonenum);
            else
              localjp.a(localmk);
        }
        else if (paramInt1 == 1)
        {
          hi localhi = new hi(0);
          ky localky = localhi.a(paramInt2);
          if (localky != null)
            if (paramBoolean)
              localhi.b(localky.phonenum);
            else
              localhi.b(localky);
        }
      }
    }

    public final int c()
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (int i = 0; ; i = hh.a().e())
        return i;
    }

    public final ArrayList<bzo> c(int paramInt)
    {
      Object localObject;
      if (!TMSLiteService.a(TMSLiteService.this).a())
        localObject = new ArrayList();
      while (true)
      {
        return localObject;
        ArrayList localArrayList = new ArrayList();
        try
        {
          List localList = new hq(0).a();
          if ((paramInt != 0) && (paramInt == 1))
            localList = new hq(1).a();
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            lf locallf = (lf)localIterator.next();
            bzo localbzo = new bzo();
            localbzo.put("ContactName", StringUtil.assertNotNullString(locallf.name));
            localbzo.put("ContactNumber", locallf.phonenum);
            localbzo.put("Id", locallf.id);
            localArrayList.add(localbzo);
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          localObject = localArrayList;
        }
      }
    }

    public final void c(int paramInt1, int paramInt2)
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        hh localhh = hh.a();
        localhh.b(paramInt1);
        if (paramInt1 == 3)
          localhh.a(paramInt2);
      }
    }

    public final void d(int paramInt)
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        hh.a().c(paramInt);
      }
    }
  }

  final class b
  {
    private PackageManager a = TMSLiteService.this.getPackageManager();
    private HashMap<Long, Boolean> b = new HashMap();
    private ArrayList<String> c = new ArrayList();

    public b()
    {
      this.c.add("com.qq.AppService");
      this.c.add("com.tencent.tmslite.demo");
      this.c.add("com.wandoujia.phoenix2");
      this.c.add("com.apkol.tool");
      this.c.add("com.baoruan.helper");
      this.c.add("com.shuame.sprite");
    }

    public final boolean a()
    {
      Long localLong = Long.valueOf(Binder.getCallingUid());
      if (!this.b.containsKey(localLong))
      {
        String[] arrayOfString = this.a.getPackagesForUid(localLong.intValue());
        if (arrayOfString != null)
        {
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
          {
            String str = arrayOfString[j];
            if (this.c.contains(str))
              this.b.put(localLong, Boolean.valueOf(true));
          }
        }
      }
      return ((Boolean)this.b.get(localLong)).booleanValue();
    }
  }

  final class c extends bzt
  {
    private OptimizeManager a = (OptimizeManager)ManagerCreator.getManager(OptimizeManager.class);
    private AppListManager b = (AppListManager)ManagerCreator.getManager(AppListManager.class);
    private SoftwareManager c = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);

    public c()
    {
    }

    public final ArrayList<bzo> a()
      throws RemoteException
    {
      ArrayList localArrayList1 = new ArrayList();
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (ArrayList localArrayList4 = localArrayList1; ; localArrayList4 = localArrayList1)
      {
        return localArrayList4;
        IMemoryHelper localIMemoryHelper = this.a.getMemoryHelper();
        ArrayList localArrayList2 = this.c.getInstalledApp(1, 2);
        ArrayList localArrayList3 = new ArrayList();
        Iterator localIterator1 = localArrayList2.iterator();
        while (localIterator1.hasNext())
          localArrayList3.add(((AppEntity)localIterator1.next()).getPackageName());
        Iterator localIterator2 = localIMemoryHelper.getAllAppPackageStats(localArrayList3).iterator();
        while (localIterator2.hasNext())
        {
          PackageStats localPackageStats = (PackageStats)localIterator2.next();
          if ((localPackageStats != null) && (localPackageStats.cacheSize > 0L))
          {
            Iterator localIterator3 = localArrayList2.iterator();
            while (localIterator3.hasNext())
            {
              AppEntity localAppEntity = (AppEntity)localIterator3.next();
              if (localAppEntity.getPackageName().equals(localPackageStats.packageName))
                try
                {
                  bzo localbzo = new bzo();
                  localbzo.put("PackageName", localAppEntity.getPackageName());
                  localbzo.put("AppName", localAppEntity.getAppName());
                  localbzo.put("CacheSize", localPackageStats.cacheSize);
                  localArrayList1.add(localbzo);
                }
                catch (JSONException localJSONException)
                {
                  localJSONException.printStackTrace();
                }
            }
          }
        }
      }
    }

    public final ArrayList<bzo> a(boolean paramBoolean)
      throws RemoteException
    {
      ArrayList localArrayList1 = new ArrayList();
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
      {
        return localArrayList2;
        Iterator localIterator = this.a.getAutoBootHelper().getAllAutoBootApps().iterator();
        while (localIterator.hasNext())
        {
          IAutoBootHelper.Pair localPair = (IAutoBootHelper.Pair)localIterator.next();
          AppEntity localAppEntity = this.c.getAppInfo((String)localPair.first, 1);
          try
          {
            if ((!localAppEntity.isSystemApp()) && ((!paramBoolean) || ((!this.b.contains(localAppEntity.getPackageName(), SoftListType.WHITELIST_COMMON)) && (!TMSApplication.getApplicaionContext().getPackageName().equals(localAppEntity.getPackageName())))))
            {
              bzo localbzo = new bzo();
              localbzo.put("PackageName", localAppEntity.getPackageName());
              localbzo.put("AppName", localAppEntity.getAppName());
              localbzo.put("AutoBoot", localPair.second);
              localArrayList1.add(localbzo);
            }
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
          }
        }
      }
    }

    public final boolean a(int paramInt)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (boolean bool = false; ; bool = super.a(paramInt))
        return bool;
    }

    public final boolean a(String paramString)
      throws RemoteException
    {
      boolean bool;
      if (!TMSLiteService.a(TMSLiteService.this).a())
        bool = false;
      while (true)
      {
        return bool;
        try
        {
          this.a.closeProcess(paramString);
          bool = true;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            localNameNotFoundException.printStackTrace();
        }
      }
    }

    public final boolean a(String paramString, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (boolean bool = false; ; bool = this.a.getAutoBootHelper().setAutoBootEnable(paramString, paramBoolean))
        return bool;
    }

    public final boolean a(List<String> paramList)
      throws RemoteException
    {
      boolean bool;
      if (!TMSLiteService.a(TMSLiteService.this).a())
        bool = false;
      while (true)
      {
        return bool;
        try
        {
          this.a.closeProcess(paramList);
          bool = true;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            localNameNotFoundException.printStackTrace();
        }
      }
    }

    public final boolean a(List<String> paramList, boolean paramBoolean)
      throws RemoteException
    {
      boolean bool;
      if (!TMSLiteService.a(TMSLiteService.this).a())
        bool = false;
      while (true)
      {
        return bool;
        IAutoBootHelper localIAutoBootHelper = this.a.getAutoBootHelper();
        Iterator localIterator = paramList.iterator();
        bool = true;
        while (localIterator.hasNext())
          bool &= localIAutoBootHelper.setAutoBootEnable((String)localIterator.next(), paramBoolean);
      }
    }

    public final ArrayList<bzo> b(boolean paramBoolean)
      throws RemoteException
    {
      ArrayList localArrayList1 = new ArrayList();
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
      {
        return localArrayList2;
        zo localzo = zo.a();
        localzo.e();
        Iterator localIterator = localzo.a(true).iterator();
        while (localIterator.hasNext())
        {
          kw localkw = (kw)localIterator.next();
          if ((!paramBoolean) || (localzo.c(localkw)))
            try
            {
              bzo localbzo = new bzo();
              localbzo.put("PackageName", localkw.getPackageName());
              localbzo.put("AppName", localkw.getAppName());
              localbzo.put("RamSize", localkw.G());
              localArrayList1.add(localbzo);
            }
            catch (JSONException localJSONException)
            {
              localJSONException.printStackTrace();
            }
        }
      }
    }

    public final boolean b()
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        this.a.getMemoryHelper().clearAllCacheData();
      }
    }

    public final boolean c()
      throws RemoteException
    {
      boolean bool1 = TMSLiteService.a(TMSLiteService.this).a();
      boolean bool2 = false;
      if (!bool1);
      while (true)
      {
        return bool2;
        int i = ScriptHelper.canRunAtRoot();
        bool2 = false;
        if (i == 0)
          bool2 = true;
      }
    }

    public final boolean d()
      throws RemoteException
    {
      boolean bool1 = TMSLiteService.a(TMSLiteService.this).a();
      boolean bool2 = false;
      if (!bool1);
      while (true)
      {
        return bool2;
        int i = ScriptHelper.canRunAtRoot();
        bool2 = false;
        if (i == 0)
          bool2 = true;
      }
    }
  }

  public final class d extends bzy
  {
    private QScannerManager a = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);
    private bzu b;
    private byte[] c = new byte[0];
    private QScanListener d = new abo(this);

    d()
    {
    }

    public final void a()
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        this.a.pauseScan();
      }
    }

    public final void a(bzu parambzu, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        synchronized (this.c)
        {
          this.b = parambzu;
          this.a.scanInstalledPackages(this.d, paramBoolean);
        }
      }
    }

    public final void a(List<String> paramList, bzu parambzu, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        synchronized (this.c)
        {
          this.b = parambzu;
          this.a.scanPackages(paramList, this.d, paramBoolean);
        }
      }
    }

    public final boolean a(int paramInt)
    {
      return super.a(paramInt);
    }

    public final void b()
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        this.a.continueScan();
      }
    }

    public final void b(bzu parambzu, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        synchronized (this.c)
        {
          this.b = parambzu;
          this.a.scanSdcardApks(this.d, paramBoolean);
        }
      }
    }

    public final void b(List<String> paramList, bzu parambzu, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        synchronized (this.c)
        {
          this.b = parambzu;
          this.a.scanApks(paramList, this.d, paramBoolean);
        }
      }
    }

    public final void c()
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        this.a.cancelScan();
      }
    }

    public final void c(bzu parambzu, boolean paramBoolean)
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        synchronized (this.c)
        {
          this.b = parambzu;
          this.a.scanGlobal(this.d, paramBoolean);
        }
      }
    }

    public final void d()
      throws RemoteException
    {
      if (!TMSLiteService.a(TMSLiteService.this).a());
      while (true)
      {
        return;
        this.a.freeScanner();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.TMSLiteService
 * JD-Core Version:    0.6.2
 */