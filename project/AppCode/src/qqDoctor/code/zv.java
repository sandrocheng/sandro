import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;

public final class zv extends Thread
{
  public zv(zs paramzs, boolean paramBoolean, mk parammk, dv paramdv)
  {
  }

  public final void run()
  {
    synchronized (this.d.a)
    {
      int i = this.d.d.dc();
      ArrayList localArrayList1 = new ArrayList();
      mm localmm;
      if ((this.a) && (this.b != null))
      {
        localmm = this.d.a(this.b, true, true);
        if (localmm != null)
        {
          if (localmm.a <= 0)
            break label185;
          this.d.b.b(localmm);
          localArrayList1.add(localmm);
        }
      }
      ArrayList localArrayList2 = this.d.b.a(localArrayList1, this.d.d.db(), i);
      ArrayList localArrayList3 = zs.a(localArrayList2);
      int j = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSms(localArrayList3);
      if (j == 0)
        this.d.b.a(localArrayList2);
      if (this.c != null)
        this.c.a(Integer.valueOf(j));
      return;
      label185: this.d.b.a(localmm);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zv
 * JD-Core Version:    0.6.2
 */