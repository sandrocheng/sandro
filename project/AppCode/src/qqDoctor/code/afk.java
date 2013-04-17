import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.TransparentActivity;

public final class afk
  implements Runnable
{
  public afk(TransparentActivity paramTransparentActivity, CloudInfo paramCloudInfo, CloudCmd paramCloudCmd)
  {
  }

  public final void run()
  {
    int i = TransparentActivity.g(this.c).a(this.a, this.b);
    TransparentActivity.a(this.c, i, this.b);
    TransparentActivity.h(this.c);
    this.c.a.sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afk
 * JD-Core Version:    0.6.2
 */