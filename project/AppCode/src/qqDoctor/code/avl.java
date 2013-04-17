import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class avl
  implements AdapterView.OnItemClickListener
{
  avl(avh paramavh, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.b.getItem(paramInt);
    int i = this.b.getContextItemPosition();
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      this.b.dismiss();
      return;
      String str1 = avh.d(this.a).getResources().getString(2131428737);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((lw)avh.e(this.a).get(i)).b;
      String str2 = String.format(str1, arrayOfObject);
      Dialog localDialog = new Dialog(avh.d(this.a));
      localDialog.setTitle(2131427374);
      localDialog.setMessage(str2);
      localDialog.setPositiveButton(2131427397, new avm(this, i, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new avn(localDialog), 2);
      localDialog.show();
      continue;
      avh.b(this.a, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avl
 * JD-Core Version:    0.6.2
 */