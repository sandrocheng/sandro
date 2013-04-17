import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;

public final class bjk
  implements AdapterView.OnItemClickListener
{
  public bjk(SecureSmsDialogueView paramSecureSmsDialogueView, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    if (i < 0)
    {
      this.a.dismiss();
      return;
    }
    mk localmk = (mk)SecureSmsDialogueView.h(this.b).getItem(i);
    switch (localContextMenuModel.eventCode)
    {
    case 4:
    case 5:
    case 6:
    default:
    case 2:
    case 8:
    case 3:
    case 7:
    }
    while (true)
    {
      this.a.dismiss();
      break;
      SecureSmsDialogueView.r(this.b).a(0, localmk, SecureSmsDialogueView.q(this.b));
      continue;
      ft.a(localmk.a());
      continue;
      SecureSmsDialogueView.a(this.b, i);
      continue;
      gu.b(SecureSmsDialogueView.s(this.b), localmk.a(), localmk.getBody());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjk
 * JD-Core Version:    0.6.2
 */