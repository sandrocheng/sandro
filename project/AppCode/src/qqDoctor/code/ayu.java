import QQPIM.HotWordResInfo;
import QQPIM.HotwordInfo;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.market.IFetchHotWordListener;
import com.tencent.tmsecure.module.market.ResponseInfo;
import java.util.ArrayList;

final class ayu
  implements IFetchHotWordListener
{
  ayu(ayt paramayt)
  {
  }

  public final void onReceive(ResponseInfo paramResponseInfo, HotWordResInfo paramHotWordResInfo)
  {
    if (paramResponseInfo.type == 0)
    {
      if (paramHotWordResInfo.getHotwords() == null);
      while (true)
      {
        return;
        ayp.g(this.a.a.a).clear();
        if (paramHotWordResInfo.getHotwords().size() != 0)
          break;
        this.a.a.a.c.sendEmptyMessage(19);
        this.a.a.a.c.sendEmptyMessage(-2);
      }
      for (int i = 0; i < paramHotWordResInfo.getHotwords().size(); i++)
        ayp.g(this.a.a.a).add(((HotwordInfo)paramHotWordResInfo.getHotwords().get(i)).hotword);
      ayp.a(ayp.g(this.a.a.a));
      ayp.b(ayp.g(this.a.a.a));
      ayp.c(ayp.g(this.a.a.a));
      ayp.h(this.a.a.a).a(ayp.g(this.a.a.a));
      ayp.h(this.a.a.a).x(System.currentTimeMillis());
      ayp.i(this.a.a.a);
      if (ayp.j(this.a.a.a) == true)
      {
        this.a.a.a.c.sendEmptyMessage(17);
        ayp.k(this.a.a.a);
      }
    }
    while (true)
    {
      this.a.a.a.c.sendEmptyMessage(-2);
      break;
      this.a.a.a.c.sendEmptyMessage(18);
      continue;
      Message localMessage = new Message();
      localMessage.obj = Integer.valueOf(paramResponseInfo.code);
      localMessage.what = 14;
      this.a.a.a.c.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayu
 * JD-Core Version:    0.6.2
 */