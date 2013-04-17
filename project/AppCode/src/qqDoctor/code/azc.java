import QQPIM.Category;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.market.CategoryEx;
import com.tencent.tmsecure.module.market.IFetchSpecialCategoryListener;
import com.tencent.tmsecure.module.market.ResponseInfo;
import com.tencent.tmsecure.module.market.SoftSimpleInfoEx;
import com.tencent.tmsecure.module.market.SpecialCategory;
import java.util.ArrayList;
import java.util.Iterator;

final class azc
  implements IFetchSpecialCategoryListener
{
  azc(ayy paramayy)
  {
  }

  public final void onReceive(ResponseInfo paramResponseInfo, SpecialCategory paramSpecialCategory)
  {
    if (paramResponseInfo.type != 0)
    {
      Message localMessage = new Message();
      localMessage.obj = Integer.valueOf(paramResponseInfo.code);
      localMessage.what = 1;
      ayy.l(this.a).sendMessage(localMessage);
    }
    while (true)
    {
      return;
      if (paramSpecialCategory.getCategoryEx() != null)
      {
        Category localCategory = paramSpecialCategory.getCategoryEx().getCategory();
        if (localCategory != null)
        {
          ayy.a(this.a, localCategory.getId());
          ayy.a(this.a, localCategory.getName());
          ayy.b(this.a, localCategory.getDescription());
          ayy.b(this.a, localCategory.getCount());
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = paramSpecialCategory.getSoftSimpleInfoExList().iterator();
          while (localIterator.hasNext())
            localArrayList.add((SoftSimpleInfoEx)localIterator.next());
          ayy.b(this.a, a.a(a.a(localArrayList), this.a.e(), -1));
        }
      }
      ayy.m(this.a).sendEmptyMessage(-2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azc
 * JD-Core Version:    0.6.2
 */