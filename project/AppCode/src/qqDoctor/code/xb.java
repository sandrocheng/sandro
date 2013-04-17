import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.update.UpdateManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public final class xb
  implements IPackageChangedListener
{
  public static int a;
  public static long b;
  public static int c;
  public static int d;
  public static int e;
  private ArrayList<lc> f;
  private ArrayList<lc> g;
  private ArrayList<lc> h;
  private ArrayList<lc> i;
  private ArrayList<lc> j;
  private SoftwareManager k;
  private Context l;
  private Handler m;
  private ho n;
  private boolean o;
  private boolean p;
  private List<QScanResultEntity> q = new ArrayList();

  public xb(Context paramContext, Handler paramHandler)
  {
    this.m = paramHandler;
    this.l = paramContext;
    this.n = ho.a();
    this.k = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
  }

  public static void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    new iy(QQPimApplication.a()).b.putBoolean("netword_service_status", paramBoolean1).commit();
    ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setEnable(paramBoolean1);
    if (paramBoolean2)
      ov.a().a(true, false, true);
  }

  private boolean a(String paramString)
  {
    List localList = this.q;
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (!((QScanResultEntity)localIterator.next()).packageName.equals(paramString));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void b(String paramString)
  {
    new StringBuilder("OptimizationUtil updateScanUI  pkgName ").append(paramString).toString();
    Iterator localIterator1 = this.g.iterator();
    lc locallc;
    List localList2;
    if (localIterator1.hasNext())
    {
      locallc = (lc)localIterator1.next();
      if (locallc.b != 1002)
        break label202;
      localList2 = (List)locallc.c;
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.addAll(localList2);
      Iterator localIterator3 = localArrayList2.iterator();
      while (localIterator3.hasNext())
      {
        QScanResultEntity localQScanResultEntity2 = (QScanResultEntity)localIterator3.next();
        if (localQScanResultEntity2.packageName.equals(paramString))
          localList2.remove(localQScanResultEntity2);
      }
    }
    for (int i2 = 1; ; i2 = 0)
    {
      this.q = localList2;
      if (i2 == 0)
        break;
      if (localList2.size() == 0)
      {
        this.g.remove(locallc);
        locallc.b = 3010;
        locallc.c = localList2;
        this.j.add(locallc);
        l();
      }
      label201: return;
      label202: List localList1;
      if (locallc.b == 1007)
      {
        localList1 = (List)locallc.c;
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.addAll(localList1);
        Iterator localIterator2 = localArrayList1.iterator();
        while (localIterator2.hasNext())
        {
          QScanResultEntity localQScanResultEntity1 = (QScanResultEntity)localIterator2.next();
          if (localQScanResultEntity1.packageName.equals(paramString))
            localList1.remove(localQScanResultEntity1);
        }
      }
      for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label359;
        if (localList1.size() != 0)
          break label201;
        this.g.remove(locallc);
        locallc.b = 3013;
        locallc.c = localList1;
        this.j.add(locallc);
        l();
        break label201;
        break;
      }
      label359: break;
    }
  }

  private void m()
  {
    Message localMessage1 = this.m.obtainMessage(109, this.l.getString(2131427904));
    this.m.sendMessage(localMessage1);
    ArrayList localArrayList1 = new ArrayList();
    AtomicBoolean localAtomicBoolean = new AtomicBoolean();
    localAtomicBoolean.set(false);
    localArrayList1.add(Boolean.valueOf(false));
    QScannerManager localQScannerManager = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);
    xe localxe = new xe(localAtomicBoolean);
    Object localObject1 = null;
    int i1 = 0;
    if (i1 < this.f.size())
      if (((lc)this.f.get(i1)).a != 0)
        break label350;
    label350: for (Object localObject2 = (ArrayList)((lc)this.f.get(i1)).e; ; localObject2 = localObject1)
    {
      i1++;
      localObject1 = localObject2;
      break;
      ArrayList localArrayList2 = localQScannerManager.cloudScan(localObject1, localxe);
      lc locallc = new lc();
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
      {
        QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator.next();
        if ((localQScanResultEntity.type == 3) && (!a(localQScanResultEntity.packageName)))
          localArrayList3.add(localQScanResultEntity);
      }
      this.q = localArrayList3;
      locallc.c = localArrayList3;
      if (!localAtomicBoolean.get())
      {
        km localkm = f.d();
        long l1 = System.currentTimeMillis();
        localkm.a.putLong("last_time_of_whole_scan", l1).commit();
        Message localMessage3 = this.m.obtainMessage(106, 2, 2, locallc);
        this.m.sendMessage(localMessage3);
      }
      while (true)
      {
        localQScannerManager.freeScanner();
        return;
        Message localMessage2 = this.m.obtainMessage(107, 2, 2, locallc);
        this.m.sendMessage(localMessage2);
      }
    }
  }

  public final void a()
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.g.size())
      {
        lc locallc = (lc)this.g.get(i1);
        if (locallc.b == 1003)
        {
          this.n.a(true);
          hh.a().a(true);
          ov.a().a(false, true, true);
          this.g.remove(locallc);
          locallc.b = 3003;
          locallc.c = new Boolean(true);
          this.j.add(locallc);
          l();
        }
      }
      else
      {
        return;
      }
  }

  public final void a(ArrayList<lc> paramArrayList)
  {
    this.f = paramArrayList;
  }

  public final void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public final boolean a(BaseView paramBaseView, gx.b paramb)
  {
    boolean bool1 = false;
    this.o = false;
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = this.g.iterator();
    while (localIterator1.hasNext())
    {
      lc locallc = (lc)localIterator1.next();
      if ((locallc.b == 1002) || (locallc.b == 1007))
        localArrayList1.addAll((List)locallc.c);
    }
    Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427909));
    this.m.sendMessage(localMessage);
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator2 = localArrayList1.iterator();
    while (localIterator2.hasNext())
      localArrayList2.add(((QScanResultEntity)localIterator2.next()).packageName);
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    ArrayList localArrayList5 = new ArrayList();
    int i1 = 0;
    if (i1 < localArrayList2.size())
    {
      String str2 = (String)localArrayList2.get(i1);
      kw localkw = a.a(this.k.getAppInfo(str2, 65), false);
      if (localkw != null)
      {
        if (!localkw.isSystemApp())
          break label267;
        localArrayList4.add(localkw);
      }
      while (true)
      {
        i1++;
        break;
        label267: localArrayList3.add(localkw.getPackageName());
        localArrayList5.add(localkw);
      }
    }
    if (localArrayList4.size() > 0)
      fy.a((Activity)this.l, localArrayList4);
    int i2;
    int i4;
    if (localArrayList3.size() > 0)
      if (ScriptHelper.canRunAtRoot() == 0)
      {
        boolean bool2 = fy.a(localArrayList3);
        new StringBuilder("doUninstallVirus isDelete ").append(bool2).toString();
        ArrayList localArrayList6 = new ArrayList();
        Iterator localIterator3 = localArrayList3.iterator();
        for (i2 = 1; localIterator3.hasNext(); i2 = i4)
        {
          String str1 = (String)localIterator3.next();
          if (!((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled(str1))
            break label554;
          localArrayList6.add(str1);
          i4 = 0;
        }
        if (i2 == 0)
        {
          if (gx.a == null)
            gx.a = new gx();
          gx.b = paramb;
          gx.a(paramBaseView, this.k, localArrayList6);
        }
      }
    while (true)
    {
      return bool1;
      boolean bool3 = this.o;
      int i3 = 0;
      if (!bool3)
        while (i3 < localArrayList3.size())
        {
          b((String)localArrayList3.get(i3));
          i3++;
        }
      bool1 = true;
      continue;
      if (gx.a == null)
        gx.a = new gx();
      gx.b = paramb;
      gx.a(paramBaseView, this.k, localArrayList3);
      bool1 = false;
      continue;
      label554: i4 = i2;
      break;
      bool1 = true;
    }
  }

  public final void b()
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.h.size())
      {
        lc locallc = (lc)this.h.get(i1);
        if (locallc.b == 2005)
        {
          jo.a().b.putBoolean("isopen", true).commit();
          this.h.remove(locallc);
          locallc.b = 3009;
          locallc.c = new Boolean(true);
          this.j.add(locallc);
          l();
        }
      }
      else
      {
        return;
      }
  }

  public final void b(ArrayList<lc> paramArrayList)
  {
    this.g = paramArrayList;
  }

  public final void c()
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.g.size())
      {
        lc locallc = (lc)this.g.get(i1);
        if (locallc.b == 1005)
        {
          this.n.p(true);
          this.g.remove(locallc);
          locallc.b = 3004;
          locallc.c = new Boolean(true);
          this.j.add(locallc);
          l();
        }
      }
      else
      {
        return;
      }
  }

  public final void c(ArrayList<lc> paramArrayList)
  {
    this.h = paramArrayList;
  }

  public final void d()
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.h.size())
      {
        lc locallc = (lc)this.h.get(i1);
        if (locallc.b == 2007)
        {
          a(true, true);
          this.h.remove(locallc);
          locallc.b = 3005;
          locallc.c = new Boolean(true);
          this.j.add(locallc);
          l();
        }
      }
      else
      {
        return;
      }
  }

  public final void d(ArrayList<lc> paramArrayList)
  {
    this.i = paramArrayList;
  }

  public final void e()
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.h.size())
      {
        lc locallc = (lc)this.h.get(i1);
        if (locallc.b == 2013)
        {
          if (ScriptHelper.canRunAtRoot() == 0)
          {
            xi.a(this.l, null);
            if (((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isFinishInit())
            {
              this.n.z(true);
              xi.a(true);
            }
          }
          this.n.d(true);
          this.n.s();
          this.h.remove(locallc);
          locallc.b = 3012;
          locallc.c = new Boolean(true);
          this.j.add(locallc);
          l();
        }
      }
      else
      {
        return;
      }
  }

  public final void e(ArrayList<lc> paramArrayList)
  {
    this.j = paramArrayList;
  }

  public final void f()
  {
    Iterator localIterator = this.h.iterator();
    while (localIterator.hasNext())
    {
      lc locallc = (lc)localIterator.next();
      if (locallc.b == 2003)
      {
        Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427903));
        this.m.sendMessage(localMessage);
        this.h.remove(locallc);
        List localList = (List)locallc.c;
        int i1 = 0;
        long l2;
        for (long l1 = 0L; i1 < localList.size(); l1 = l2)
        {
          l2 = l1 + ((kw)localList.get(i1)).I();
          i1++;
        }
        pt.a().a(null);
        ArrayList localArrayList = new ArrayList();
        locallc.e = new Long(l1);
        locallc.c = localArrayList;
        locallc.b = 3007;
        this.j.add(locallc);
        l();
      }
    }
  }

  public final void g()
  {
    Iterator localIterator1 = this.h.iterator();
    while (localIterator1.hasNext())
      if (((lc)localIterator1.next()).b == 2004)
      {
        m();
        return;
        break label48;
      }
    while (true)
    {
      Iterator localIterator2 = this.g.iterator();
      label48: if (localIterator2.hasNext())
      {
        if (((lc)localIterator2.next()).b != 1006)
          break;
        m();
      }
    }
  }

  public final void h()
  {
    Iterator localIterator = this.h.iterator();
    while (localIterator.hasNext())
    {
      lc locallc = (lc)localIterator.next();
      if (locallc.b == 2012)
      {
        Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427907));
        this.m.sendMessage(localMessage);
        List localList = (List)locallc.c;
        int i1 = 0;
        while (true)
          if (i1 < localList.size())
            try
            {
              pn.b((kw)localList.get(i1));
              i1++;
            }
            catch (Exception localException)
            {
              while (true)
                localException.printStackTrace();
            }
        e = localList.size();
        this.h.remove(locallc);
        locallc.b = 3011;
        localList.clear();
        locallc.c = localList;
        this.j.add(locallc);
        l();
      }
    }
  }

  public final void i()
  {
    for (int i1 = 0; i1 < this.h.size(); i1++)
    {
      lc locallc = (lc)this.h.get(i1);
      if (locallc.b == 2006)
      {
        Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427905));
        this.m.sendMessage(localMessage);
        new aaq(this.l, "").a(new xc(this, locallc));
      }
    }
  }

  public final boolean j()
  {
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.g.size();
      boolean bool = false;
      if (i1 < i2)
      {
        lc locallc = (lc)this.g.get(i1);
        if (locallc.b == 1004)
        {
          Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427906));
          this.m.sendMessage(localMessage);
          bool = true;
          UpdateManager localUpdateManager = (UpdateManager)ManagerCreator.getManager(UpdateManager.class);
          localUpdateManager.check(12, new xd(this, localUpdateManager, locallc));
        }
      }
      else
      {
        return bool;
      }
    }
  }

  public final void k()
  {
    Iterator localIterator = this.h.iterator();
    lc locallc;
    ArrayList localArrayList;
    long l2;
    long l3;
    while (localIterator.hasNext())
    {
      locallc = (lc)localIterator.next();
      if (locallc.b == 2002)
      {
        Message localMessage = this.m.obtainMessage(109, this.l.getString(2131427908));
        this.m.sendMessage(localMessage);
        localArrayList = new ArrayList();
        zo localzo = zo.a();
        zk.a locala = new zk(this.l, null).a(false);
        a = locala.b;
        b = locala.c;
        localArrayList.clear();
        localArrayList.addAll(localzo.a(false));
        long l1 = vh.f();
        l2 = vh.e();
        l3 = l2 - l1;
        if (l2 == 0L)
          break label213;
      }
    }
    label213: for (float f1 = (float)(l3 * 100L / l2); ; f1 = 0.0F)
    {
      this.h.remove(locallc);
      locallc.b = 3002;
      locallc.c = localArrayList;
      locallc.d = Integer.valueOf((int)f1);
      this.j.add(locallc);
      l();
      return;
    }
  }

  public final void l()
  {
    this.f.clear();
    this.f.addAll(this.i);
    this.f.addAll(this.h);
    this.f.addAll(this.g);
    this.f.addAll(this.j);
  }

  public final void onPackageAdded(String paramString)
  {
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    this.o = true;
    new StringBuilder("OptimizationUtil onPackageRemoved  arg0 ").append(paramString).toString();
    b(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xb
 * JD-Core Version:    0.6.2
 */