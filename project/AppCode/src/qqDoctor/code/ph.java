import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class ph extends Handler
{
  ph(pe parampe, Looper paramLooper)
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
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      if ((!this.a.f) && (pe.c(this.a) <= 0))
      {
        String str2 = "";
        if (paramMessage.arg1 == 1)
          str2 = this.a.b.getResources().getString(2131428352);
        while (true)
        {
          this.a.c = a.a(this.a.b, str2);
          this.a.c.setOnCancelListener(new pi(this));
          if (pe.c(this.a) > 0)
            break label178;
          this.a.c.show();
          break;
          if (paramMessage.arg1 == 2)
            str2 = this.a.b.getResources().getString(2131428351);
        }
        label178: if (this.a.c.isShowing())
        {
          this.a.c.dismiss();
          continue;
          if ((this.a.f) && (goto 44) && (!this.a.f))
          {
            String str1 = (String)paramMessage.obj;
            ha.a(this.a.b, str1);
            continue;
            if ((this.a.c != null) && (this.a.c.isShowing()))
            {
              this.a.c.dismiss();
              continue;
              if (pe.c(this.a) <= 0)
              {
                this.a.a(this.a.b, this.a.d, new pj(this));
                continue;
                if (pe.c(this.a) <= 0)
                  a.a(this.a.b, paramMessage.arg1, new pl(this));
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ph
 * JD-Core Version:    0.6.2
 */