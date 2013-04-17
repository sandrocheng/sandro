import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class bnu
  implements AdapterView.OnItemClickListener
{
  bnu(bnt parambnt, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    this.a.dismiss();
    kw localkw = (kw)this.b.getDataList().get(i);
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 11:
    case 3:
    }
    while (true)
    {
      return;
      this.b.a(localkw);
      continue;
      this.b.d(localkw);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnu
 * JD-Core Version:    0.6.2
 */