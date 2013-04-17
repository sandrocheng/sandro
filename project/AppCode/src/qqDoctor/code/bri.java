import QQPIM.AndroidSimpleInfoExpand;
import QQPIM.SoftKey;
import QQPIM.SoftSimpleInfo;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.market.IFetchSpecialCategoryListener;
import com.tencent.tmsecure.module.market.ResponseInfo;
import com.tencent.tmsecure.module.market.SoftSimpleInfoEx;
import com.tencent.tmsecure.module.market.SpecialCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class bri
  implements IFetchSpecialCategoryListener
{
  bri(brf parambrf)
  {
  }

  public final void onReceive(ResponseInfo paramResponseInfo, SpecialCategory paramSpecialCategory)
  {
    if (paramResponseInfo.type != 0)
    {
      Message localMessage = this.a.b.obtainMessage(1);
      localMessage.arg1 = paramResponseInfo.code;
      localMessage.sendToTarget();
      return;
    }
    List localList1 = a.a(brf.d(this.a).a(brf.c(this.a)), this.a.e(), -1);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramSpecialCategory.softSimpleInfoExList.iterator();
    int i = 0;
    label85: SoftSimpleInfoEx localSoftSimpleInfoEx;
    if (localIterator1.hasNext())
    {
      localSoftSimpleInfoEx = (SoftSimpleInfoEx)localIterator1.next();
      SoftSimpleInfo localSoftSimpleInfo = localSoftSimpleInfoEx.softSimpleInfo;
      localSoftSimpleInfo.type = localSoftSimpleInfoEx.expand.sign;
      if (localSoftSimpleInfoEx.expand.sign == 1)
      {
        Iterator localIterator2 = localList1.iterator();
        i = 1;
        label163: if (localIterator2.hasNext())
          if (!((kv)localIterator2.next()).d.getPackageName().equals(localSoftSimpleInfo.softkey.softname))
            break label330;
      }
    }
    label330: for (int j = 0; ; j = i)
    {
      i = j;
      break label163;
      localArrayList.add(localSoftSimpleInfoEx);
      break label85;
      if (i != 0)
        brf.e(this.a).a(jk.a);
      List localList2 = a.b(localArrayList);
      if (localList2.size() > 0)
      {
        jt localjt = brf.d(this.a);
        String str = brf.c(this.a);
        long l = System.currentTimeMillis();
        localjt.a.a(new ka(localjt, str, localList2, l));
      }
      brf.a(this.a, a.a(localList2, this.a.e(), -1));
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bri
 * JD-Core Version:    0.6.2
 */