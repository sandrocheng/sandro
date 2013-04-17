import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class acl extends Handler
{
  acl(acj paramacj)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      return;
      acj.b();
      if (paramMessage.arg1 == 0)
      {
        acj.a(this.a).show();
      }
      else if ((acj.a(this.a) != null) && (acj.a(this.a).isShowing()))
      {
        acj.a(this.a).dismiss();
        continue;
        List localList = (List)paramMessage.obj;
        if (localList != null)
          this.a.b(localList);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acl
 * JD-Core Version:    0.6.2
 */