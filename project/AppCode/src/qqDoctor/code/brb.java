import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import java.util.List;

final class brb extends Handler
{
  brb(bra parambra)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
      while (true)
      {
        return;
        removeMessages(0);
        bra.a(this.a, (String)paramMessage.obj);
      }
    case 1:
    }
    if (bra.a(this.a))
    {
      bra.b(this.a);
      bra.c(this.a);
    }
    while (true)
    {
      Context localContext = bra.e(this.a);
      String str = bra.f(this.a).getString(2131429775);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = a.b(((Long)paramMessage.obj).longValue());
      ha.b(localContext, String.format(str, arrayOfObject));
      this.a.refreshListData();
      ((OperatingModel)this.a.getOperatingBarDataList().get(0)).setAction(false);
      this.a.refreshOperatingBar((OperatingModel)this.a.getOperatingBarDataList().get(0));
      ((amb)this.a.getAdapter()).a();
      break;
      bra.d(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brb
 * JD-Core Version:    0.6.2
 */