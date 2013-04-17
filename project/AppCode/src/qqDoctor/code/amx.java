import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class amx
  implements View.OnClickListener
{
  amx(ams paramams, List paramList, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    int i = 0;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    Iterator localIterator1;
    if ((ams.j(this.c) == 4) || (ams.j(this.c) == 3))
      localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
    {
      int n = ((Integer)localIterator1.next()).intValue();
      if (ams.k(this.c).size() > n)
      {
        localArrayList1.add((mk)ams.h(this.c).get(n));
        localArrayList3.add((le)ams.l(this.c).get(n));
        continue;
        if ((ams.j(this.c) == 6) || (ams.j(this.c) == 5))
        {
          Iterator localIterator2 = this.a.iterator();
          while (localIterator2.hasNext())
          {
            int i1 = ((Integer)localIterator2.next()).intValue();
            if (ams.m(this.c).size() <= i1)
              break;
            localArrayList2.add((CallLogEntity)ams.h(this.c).get(i1));
            localArrayList3.add((le)ams.n(this.c).get(i1));
          }
        }
      }
    }
    nd localnd = nd.a();
    if ((ams.o(this.c).aH()) && (ams.j(this.c) == 3))
    {
      ams.a(this.c, localArrayList1, localArrayList3, this.a);
      ams.o(this.c).aI();
      localnd.a(26320);
    }
    while (a.h(ams.v(this.c)))
    {
      zs localzs;
      if (localArrayList1.size() != 0)
      {
        ArrayList localArrayList5 = (ArrayList)ams.w(this.c).a(0);
        int k = localArrayList5.size();
        int m = 0;
        while (true)
          if (m < k)
          {
            mk localmk = new mk();
            localmk.body = ((mh)localArrayList5.get(m)).e;
            localArrayList1.add(localmk);
            m++;
            continue;
            if ((!ams.o(this.c).aH()) && (ams.j(this.c) == 3))
            {
              ams localams2 = this.c;
              ams.a(localams2, localArrayList1, localArrayList3);
              localnd.a(26320);
              break;
            }
            if (ams.j(this.c) == 4)
            {
              ams.a(this.c, localArrayList1);
              ha.c(ams.p(this.c), ams.q(this.c).getString(2131428676) + this.a.size() + ams.r(this.c).getString(2131428682));
              ams.o(this.c).aK();
              localnd.a(26321);
              break;
            }
            if ((ams.o(this.c).aJ()) && (ams.j(this.c) == 5))
            {
              ams.b(this.c, localArrayList2, localArrayList3, this.a);
              ams.o(this.c).aK();
              localnd.a(26327);
              break;
            }
            if ((!ams.o(this.c).aJ()) && (ams.j(this.c) == 5))
            {
              ams localams1 = this.c;
              ams.b(localams1, localArrayList2, localArrayList3);
              localnd.a(26327);
              break;
            }
            if (ams.j(this.c) != 6)
              break;
            ams.b(this.c, localArrayList2);
            ha.c(ams.s(this.c), ams.t(this.c).getString(2131428676) + this.a.size() + ams.u(this.c).getString(2131428682));
            ams.o(this.c).aK();
            localnd.a(26328);
            break;
          }
        localzs = ams.x(this.c);
        if (ams.j(this.c) == 3)
          break label944;
      }
      label944: for (boolean bool = true; ; bool = false)
      {
        new zy(localzs, true, localArrayList1, bool, new amy()).start();
        if (localArrayList2.size() == 0)
          break label977;
        ArrayList localArrayList4 = (ArrayList)ams.w(this.c).a(1);
        int j = localArrayList4.size();
        while (i < j)
        {
          CallLogEntity localCallLogEntity = new CallLogEntity();
          localCallLogEntity.phonenum = ((mh)localArrayList4.get(i)).f;
          localArrayList2.add(localCallLogEntity);
          i++;
        }
      }
      new zz(ams.x(this.c), true, localArrayList2, new amz()).start();
    }
    label977: this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amx
 * JD-Core Version:    0.6.2
 */