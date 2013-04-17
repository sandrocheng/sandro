import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.network.FlowPercentView.ProcessChangeListener;

final class azs
  implements FlowPercentView.ProcessChangeListener
{
  azs(azj paramazj)
  {
  }

  public final void onChange(float paramFloat)
  {
    Message localMessage = azj.a(this.a).obtainMessage(1);
    Bundle localBundle = new Bundle();
    localBundle.putFloat("refrash_process", paramFloat);
    localMessage.setData(localBundle);
    localMessage.sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azs
 * JD-Core Version:    0.6.2
 */