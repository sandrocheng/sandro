import android.os.Handler;
import com.tencent.tmsecure.utils.ScriptHelper;

final class bqi extends Thread
{
  bqi(bqh parambqh)
  {
  }

  public final void run()
  {
    bqb.d(this.a.a, ScriptHelper.canRunAtRoot());
    if (bqb.aa(this.a.a) != null)
      bqb.aa(this.a.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqi
 * JD-Core Version:    0.6.2
 */