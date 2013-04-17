import QQPIM.AndroidSimpleInfoExpand;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.market.IFetchSpecialCategoryListener;
import com.tencent.tmsecure.module.market.ResponseInfo;
import com.tencent.tmsecure.module.market.SoftSimpleInfoEx;
import com.tencent.tmsecure.module.market.SpecialCategory;
import java.util.ArrayList;
import java.util.List;

final class axs
  implements IFetchSpecialCategoryListener
{
  axs(axj paramaxj)
  {
  }

  public final void onReceive(ResponseInfo paramResponseInfo, SpecialCategory paramSpecialCategory)
  {
    if (paramResponseInfo.type != 0)
    {
      Message localMessage = new Message();
      localMessage.obj = Integer.valueOf(paramResponseInfo.code);
      localMessage.what = 1;
      axj.m(this.a).sendMessage(localMessage);
      axj.n(this.a).sendEmptyMessage(-2);
      nd.a().a(26179, paramResponseInfo.code);
    }
    while (true)
    {
      return;
      if (paramSpecialCategory.getSoftSimpleInfoExList() == null)
      {
        axj.o(this.a).sendEmptyMessage(-2);
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.addAll(paramSpecialCategory.getSoftSimpleInfoExList());
        List localList = a.a(localArrayList);
        int i = 0;
        if (i < paramSpecialCategory.getSoftSimpleInfoExList().size())
        {
          kw localkw = (kw)localList.get(i);
          switch (((SoftSimpleInfoEx)paramSpecialCategory.getSoftSimpleInfoExList().get(i)).getExpand().sign)
          {
          default:
            localkw.f(2);
          case 1:
          case 2:
          case 3:
          case 4:
          }
          while (true)
          {
            i++;
            break;
            localkw.f(5);
            continue;
            localkw.f(6);
            continue;
            localkw.f(7);
            continue;
            localkw.f(1);
          }
        }
        axj.p(this.a).addAll(a.a(localList, this.a.e(), 6));
        kv localkv = new kv();
        localkv.d = new kw();
        localkv.mName = "";
        localkv.mParentPath = "";
        axj.q(this.a).add(0, localkv);
        this.a.a_();
        axj.r(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axs
 * JD-Core Version:    0.6.2
 */