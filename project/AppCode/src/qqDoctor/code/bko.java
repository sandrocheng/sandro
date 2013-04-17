import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import java.util.Random;
import java.util.Timer;

final class bko extends Handler
{
  bko(bkn parambkn)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 100;
    if (bkn.a(this.a));
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      case 4:
      case 5:
      default:
        break;
      case 0:
        bkn.a(this.a, paramMessage.arg1);
        bkn.c(this.a).setText(bkn.b(this.a).getString(2131428469));
        break;
      case 1:
        bkn.d(this.a).cancel();
        bkn.e(this.a);
        if (bkn.f(this.a) > bkn.g(this.a))
          bkn.b(this.a, bkn.g(this.a));
        if (bkn.g(this.a) == 0);
        while (true)
        {
          int k = (int)(i * (0.01D * (100 - bkn.h(this.a).getProgress()))) + bkn.h(this.a).getProgress();
          bkn.h(this.a).setProgress(k);
          if ((paramMessage.obj == null) || (!(paramMessage.obj instanceof lb)))
            break;
          lb locallb = (lb)paramMessage.obj;
          mk localmk = locallb.c;
          bkn.a(this.a, locallb);
          if ((localmk.read == 0) && (locallb.a) && (localmk.a == 0))
            bkn.i(this.a);
          if (bkn.j(this.a) != 1)
            break;
          sendEmptyMessage(6);
          break;
          i = 100 * bkn.f(this.a) / bkn.g(this.a);
        }
      case 2:
        bkn.h(this.a).setProgress(i);
        bkn.k(this.a);
        new StringBuilder(" Check_Event_CheckDone ").append(bkn.l(this.a)).toString();
        ho.a().p(0);
        ov.a().a(9);
        jo.a().b.putBoolean("isshowtip", false).commit();
        bkn.m(this.a);
        bkn.n(this.a);
        break;
      case 6:
        if (bkn.j(this.a) != bkn.o(this.a))
        {
          SpannableStringBuilder localSpannableStringBuilder = bkn.a(this.a, bkn.b(this.a).getResources().getString(2131428467), bkn.j(this.a));
          bkn.p(this.a).setText(localSpannableStringBuilder);
          bkn.n(this.a);
          bkn.c(this.a, bkn.j(this.a));
        }
        if (bkn.f(this.a) <= bkn.g(this.a))
          sendEmptyMessageDelayed(6, 5000L);
        break;
      case 7:
        if (bkn.h(this.a).getProgress() < 10);
        for (int j = bkn.h(this.a).getProgress() + new Random().nextInt(2); ; j = bkn.h(this.a).getProgress())
        {
          bkn.h(this.a).setProgress(j);
          break;
        }
      case 3:
        if (paramMessage.arg1 == 4)
          bkn.a(this.a, true);
        else
          bkn.a(this.a, false);
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bko
 * JD-Core Version:    0.6.2
 */