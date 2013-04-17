import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.List;

public final class zz extends Thread
{
  public zz(zs paramzs, boolean paramBoolean, List paramList, dv paramdv)
  {
  }

  public final void run()
  {
    synchronized (this.d.a)
    {
      ArrayList localArrayList1 = new ArrayList();
      if ((this.a) && (this.b != null))
      {
        int j = this.b.size();
        for (int k = 0; k < j; k++)
          localArrayList1.add(this.d.a((CallLogEntity)this.b.get(k)));
        hk localhk2 = this.d.c;
        localhk2.a.a(new hl(localhk2, localArrayList1));
      }
      ArrayList localArrayList2 = this.d.c.a();
      int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportTel(localArrayList2);
      if (i == 0)
      {
        hk localhk1 = this.d.c;
        localhk1.a.a("callreport", null, null);
        localhk1.a.b();
      }
      if (this.c != null)
        this.c.a(Integer.valueOf(i));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zz
 * JD-Core Version:    0.6.2
 */