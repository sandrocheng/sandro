import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.ui.QQPowerManagerActivity;
import com.tencent.powermanager.uilib.view.BaseTabView;
import java.util.Iterator;
import java.util.List;

public final class cr extends Handler
{
  public cr(QQPowerManagerActivity paramQQPowerManagerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (QQPowerManagerActivity.a(this.a));
    while (true)
    {
      return;
      Iterator localIterator = QQPowerManagerActivity.b(this.a).iterator();
      while (localIterator.hasNext())
      {
        BaseTabView localBaseTabView = (BaseTabView)localIterator.next();
        if (!localBaseTabView.c())
          localBaseTabView.d();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cr
 * JD-Core Version:    0.6.2
 */