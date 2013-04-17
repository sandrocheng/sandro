import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.b;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;
import java.util.LinkedList;

final class bgu
  implements LockPatternView.c
{
  bgu(bgt parambgt)
  {
  }

  public final void a()
  {
    this.a.b.removeCallbacks(bgt.a(this.a));
    this.a.a.setText(bgt.b(this.a).getString(2131430126));
  }

  public final void b()
  {
    this.a.b.removeCallbacks(bgt.a(this.a));
  }

  public final void c()
  {
    int i = 1;
    LinkedList localLinkedList = this.a.b.d();
    if (localLinkedList.size() < 4)
    {
      this.a.a.setText(bgt.c(this.a).getString(2131430127));
      this.a.a.setTextColor(bgt.d(this.a).getResources().getColor(2131296272));
      bgt.e(this.a).setImageResource(2130837690);
      this.a.b.setDisplayMode(LockPatternView.b.c);
      bgt.a(this.a, 101);
    }
    while (true)
    {
      return;
      if (bgt.f(this.a) == 101)
      {
        bgt.g(this.a).clear();
        bgt.a(this.a, localLinkedList);
        this.a.b.setDisplayMode(LockPatternView.b.a);
        bgt.a(this.a, 103);
      }
      else if (bgt.f(this.a) == 103)
      {
        if (this.a.b.a(bgt.g(this.a)))
        {
          this.a.a.setTextColor(bgt.h(this.a).getResources().getColor(2131296260));
          this.a.a.setText(bgt.i(this.a).getString(2131430131));
          String str1 = ho.a().n();
          int j;
          label261: int k;
          if ((str1 != null) && (!str1.equals("")))
          {
            j = i;
            if (j == 0)
            {
              ho localho = ho.a();
              if (localho.cl() != i)
                break label380;
              String str2 = localho.cd();
              if ((str2 == null) || (str2.equals("")))
                break label374;
              k = i;
              label305: if (k == 0)
                break label380;
            }
          }
          while (true)
          {
            if (i == 0)
              break label385;
            ha.a(bgt.j(this.a), bgt.k(this.a).getString(2131430130), 17, 0);
            bgt.l(this.a);
            a.d();
            bgt.m(this.a).sendEmptyMessageDelayed(2, 2000L);
            break;
            j = 0;
            break label261;
            label374: k = 0;
            break label305;
            label380: i = 0;
          }
          label385: bgt.n(this.a);
        }
        else
        {
          this.a.a.setText(bgt.o(this.a).getString(2131430154));
          this.a.a.setTextColor(bgt.p(this.a).getResources().getColor(2131296272));
          bgt.e(this.a).setImageResource(2130837690);
          this.a.b.setDisplayMode(LockPatternView.b.c);
          bgt.a(this.a, 101);
          bgt.g(this.a).clear();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgu
 * JD-Core Version:    0.6.2
 */