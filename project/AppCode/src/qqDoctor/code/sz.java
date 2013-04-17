import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class sz extends Handler
{
  sz(sy paramsy, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.a.g = new ProgressDialog(this.a.a, 1);
      this.a.g.addProgressDialog();
      if (this.a.i)
      {
        this.a.g.setTitle(2131427838);
        this.a.g.setIconVisibility(8);
        this.a.g.setMessage(2131427839);
      }
      while (true)
      {
        this.a.g.setNeutralButton(2131427379, new ta(this), 2);
        this.a.g.setCancelable(false);
        this.a.g.show();
        new td(this).start();
        break;
        this.a.g.setTitle(2131427844);
        this.a.g.setIconVisibility(8);
        this.a.g.setMessage(2131427845);
      }
      if ((this.a.g != null) && (this.a.g.isShowing()))
      {
        ((ProgressDialog)this.a.g).setProgress(this.a.k);
        continue;
        this.a.j = false;
        if ((this.a.g != null) && (this.a.g.isShowing()))
        {
          this.a.g.dismiss();
          this.a.g = null;
        }
        if ((this.a.h != null) && (this.a.h.isShowing()))
        {
          this.a.h.dismiss();
          this.a.h = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sz
 * JD-Core Version:    0.6.2
 */