import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.view.market.SearchCenterView;
import java.util.Stack;

final class ayr extends Handler
{
  ayr(ayp paramayp)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case -1:
    case -2:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    }
    while (true)
    {
      return;
      if (this.a.b == null)
      {
        this.a.b = a.a(ayp.b(this.a), ayp.c(this.a).getResources().getString(2131427883), true, ayp.d(this.a));
        this.a.b.show();
        continue;
        if (this.a.b != null)
        {
          this.a.b.dismiss();
          this.a.b = null;
        }
        this.a.refreshListData();
        continue;
        this.a.a(((Integer)paramMessage.obj).intValue());
        removeMessages(14);
        continue;
        ayp.a(this.a, (String)paramMessage.obj);
        ayp.a(this.a, new Thread(new ays(this)));
        ayp.f(this.a).start();
        continue;
        ayp.a(this.a, new Thread(new ayt(this)));
        ayp.f(this.a).start();
        continue;
        ayp.m(this.a).setTranslateHotWordText(ayp.l(this.a));
        ayp.m(this.a).setTranslateView();
        ayp.m(this.a).d();
        continue;
        ayp.m(this.a).setTranslateHotWordText(ayp.l(this.a));
        ayp.m(this.a).f();
        continue;
        if (ayp.n(this.a) > 0)
        {
          ayp.o(this.a).setVisibility(8);
          ayp.p(this.a).setVisibility(0);
          ayp.q(this.a).setVisibility(0);
          ayp.r(this.a).setVisibility(8);
          ayp.s(this.a).setVisibility(8);
          this.a.a.add(Integer.valueOf(2));
        }
        else if (ayp.n(this.a) == 0)
        {
          ayp.t(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayr
 * JD-Core Version:    0.6.2
 */