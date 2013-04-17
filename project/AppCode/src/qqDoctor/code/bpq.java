import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpq extends Handler
{
  bpq(bpp parambpp)
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
        new Thread(new bpr(this)).start();
      }
    case 1:
    }
    if (bpp.j(this.a) != null)
      bpp.j(this.a).dismiss();
    String str = (String)paramMessage.obj;
    if (!str.equals(""))
      Toast.makeText(bpp.k(this.a), str, 1).show();
    while (true)
    {
      this.a.getAdapter().setDataList(this.a.d());
      this.a.getAdapter().notifyDataSetChanged();
      break;
      Toast.makeText(bpp.l(this.a), bpp.m(this.a).getString(2131428978), 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpq
 * JD-Core Version:    0.6.2
 */