import android.os.Handler;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;

final class brh
  implements IRetryListener
{
  brh(brg parambrg)
  {
  }

  public final void onCancel()
  {
  }

  public final void onRetry()
  {
    brf.b(this.a.a).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brh
 * JD-Core Version:    0.6.2
 */