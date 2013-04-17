import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

final class alp extends Handler
{
  alp(all paramall)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      kw localkw = (kw)paramMessage.obj;
      if ((localkw.P() != null) && (!localkw.P().equals("")))
      {
        Context localContext = all.c(this.a);
        String str = all.d(this.a).getString(2131429525);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localkw.P();
        ha.b(localContext, String.format(str, arrayOfObject));
      }
      if (all.e(this.a).getFrameworkTemplateUI() != null)
        all.e(this.a).getFrameworkTemplateUI().UpdateInfoBarMemoryAndRam();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alp
 * JD-Core Version:    0.6.2
 */