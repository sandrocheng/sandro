import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.ui.activity.QQWebdiskHelpActivity;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint;

public final class adu extends Handler
{
  public adu(QQWebdiskHelpActivity paramQQWebdiskHelpActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = paramMessage.what;
    int j = paramMessage.arg1;
    switch (i)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if (j < QQWebdiskHelpActivity.a(this.a).length)
      {
        QQWebdiskHelpActivity.b(this.a).addSlideLayout(QQWebdiskHelpActivity.a(this.a)[j]);
        if (QQWebdiskHelpActivity.a(this.a)[j] == QQWebdiskHelpActivity.a[(-2 + QQWebdiskHelpActivity.a.length)])
        {
          QQWebdiskHelpActivity.a(this.a, (ImageView)QQWebdiskHelpActivity.c(this.a).findViewById(2131231182));
          QQWebdiskHelpActivity.e(this.a).setOnClickListener(new adv(this));
        }
        QQWebdiskHelpActivity.c(this.a).invalidate();
        if ((j == -1 + QQWebdiskHelpActivity.a(this.a).length) && (QQWebdiskHelpActivity.f(this.a) == 0))
        {
          QQWebdiskHelpActivity.g(this.a);
        }
        else
        {
          Message localMessage = new Message();
          localMessage.arg1 = (j + 1);
          localMessage.what = 1;
          QQWebdiskHelpActivity.h(this.a).sendMessage(localMessage);
        }
      }
      else
      {
        QQWebdiskHelpActivity.h(this.a).removeMessages(1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adu
 * JD-Core Version:    0.6.2
 */