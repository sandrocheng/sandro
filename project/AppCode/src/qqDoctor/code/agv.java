import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog.a;
import java.util.ArrayList;

public final class agv
  implements abu.a
{
  public agv(WeekRecDialog paramWeekRecDialog, int paramInt)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    synchronized (this.b)
    {
      lv locallv = (lv)parammp;
      if ((locallv.f != null) && (WeekRecDialog.a(this.b) != null))
      {
        WeekRecDialog.a locala = new WeekRecDialog.a(this.b);
        locala.b = this.a;
        locala.a = locallv.f;
        WeekRecDialog.a(this.b).add(locala);
        WeekRecDialog.b(this.b);
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agv
 * JD-Core Version:    0.6.2
 */