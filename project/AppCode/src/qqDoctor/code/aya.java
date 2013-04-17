import android.os.Handler;
import com.tencent.tmsecure.module.market.IFetchSpecialCategoryListener;
import com.tencent.tmsecure.module.market.ResponseInfo;
import com.tencent.tmsecure.module.market.SpecialCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class aya
  implements IFetchSpecialCategoryListener
{
  aya(axx paramaxx)
  {
  }

  public final void onReceive(ResponseInfo paramResponseInfo, SpecialCategory paramSpecialCategory)
  {
    if (paramResponseInfo.type == 2)
    {
      axx.c(this.a);
      axx.d(this.a).sendEmptyMessage(2);
      axx.e(this.a).sendEmptyMessage(-2);
    }
    while (true)
    {
      return;
      if (paramResponseInfo.type != 0)
      {
        axx.f(this.a).sendEmptyMessage(-2);
      }
      else if (paramSpecialCategory.getSoftSimpleInfoExList() == null)
      {
        axx.g(this.a).sendEmptyMessage(-2);
      }
      else
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.addAll(paramSpecialCategory.getSoftSimpleInfoExList());
        List localList = a.a(localArrayList1);
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
          ((kw)localIterator.next()).f(2);
        axx.h(this.a).addAll(a.a(localList, this.a.e(), 15));
        this.a.a_();
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.addAll(a.c(axx.i(this.a)));
        if (localArrayList1.size() < axx.j(this.a))
        {
          axx.k(this.a);
          axx.l(this.a).sendEmptyMessage(3);
        }
        new StringBuilder("RankingView fetchSpecialCategory mScrollPage ").append(axx.m(this.a)).toString();
        if ((axx.m(this.a) == 0) && (axx.n(this.a).size() > 0))
        {
          jt localjt = axx.o(this.a);
          String str = localjt.m;
          localjt.a.a(new ju(localjt, str, localArrayList2));
          axx.p(this.a).s(System.currentTimeMillis());
        }
        axx.q(this.a).sendEmptyMessage(-2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aya
 * JD-Core Version:    0.6.2
 */