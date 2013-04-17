import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zy extends Thread
{
  public zy(zs paramzs, boolean paramBoolean1, List paramList, boolean paramBoolean2, dv paramdv)
  {
  }

  public final void run()
  {
    int i;
    ArrayList localArrayList1;
    while (true)
    {
      mm localmm;
      synchronized (this.e.a)
      {
        i = this.e.d.dc();
        localArrayList1 = new ArrayList();
        if (!this.a)
          break;
        Iterator localIterator = this.b.iterator();
        if (!localIterator.hasNext())
          break;
        mk localmk = (mk)localIterator.next();
        if (localmk == null)
          continue;
        localmm = this.e.a(localmk, this.c, true);
        if (localmm == null)
          continue;
        if (localmm.a > 0)
        {
          this.e.b.b(localmm);
          localArrayList1.add(localmm);
        }
      }
      this.e.b.a(localmm);
    }
    ArrayList localArrayList2 = this.e.b.a(localArrayList1, this.e.d.db(), i);
    ArrayList localArrayList3 = zs.a(localArrayList2);
    int j = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSms(localArrayList3);
    if (j == 0)
      this.e.b.a(localArrayList2);
    if (this.d != null)
      this.d.a(Integer.valueOf(j));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zy
 * JD-Core Version:    0.6.2
 */