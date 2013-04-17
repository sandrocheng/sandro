import android.app.Activity;
import android.content.SharedPreferences.Editor;
import android.widget.FrameLayout;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ScoreRollBoxView;
import com.tencent.tmsecure.module.update.CheckResult;
import java.util.ArrayList;

final class aoi
  implements Runnable
{
  aoi(aoa paramaoa)
  {
  }

  public final void run()
  {
    aoa.S(this.a);
    aoa.T(this.a);
    aoa.U(this.a);
    int i = 0;
    lc locallc;
    if (i < aoa.R(this.a).d.size())
      if (((lc)aoa.R(this.a).d.get(i)).b == 2009)
        locallc = (lc)aoa.R(this.a).d.get(i);
    for (int j = 1; ; j = 0)
    {
      if ((aoa.R(this.a).c.size() > 0) || (aoa.R(this.a).d.size() > 0))
      {
        if (j == 0)
          aoa.j(this.a).setVisibility(0);
        aoa.l(this.a).setVisibility(0);
        aoa.k(this.a).setVisibility(8);
        aoa.m(this.a).setVisibility(8);
        aoa.n(this.a).setVisibility(8);
        aoa.o(this.a).setVisibility(8);
      }
      while (true)
      {
        aoa.U(this.a);
        aoa.ab(this.a).a.putBoolean("last_check_is_optimization", true).commit();
        if ((j != 0) && (locallc != null))
        {
          CheckResult localCheckResult = (CheckResult)locallc.e;
          a.a((Activity)aoa.ac(this.a), localCheckResult, false, new aoj(this, localCheckResult));
        }
        aoa.v(this.a).setScore(aoa.D(this.a));
        aoa.v(this.a).endScroll();
        return;
        i++;
        break;
        aoa.o(this.a).setVisibility(8);
        if (aoa.D(this.a) == 100)
        {
          aoa.j(this.a).setVisibility(8);
          aoa.k(this.a).setVisibility(8);
          aoa.m(this.a).setVisibility(8);
          aoa.l(this.a).setVisibility(0);
          aoa.n(this.a).setVisibility(0);
        }
        else
        {
          aoa.j(this.a).setVisibility(8);
          aoa.k(this.a).setVisibility(8);
          aoa.m(this.a).setVisibility(8);
          aoa.l(this.a).setVisibility(0);
          aoa.n(this.a).setVisibility(8);
        }
      }
      locallc = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoi
 * JD-Core Version:    0.6.2
 */