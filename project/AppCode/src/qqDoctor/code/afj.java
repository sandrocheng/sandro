import QQPIM.CloudCmd;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.TransparentActivity;

public final class afj
  implements pe.a
{
  public afj(TransparentActivity paramTransparentActivity, CloudCmd paramCloudCmd)
  {
  }

  public final void a(int paramInt)
  {
    TransparentActivity.a(this.b, paramInt, this.a);
    TransparentActivity.h(this.b);
    this.b.a.sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afj
 * JD-Core Version:    0.6.2
 */