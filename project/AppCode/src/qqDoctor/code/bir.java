import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bir
  implements AdapterView.OnItemClickListener
{
  bir(bip parambip, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.b.getItem(paramInt);
    int i = this.b.getContextItemPosition();
    if (i < 0)
    {
      this.b.dismiss();
      return;
    }
    mk localmk = (mk)bip.b(this.a).getItem(i);
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 3:
    case 2:
    case 4:
    }
    while (true)
    {
      this.b.dismiss();
      break;
      bip.a(this.a, localmk);
      continue;
      ft.a(localmk.a());
      continue;
      sy localsy = bip.d(this.a);
      String str = localmk.a();
      bis localbis = new bis(this);
      new StringBuilder("showRestoreSmsLogsDialog: ").append(str).toString();
      Dialog localDialog = new Dialog(localsy.a);
      localDialog.setTitle(2131427395);
      localDialog.setMessage(2131427851);
      localDialog.setPositiveButton(2131427397, new tk(localsy, str, localbis, localDialog), 2);
      localDialog.setPositiveButton(2131427379, new tm(localDialog), 2);
      localDialog.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bir
 * JD-Core Version:    0.6.2
 */