import QQPIM.CloudCmd;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.TransparentActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.ArrayList;
import java.util.List;

public final class afh extends Handler
{
  public afh(TransparentActivity paramTransparentActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if ((TransparentActivity.a(this.a) != null) && (TransparentActivity.b(this.a) < TransparentActivity.a(this.a).size()))
      {
        CloudCmd localCloudCmd = (CloudCmd)TransparentActivity.a(this.a).get(TransparentActivity.b(this.a));
        TransparentActivity.a(this.a, TransparentActivity.c(this.a), localCloudCmd);
      }
      else
      {
        if (TransparentActivity.d(this.a) != null)
          TransparentActivity.d(this.a).dismiss();
        if ((!TransparentActivity.e(this.a)) && (TransparentActivity.f(this.a) != null))
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(TransparentActivity.f(this.a));
          TransparentActivity.g(this.a).a(localArrayList);
        }
        this.a.finish();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afh
 * JD-Core Version:    0.6.2
 */