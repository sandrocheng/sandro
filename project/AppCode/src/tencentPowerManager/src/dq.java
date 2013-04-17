import android.os.Handler;
import android.os.Message;
import android.widget.AbsoluteLayout.LayoutParams;
import com.tencent.powermanager.uilib.view.fireflyView.FireflyPointLayout;
import com.tencent.powermanager.uilib.view.fireflyView.FireflyPointView;
import java.util.ArrayList;

public final class dq extends Handler
{
  public dq(FireflyPointLayout paramFireflyPointLayout)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 0;
    while (true)
    {
      int j;
      int k;
      try
      {
        boolean bool = FireflyPointLayout.a(this.a);
        if (bool)
          return;
        if (paramMessage.what == 1)
        {
          j = -1 + FireflyPointLayout.b(this.a).size();
          if (j >= 0)
          {
            if (FireflyPointLayout.a(this.a))
              continue;
            dr localdr2 = (dr)FireflyPointLayout.b(this.a).get(j);
            if (localdr2.a.size() <= 0)
              break label491;
            if (localdr2.c <= -1 + localdr2.a.size())
            {
              AbsoluteLayout.LayoutParams localLayoutParams2 = new AbsoluteLayout.LayoutParams(-2, -2, ((dr.a)localdr2.a.get(localdr2.c)).a, ((dr.a)localdr2.a.get(localdr2.c)).b);
              this.a.updateViewLayout(localdr2.b, localLayoutParams2);
              localdr2.c = (1 + localdr2.c);
              k = 1;
              break label494;
            }
            localdr2.b.clearAnimation();
            this.a.removeView(localdr2.b);
            FireflyPointLayout.b(this.a).remove(localdr2);
            FireflyPointLayout.c(this.a).sendEmptyMessageDelayed(2, 5000L);
            k = 1;
            break label494;
          }
          if (i == 0)
            continue;
          FireflyPointLayout.c(this.a).sendEmptyMessageDelayed(1, 70L);
          continue;
        }
      }
      finally
      {
      }
      if ((paramMessage.what == 2) && (FireflyPointLayout.b(this.a).size() < 15))
      {
        dr localdr1 = new dr(FireflyPointLayout.d(this.a), FireflyPointLayout.e(this.a), FireflyPointLayout.f(this.a));
        if ((!FireflyPointLayout.a(this.a)) && (FireflyPointLayout.g(this.a) != null) && (FireflyPointLayout.h(this.a) != null))
        {
          localdr1.a(FireflyPointLayout.g(this.a), FireflyPointLayout.h(this.a), FireflyPointLayout.i(this.a));
          if (localdr1.a.size() > 0)
          {
            AbsoluteLayout.LayoutParams localLayoutParams1 = new AbsoluteLayout.LayoutParams(-2, -2, ((dr.a)localdr1.a.get(0)).a, ((dr.a)localdr1.a.get(0)).b);
            FireflyPointLayout.b(this.a).add(localdr1);
            this.a.addView(localdr1.b, localLayoutParams1);
          }
          if (FireflyPointLayout.b(this.a).size() < 15)
          {
            FireflyPointLayout.c(this.a).sendEmptyMessageDelayed(2, 5000L);
            continue;
            label491: k = i;
            label494: j--;
            i = k;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dq
 * JD-Core Version:    0.6.2
 */