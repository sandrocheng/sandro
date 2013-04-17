import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.WindowManager.BadTokenException;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class bpa extends Handler
{
  bpa(bot parambot)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 2001:
        int i = ((Integer)paramMessage.obj).intValue();
        if ((1001 == i) || (1002 == i))
        {
          if ((bot.j(this.a) == null) || (!bot.j(this.a).isShowing()))
            return;
          ((ProgressDialog)bot.j(this.a)).setProgress(bot.k(this.a).g());
          bot.j(this.a).setMessage(bot.l(this.a).getString(2131427572));
        }
        break;
      case 2003:
      case 2002:
      case 2004:
      case 2005:
      case 8217:
      case 8218:
      }
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      localBadTokenException.printStackTrace();
    }
    if ((bot.j(this.a) != null) && (bot.j(this.a).isShowing()))
    {
      ((ProgressDialog)bot.j(this.a)).setProgress(bot.k(this.a).g());
      bot.j(this.a).setMessage(bot.m(this.a).getString(2131427574));
      return;
      bot.n(this.a);
      return;
      bot.o(this.a);
      return;
      bot.p(this.a);
      if ((bot.j(this.a) != null) && (bot.j(this.a).isShowing()))
      {
        bot.j(this.a).dismiss();
        bot.q(this.a);
      }
      if ((bot.r(this.a) != null) && (bot.r(this.a).isShowing()))
      {
        bot.r(this.a).dismiss();
        bot.a(this.a, null);
      }
      bot.a(this.a, ((Integer)paramMessage.obj).intValue());
      return;
      if ((bot.j(this.a) != null) && (bot.j(this.a).isShowing()))
      {
        bot.j(this.a).dismiss();
        bot.q(this.a);
      }
      if ((bot.r(this.a) != null) && (bot.r(this.a).isShowing()))
      {
        bot.r(this.a).dismiss();
        bot.a(this.a, null);
      }
      cf.a locala = (cf.a)paramMessage.obj;
      if (locala == cf.a.c)
        ha.a(bot.s(this.a), 2131427629);
      if (locala == cf.a.b)
        ha.a(bot.t(this.a), 2131427630);
      if (locala == cf.a.d)
      {
        ha.a(bot.u(this.a), 2131427631);
        return;
        if ((bot.j(this.a) != null) && (bot.j(this.a).isShowing()))
        {
          bot.j(this.a).dismiss();
          bot.q(this.a);
        }
        bot.a(this.a, paramMessage.arg1, paramMessage.arg2);
        return;
        if ((bot.j(this.a) != null) && (bot.j(this.a).isShowing()))
        {
          bot.j(this.a).dismiss();
          bot.q(this.a);
        }
        bot.b(this.a, paramMessage.arg1, paramMessage.arg2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpa
 * JD-Core Version:    0.6.2
 */