import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class bqt extends Handler
{
  bqt(bqs parambqs)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 2:
    case 1:
    case 0:
    }
    while (true)
    {
      return;
      bqs.a(this.a, (kw)paramMessage.obj);
      continue;
      bqs.a(this.a, bqs.a(this.a));
      bqs.b(this.a);
      if (bqs.c(this.a) != null)
      {
        bqs.d(this.a).setVisibility(8);
        this.a.getListView().removeFooterView(bqs.e(this.a));
      }
      ((aly)this.a.getAdapter()).a();
      continue;
      if (bqs.f(this.a).size() == 0)
        bqs.g(this.a);
      if ((Long)paramMessage.obj != null)
      {
        Context localContext = bqs.h(this.a);
        String str = bqs.i(this.a).getString(2131429775);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = a.b(((Long)paramMessage.obj).longValue());
        ha.b(localContext, String.format(str, arrayOfObject));
      }
      this.a.refreshListData();
      if (this.a.getOperatingBarDataList() != null)
      {
        ((OperatingModel)this.a.getOperatingBarDataList().get(0)).setAction(false);
        this.a.refreshOperatingBar((OperatingModel)this.a.getOperatingBarDataList().get(0));
      }
      ((aly)this.a.getAdapter()).a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqt
 * JD-Core Version:    0.6.2
 */