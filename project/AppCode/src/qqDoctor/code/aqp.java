import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class aqp extends Handler
{
  aqp(aqo paramaqo)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      aqo.a(this.a, a.a(aqo.a(this.a), aqo.b(this.a).getResources().getString(2131428396)));
      aqo.c(this.a).show();
      sendEmptyMessageDelayed(1, 30000L);
      new Thread(new aqq(this)).start();
      continue;
      if (aqo.c(this.a) != null)
      {
        aqo.c(this.a).dismiss();
        aqo.a(this.a, null);
      }
      removeMessages(1);
      switch (paramMessage.arg1)
      {
      default:
        break;
      case 0:
        Toast.makeText(aqo.f(this.a), aqo.g(this.a).getResources().getString(2131428397), 0).show();
        break;
      case 1:
        Toast.makeText(aqo.h(this.a), aqo.i(this.a).getResources().getString(2131428398), 0).show();
        break;
      case 2:
        Toast.makeText(aqo.j(this.a), aqo.k(this.a).getResources().getString(2131428399), 0).show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqp
 * JD-Core Version:    0.6.2
 */