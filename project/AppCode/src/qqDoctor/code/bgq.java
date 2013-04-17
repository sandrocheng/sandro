import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.b;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;

final class bgq
  implements LockPatternView.c
{
  bgq(bgo parambgo)
  {
  }

  public final void a()
  {
    this.a.a.removeCallbacks(bgo.e(this.a));
  }

  public final void b()
  {
    this.a.a.removeCallbacks(bgo.e(this.a));
  }

  public final void c()
  {
    int i;
    if (a.a(this.a.a.d()).equals(bgo.f(this.a).cd()))
    {
      bgo.h(this.a).setText(bgo.g(this.a).getString(2131430129));
      if ((bgo.b(this.a) == 2) && (bgo.c(this.a) != null) && (!bgo.c(this.a).equals("")))
        sv.c = bgo.c(this.a);
      String str = ho.a().n();
      if ((str != null) && (!str.equals("")))
      {
        i = 1;
        if (i == 0)
          break label180;
        ha.a(bgo.i(this.a), bgo.j(this.a).getString(2131430130), 17, 0);
        bgo.k(this.a);
        a.d();
        bgo.l(this.a).sendEmptyMessageDelayed(2, 2000L);
      }
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label180: bgo.m(this.a);
      continue;
      this.a.a.setDisplayMode(LockPatternView.b.c);
      bgo.n(this.a);
      bgo.h(this.a).setTextColor(bgo.o(this.a).getResources().getColor(2131296272));
      bgo.h(this.a).setText(bgo.p(this.a).getString(2131430128));
      bgo.q(this.a).setImageResource(2130837690);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgq
 * JD-Core Version:    0.6.2
 */