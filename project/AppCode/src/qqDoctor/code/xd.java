import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.List;

final class xd
  implements ICheckListener
{
  private boolean a;

  xd(xb paramxb, UpdateManager paramUpdateManager, lc paramlc)
  {
  }

  public final void onCheckCanceled()
  {
  }

  public final void onCheckEvent(int paramInt)
  {
    if (paramInt < 0)
    {
      ha.b(xb.a(this.d), 2131428604);
      this.a = true;
    }
  }

  public final void onCheckFinished(CheckResult paramCheckResult)
  {
    if ((!xb.b(this.d)) && (!this.a))
      if ((paramCheckResult != null) && (paramCheckResult.mUpdateInfoList.size() > 0))
      {
        this.b.update(paramCheckResult.mUpdateInfoList, null);
        ha.b(xb.a(this.d), 2131427771);
        this.c.e = new Boolean(true);
        km localkm = f.d();
        long l = System.currentTimeMillis();
        localkm.a.putLong("last_time_of_update", l).commit();
        localkm.a.putBoolean("ever_update", true).commit();
        xb.a(this.d, 101, this.c);
      }
    while (true)
    {
      return;
      ha.b(xb.a(this.d), 2131428603);
      this.c.e = new Boolean(false);
      break;
      xb.c(this.d);
      this.a = false;
      xb.a(this.d, 105, this.c);
    }
  }

  public final void onCheckStarted()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xd
 * JD-Core Version:    0.6.2
 */