import android.content.Context;
import android.content.res.Resources;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import java.util.List;

final class bpr
  implements Runnable
{
  bpr(bpq parambpq)
  {
  }

  public final void run()
  {
    int i = ((Integer)bpp.a(this.a.a).getTag()).intValue();
    kw localkw = (kw)this.a.a.getAdapter().getDataList().get(i);
    while (true)
    {
      pn localpn;
      synchronized (this.a.a)
      {
        if ((localkw.m()) && (pn.b(localkw)))
        {
          bpp.b(this.a.a).remove(localkw);
          if (!bpp.c(this.a.a).contains(localkw))
            bpp.c(this.a.a).add(localkw);
          localpn = bpp.e(this.a.a);
          if (!localpn.a(localkw))
          {
            if (!localpn.c.equals(""))
              break label478;
            localpn.c += localkw.getPackageName();
            localpn.d.add(localkw.getPackageName());
            localpn.b.n(localpn.c);
          }
          bpp.f(this.a.a).remove(localkw);
          if (!localkw.m())
            break label516;
          str1 = "" + bpp.g(this.a.a).getResources().getString(2131428976);
          String str2 = str1 + localkw.getAppName() + bpp.i(this.a.a).getResources().getString(2131428979);
          Message.obtain(bpp.d(this.a.a), 1, str2).sendToTarget();
          return;
        }
        if (localkw.m())
          break label454;
        if (((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getAutoBootHelper().setAutoBootEnable(localkw.getPackageName(), true))
        {
          localkw.a(true);
          j = 1;
          if (j == 0)
            break label454;
          bpp.c(this.a.a).remove(localkw);
          if (bpp.b(this.a.a).contains(localkw))
            continue;
          bpp.b(this.a.a).add(localkw);
        }
      }
      int j = 0;
      continue;
      label454: Message.obtain(bpp.d(this.a.a), 1, "").sendToTarget();
      continue;
      label478: localpn.c = (localpn.c + ";" + localkw.getPackageName());
      continue;
      label516: String str1 = "" + bpp.h(this.a.a).getResources().getString(2131428977);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpr
 * JD-Core Version:    0.6.2
 */