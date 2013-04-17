import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class bib
  implements AdapterView.OnItemClickListener
{
  bib(bhz parambhz, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    if ((i < 0) || (i > bhz.b(this.b).size()))
    {
      this.a.dismiss();
      return;
    }
    ky localky = (ky)bhz.c(this.b).getItem(i);
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 2:
    case 8:
    case 6:
    }
    while (true)
    {
      this.a.dismiss();
      break;
      bhz.e(this.b).a(((kz)localky).b(), bhz.d(this.b));
      continue;
      ft.a(localky.phonenum);
      continue;
      gu.a(bhz.f(this.b), localky.phonenum);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bib
 * JD-Core Version:    0.6.2
 */