import QQPIM.EModelID;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.ManagerCreator;
import java.util.ArrayList;

final class ce
  implements Runnable
{
  ce(cc paramcc, boolean paramBoolean1, z paramz, boolean paramBoolean2, boolean paramBoolean3)
  {
  }

  public final void run()
  {
    if (cc.b(this.e))
      return;
    cc.a(this.e, true);
    if ((this.a) && (((gg)ManagerCreator.getManager(gg.class)).a() == 0))
      this.b.a(this.c);
    ab localab;
    ArrayList localArrayList1;
    if (this.d)
    {
      localab = ab.a();
      localArrayList1 = new ArrayList();
      for (int n : bc.e)
      {
        String str = EModelID.convert(n).toString();
        localArrayList1.addAll(ab.a(localab.a.getString(str, null), n));
      }
      for (int k = 0; k < localArrayList1.size(); k++)
        new StringBuilder("ActionStatsManager read actionType ").append(((bc)localArrayList1.get(k)).a).append(" actionTime ").append(((bc)localArrayList1.get(k)).c).append(" actionCount ").append(((bc)localArrayList1.get(k)).b).append(" action ErrorCode ").append(((bc)localArrayList1.get(k)).d).toString();
      int m = s.a.d().c();
      switch (m)
      {
      default:
        if (m >= 10)
        {
          bc localbc13 = new bc();
          localbc13.a = 50009;
          localbc13.c = System.currentTimeMillis();
          localbc13.b = 1;
          localArrayList1.add(localbc13);
        }
      case 4:
        label333: if (s.a.d().r())
        {
          bc localbc2 = new bc();
          localbc2.a = 50017;
          localbc2.c = System.currentTimeMillis();
          localbc2.b = 1;
          localArrayList1.add(localbc2);
        }
        if (s.a.d().u())
        {
          bc localbc3 = new bc();
          localbc3.a = 50018;
          localbc3.c = System.currentTimeMillis();
          localbc3.b = 1;
          localArrayList1.add(localbc3);
        }
        if (s.a.d().q())
        {
          bc localbc4 = new bc();
          localbc4.a = 50019;
          localbc4.c = System.currentTimeMillis();
          localbc4.b = 1;
          localArrayList1.add(localbc4);
        }
        if (s.a.d().p())
        {
          bc localbc5 = new bc();
          localbc5.a = 50020;
          localbc5.c = System.currentTimeMillis();
          localbc5.b = 1;
          localArrayList1.add(localbc5);
          switch (s.a.d().o())
          {
          default:
            bc localbc10 = new bc();
            localbc10.a = 50023;
            localbc10.c = System.currentTimeMillis();
            localbc10.b = 1;
            localArrayList1.add(localbc10);
          case 1:
          case 2:
          }
        }
        break;
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      if (s.a.d().c() == 4)
      {
        bc localbc7 = new bc();
        localbc7.a = 50028;
        localbc7.c = System.currentTimeMillis();
        localbc7.b = 1;
        localArrayList1.add(localbc7);
      }
      if (((fs)ManagerCreator.getManager(fs.class)).a("com.tencent.qqpimsecure"))
      {
        bc localbc8 = new bc();
        localbc8.a = 50030;
        localbc8.c = System.currentTimeMillis();
        localbc8.b = 1;
        localArrayList1.add(localbc8);
      }
      ArrayList localArrayList2 = ab.a(localArrayList1);
      if (((gg)ManagerCreator.getManager(gg.class)).a(localArrayList2) == 0)
      {
        localab.b.clear().commit();
        this.b.b(System.currentTimeMillis());
      }
      cc.a(this.e, false);
      cc.c(this.e);
      break;
      bc localbc12 = new bc();
      localbc12.a = 50006;
      localbc12.c = System.currentTimeMillis();
      localbc12.b = 1;
      localArrayList1.add(localbc12);
      break label333;
      bc localbc11 = new bc();
      localbc11.a = 50007;
      localbc11.c = System.currentTimeMillis();
      localbc11.b = 1;
      localArrayList1.add(localbc11);
      break label333;
      bc localbc1 = new bc();
      localbc1.a = 50008;
      localbc1.c = System.currentTimeMillis();
      localbc1.b = 1;
      localArrayList1.add(localbc1);
      break label333;
      bc localbc9 = new bc();
      localbc9.a = 50021;
      localbc9.c = System.currentTimeMillis();
      localbc9.b = 1;
      localArrayList1.add(localbc9);
      continue;
      bc localbc6 = new bc();
      localbc6.a = 50022;
      localbc6.c = System.currentTimeMillis();
      localbc6.b = 1;
      localArrayList1.add(localbc6);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ce
 * JD-Core Version:    0.6.2
 */