import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class gv
  implements AdapterView.OnItemClickListener
{
  gv(ContextMenuDialog paramContextMenuDialog, int paramInt, Context paramContext)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    if (localContextMenuModel != null)
    {
      if (this.b != 0)
        break label42;
      gu.a(this.c, localContextMenuModel.eventCode);
    }
    while (true)
    {
      this.a.dismiss();
      return;
      label42: gu.a(localContextMenuModel.eventCode);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gv
 * JD-Core Version:    0.6.2
 */