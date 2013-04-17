import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.faceverify.CameraCaptureActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class arj extends Handler
{
  arj(ari paramari)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      ari.a(this.a).dismiss();
      removeMessages(1);
      removeMessages(2);
      if (!ari.b(this.a).cH())
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("CameraCaptureAction", "CameraCaptureActionVerify");
        localIntent.putExtra("CameraCaptureFirstTry", true);
        localIntent.setClass(ari.c(this.a), CameraCaptureActivity.class);
        ari.c(this.a).startActivity(localIntent);
      }
      while (true)
      {
        this.a.getActivity().finish();
        nd.a().a(26394);
        break;
        ha.b(ari.c(this.a), 2131430034);
      }
      ari.a(this.a).dismiss();
      int i = ari.a(paramMessage.arg1);
      ha.b(ari.c(this.a), ari.c(this.a).getResources().getString(i));
      continue;
      ha.b(ari.c(this.a), ari.c(this.a).getResources().getString(2131430017));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arj
 * JD-Core Version:    0.6.2
 */