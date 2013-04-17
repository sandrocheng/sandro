import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class bma
  implements AdapterView.OnItemClickListener
{
  bma(bly parambly, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    this.a.dismiss();
    kv localkv = (kv)this.b.getDataList().get(i);
    this.b.e();
    switch (localContextMenuModel.eventCode)
    {
    case 4:
    case 5:
    case 6:
    case 7:
    default:
    case 1:
    case 9:
    case 8:
    case 10:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.b.a(localkv.d, 2000005);
      continue;
      this.b.i(localkv);
      continue;
      this.b.k(localkv);
      continue;
      this.b.l(localkv);
      continue;
      this.b.j(localkv);
      continue;
      this.b.a(localkv);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bma
 * JD-Core Version:    0.6.2
 */