import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class bqx
  implements AdapterView.OnItemClickListener
{
  bqx(bqv parambqv)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = bqv.b(this.a).getContextItemPosition();
    if ((i < 0) || (i > this.a.getAdapter().getCount()))
      bqv.b(this.a).dismiss();
    kw localkw;
    while (true)
    {
      return;
      localkw = (kw)this.a.getAdapter().getDataList().get(i);
      if (localkw != null)
        break;
      bqv.b(this.a).dismiss();
    }
    switch (bqv.b(this.a).getItem(paramInt).eventCode)
    {
    default:
    case 1:
    }
    while (true)
    {
      bqv.b(this.a).dismiss();
      break;
      new zk(bqv.c(this.a), null).a(localkw, true, 0);
      bqv.d(this.a).remove(localkw);
      bqv.e(this.a).remove(localkw);
      bqv.f(this.a).remove(localkw);
      alz localalz = (alz)this.a.getAdapter();
      bqv.g(this.a).remove(Integer.valueOf(localalz.b(localkw)));
      bqv.h(this.a).sendEmptyMessage(-2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqx
 * JD-Core Version:    0.6.2
 */