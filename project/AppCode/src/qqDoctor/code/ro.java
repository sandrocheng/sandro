import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.BaseWindow;

final class ro extends Handler
{
  ro(rn paramrn, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      rn.a(this.a, new rn.a(this.a, (kw)paramMessage.obj));
      rn.a locala2 = rn.a(this.a);
      if (locala2.a != null)
        locala2.a.show();
      new Thread(new rp(this)).start();
      continue;
      rn.a locala1 = rn.a(this.a);
      int i = paramMessage.arg1;
      if (i == 0)
      {
        locala1.b.setButtonEnabled(true);
        locala1.b.setText(rn.d(locala1.d).getString(2131429777));
      }
      else
      {
        locala1.b.setButtonEnabled(false);
        locala1.b.setText(rn.d(locala1.d).getString(2131429777) + "(" + i + ")");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ro
 * JD-Core Version:    0.6.2
 */