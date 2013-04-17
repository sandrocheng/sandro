import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import java.util.ArrayList;

public final class agx
  implements abu.a
{
  public agx(WeekRecDialog paramWeekRecDialog, int paramInt)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    synchronized (this.b)
    {
      lv locallv = (lv)parammp;
      if ((locallv.f != null) && (WeekRecDialog.e(this.b) != null))
      {
        mv localmv = new mv();
        localmv.b = this.a;
        localmv.a = locallv.f;
        WeekRecDialog.e(this.b).add(localmv);
        WeekRecDialog.f(this.b);
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agx
 * JD-Core Version:    0.6.2
 */