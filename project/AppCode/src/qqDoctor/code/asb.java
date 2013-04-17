import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.ArrayList;
import java.util.List;

final class asb
  implements AdapterView.OnItemClickListener
{
  asb(arz paramarz, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    this.a.dismiss();
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      lj locallj = (lj)this.b.g.get(i);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(locallj);
      arz.a(this.b, localArrayList);
      continue;
      arz.a(this.b, (lj)this.b.g.get(i));
      continue;
      arz.a(this.b, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asb
 * JD-Core Version:    0.6.2
 */