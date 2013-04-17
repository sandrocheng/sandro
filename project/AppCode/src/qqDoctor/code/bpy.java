import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class bpy extends Handler
{
  bpy(bpu parambpu)
  {
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
      ((OperatingModel)this.a.getOperatingBarDataList().get(0)).setAction(false);
      ((OperatingModel)this.a.getOperatingBarDataList().get(0)).setEnable(false);
      this.a.refreshOperatingBar((OperatingModel)this.a.getOperatingBarDataList().get(0));
      int i = 0;
      int k;
      for (int j = 0; i < bpu.h(this.a).size(); j = k)
      {
        k = (int)(j + ((kw)bpu.i(this.a).get(i)).I());
        i++;
      }
      String str = a.b(j);
      ha.a(bpu.j(this.a), String.format(bpu.k(this.a).getString(2131429757), new Object[] { str }));
      bpu.l(this.a).clear();
      bpu.m(this.a).sendEmptyMessage(-2);
      continue;
      if (bpu.n(this.a) != null)
      {
        bpu.o(this.a).setVisibility(8);
        this.a.getListView().removeFooterView(bpu.p(this.a));
        continue;
        bpu.q(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpy
 * JD-Core Version:    0.6.2
 */