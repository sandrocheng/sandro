import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class aqv
  implements AdapterView.OnItemClickListener
{
  aqv(aqu paramaqu, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    if (localContextMenuModel != null)
    {
      if (localContextMenuModel.eventCode != 0)
        break label38;
      aqu.a(this.b);
    }
    while (true)
    {
      this.a.dismiss();
      return;
      label38: aqu.a(this.b, localContextMenuModel.eventCode);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqv
 * JD-Core Version:    0.6.2
 */