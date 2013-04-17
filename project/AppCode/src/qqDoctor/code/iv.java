import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.lbsapi.QLBSService;
import com.tencent.qqpimsecure.service.QQPimApplication;

public class iv
{
  private static iv b;
  private String a = "NetworkLocateManager";
  private QLBSService c;
  private Context d = QQPimApplication.a();
  private Boolean e = Boolean.valueOf(false);
  private Handler f = new iw(this, this.d.getMainLooper());

  public static iv a()
  {
    try
    {
      if (b == null)
        b = new iv();
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean b()
  {
    synchronized (this.e)
    {
      boolean bool = this.e.booleanValue();
      return bool;
    }
  }

  public final void c()
  {
    this.f.obtainMessage(1).sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     iv
 * JD-Core Version:    0.6.2
 */