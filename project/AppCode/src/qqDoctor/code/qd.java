import QQPIM.SoftListType;
import android.content.SharedPreferences;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class qd
  implements Runnable
{
  public qd(qc paramqc)
  {
  }

  public final void run()
  {
    qo localqo = new qo(this.a);
    lc locallc1 = new lc();
    locallc1.a = 4;
    localqo.c(locallc1);
    boolean bool1 = ho.a().f();
    lc locallc2 = new lc();
    locallc2.a = 4;
    locallc2.c = Boolean.valueOf(bool1);
    localqo.a(locallc2);
    localqo.b(locallc2);
    int i;
    if (this.a.i)
    {
      qc.g = false;
      qc.h = false;
      i = 1;
      if (i == 0)
        break label112;
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label112: qp localqp = new qp(this.a);
      lc locallc3 = new lc();
      locallc3.a = 8;
      localqp.c(locallc3);
      boolean bool2 = ho.a().aB();
      lc locallc4 = new lc();
      locallc4.a = 8;
      locallc4.c = Boolean.valueOf(bool2);
      localqp.a(locallc4);
      localqp.b(locallc4);
      int j;
      label223: int k;
      label359: int m;
      label493: long l3;
      label602: long l6;
      label717: int n;
      label757: long l9;
      if (this.a.i)
      {
        qc.g = false;
        qc.h = false;
        j = 1;
        if (j != 0)
          break label929;
        qq localqq = new qq(this.a);
        lc locallc5 = new lc();
        locallc5.a = 9;
        localqq.c(locallc5);
        boolean bool3 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
        lc locallc6 = new lc();
        locallc6.a = 9;
        locallc6.c = Boolean.valueOf(bool3);
        localqq.a(locallc6);
        localqq.b(locallc6);
        if (!this.a.i)
          break label931;
        qc.g = false;
        qc.h = false;
        k = 1;
        if (k != 0)
          break label935;
        if (qx.a().h() != qx.a.q)
        {
          ql localql = new ql(this.a);
          lc locallc7 = new lc();
          locallc7.a = 1;
          localql.c(locallc7);
          boolean bool4 = jo.a().a.getBoolean("isopen", true);
          lc locallc8 = new lc();
          locallc8.a = 1;
          locallc8.c = Boolean.valueOf(bool4);
          localql.a(locallc8);
          localql.b(locallc8);
        }
        if (!this.a.i)
          break label937;
        qc.g = false;
        qc.h = false;
        m = 1;
        if (m != 0)
          break label941;
        qe localqe = new qe(this.a);
        km localkm1 = f.d();
        lc locallc9 = new lc();
        locallc9.a = 5;
        localqe.c(locallc9);
        lc locallc10 = new lc();
        locallc10.a = 5;
        long l1 = System.currentTimeMillis();
        long l2 = localkm1.b.getLong("last_time_of_update", -1L);
        if (l2 <= 0L)
          break label943;
        l3 = (l1 - l2) / 86400000L;
        if (l3 < 0L)
          break label943;
        locallc10.c = Long.valueOf(l3);
        localqe.b(locallc10);
        qf localqf = new qf(this.a);
        ho localho = ho.a();
        lc locallc11 = new lc();
        locallc11.a = 6;
        localqf.c(locallc11);
        lc locallc12 = new lc();
        locallc12.a = 6;
        long l4 = System.currentTimeMillis();
        long l5 = localho.l();
        if (l5 <= 0L)
          break label949;
        l6 = (l4 - l5) / 86400000L;
        if (l6 < 0L)
          break label949;
        locallc12.c = Long.valueOf(l6);
        localqf.b(locallc12);
        if (!this.a.i)
          break label955;
        qc.g = false;
        qc.h = false;
        n = 1;
        if (n != 0)
          break label959;
        qg localqg = new qg(this.a);
        km localkm2 = f.d();
        lc locallc13 = new lc();
        locallc13.a = 7;
        localqg.c(locallc13);
        lc locallc14 = new lc();
        locallc14.a = 7;
        long l7 = System.currentTimeMillis();
        long l8 = localkm2.b.getLong("last_time_of_whole_scan", -1L);
        if (l8 <= 0L)
          break label961;
        l9 = (l7 - l8) / 86400000L;
        if (l9 < 0L)
          break label961;
        label868: locallc14.c = Long.valueOf(l9);
        localqg.b(locallc14);
        if (!this.a.i)
          break label967;
        qc.g = false;
        qc.h = false;
      }
      label929: label931: label935: label937: label941: label943: label949: label955: label959: label961: label967: for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label973;
        nd.a().a(26188);
        break;
        j = 0;
        break label223;
        break;
        k = 0;
        break label359;
        break;
        m = 0;
        break label493;
        break;
        l3 = 0L;
        break label602;
        l6 = 0L;
        break label717;
        n = 0;
        break label757;
        break;
        l9 = 0L;
        break label868;
      }
      label973: if (ScriptHelper.canRunAtRoot() == 0)
      {
        qh localqh = new qh(this.a);
        lc locallc15 = new lc();
        locallc15.a = 10;
        localqh.c(locallc15);
        List localList = pn.a();
        AppListManager localAppListManager = (AppListManager)ManagerCreator.getManager(AppListManager.class);
        if (pn.a == null)
          pn.a = new pn();
        pn localpn = pn.a;
        for (int i2 = 0; i2 < localList.size(); i2++)
          if ((localAppListManager.contains(((kw)localList.get(i2)).getPackageName(), SoftListType.WHITELIST_COMMON)) || (!((kw)localList.get(i2)).m()) || (localpn.a((kw)localList.get(i2))))
          {
            localList.remove(i2);
            i2--;
          }
        lc locallc16 = new lc();
        locallc16.a = 10;
        locallc16.c = localList;
        localqh.b(locallc16);
        if (this.a.i)
        {
          qc.g = false;
          qc.h = false;
        }
        for (int i3 = 1; ; i3 = 0)
        {
          if (i3 == 0)
            break label1227;
          nd.a().a(26189);
          break;
        }
      }
      label1227: qc localqc1 = this.a;
      qm localqm = new qm(localqc1);
      if (localqc1.b == null)
        localqc1.b = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class));
      lc locallc17 = new lc();
      locallc17.a = 2;
      localqm.c(locallc17);
      zo localzo = zo.a();
      Iterator localIterator1 = localzo.a(false).iterator();
      int i4 = 0;
      while (localIterator1.hasNext())
        if (localzo.c((kw)localIterator1.next()))
          i4++;
      long l10 = vh.f();
      long l11 = vh.e();
      long l12 = l11 - l10;
      float f;
      label1386: int i5;
      if (l11 != 0L)
      {
        f = (float)(100L * l12 / l11);
        lc locallc18 = new lc();
        locallc18.a = 2;
        locallc18.c = Integer.valueOf(i4);
        locallc18.d = Integer.valueOf((int)f);
        localqm.b(locallc18);
        localqc1.b = null;
        if (!this.a.i)
          break label1591;
        qc.g = false;
        qc.h = false;
        i5 = 1;
        label1458: if (i5 != 0)
          break label1595;
        this.a.c = 2;
        qc localqc2 = this.a;
        qn localqn = new qn(localqc2);
        lc locallc19 = new lc();
        locallc19.a = 3;
        localqn.c(locallc19);
        localqc2.a.clear();
        qj localqj = new qj(localqc2, localqn);
        pt.a().b(localqj);
        if (!this.a.i)
          break label1597;
        qc.g = false;
        qc.h = false;
      }
      label1591: label1595: label1597: for (int i6 = 1; ; i6 = 0)
      {
        if (i6 == 0)
          break label1603;
        nd.a().a(26190);
        break;
        f = 0.0F;
        break label1386;
        i5 = 0;
        break label1458;
        break;
      }
      label1603: this.a.c = 1;
      qc localqc3 = this.a;
      qk localqk = new qk(localqc3);
      qi localqi = new qi(localqk);
      ArrayList localArrayList1 = localqc3.f.scanInstalledPackages(localqi, false);
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator2 = localArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator2.next();
        if ((localQScanResultEntity.type == 3) || (localQScanResultEntity.type == 8))
          localArrayList2.add(localQScanResultEntity);
      }
      lc locallc20 = new lc();
      locallc20.a = 0;
      locallc20.c = localArrayList2;
      locallc20.e = localArrayList1;
      localqk.b(locallc20);
      localqc3.f.freeScanner();
      if (this.a.i)
      {
        qc.g = false;
        qc.h = false;
      }
      for (int i7 = 1; ; i7 = 0)
      {
        if (i7 == 0)
          break label1812;
        nd.a().a(26191);
        break;
      }
      label1812: this.a.e.sendEmptyMessage(100);
      qc.g = false;
      qc.h = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qd
 * JD-Core Version:    0.6.2
 */