import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.TMSApplication;

final class acs extends Handler
{
  acs(acr paramacr)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      acr.a(this.a, paramMessage.arg1);
      continue;
      Context localContext = TMSApplication.getApplicaionContext();
      Dialog localDialog = new Dialog(acr.a(this.a));
      localDialog.setTitle(acr.a(this.a).getString(2131428038));
      localDialog.setMessage(localContext.getString(2131428039));
      localDialog.setNegativeButton(2131429537, new act(localDialog), 1);
      localDialog.show();
      acr.b(this.a).aE();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acs
 * JD-Core Version:    0.6.2
 */