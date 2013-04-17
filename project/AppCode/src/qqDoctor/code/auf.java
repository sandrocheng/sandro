import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class auf
  implements AdapterView.OnItemClickListener
{
  auf(atz paramatz, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    if (localContextMenuModel != null)
    {
      if (localContextMenuModel.eventCode != 0)
        break label39;
      this.b.a(false);
    }
    while (true)
    {
      this.a.dismiss();
      return;
      label39: if (localContextMenuModel.eventCode == 6)
        this.b.a(true);
      else
        this.b.a(localContextMenuModel.eventCode);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     auf
 * JD-Core Version:    0.6.2
 */