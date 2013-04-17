import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber;

final class aqy
  implements AdapterView.OnItemClickListener
{
  aqy(aqu paramaqu, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = aqu.m(this.b);
    if ((i < 0) || (i > this.b.getAdapter().getCount()))
      this.a.dismiss();
    while (true)
    {
      return;
      if (this.b.getAdapter().getItem(i) != null)
        break;
      this.a.dismiss();
    }
    IpDialPhoneNumber localIpDialPhoneNumber = (IpDialPhoneNumber)this.b.getAdapter().getItem(i);
    switch (this.a.getItem(paramInt).eventCode)
    {
    default:
    case 5:
    case 4:
    case 3:
    case 2:
    }
    while (true)
    {
      this.a.dismiss();
      break;
      gu.a(aqu.n(this.b), localIpDialPhoneNumber.getPhoneNumber());
      continue;
      ft.a(localIpDialPhoneNumber.getPhoneNumber());
      continue;
      aqu.a(this.b, localIpDialPhoneNumber);
      continue;
      this.b.a(localIpDialPhoneNumber);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqy
 * JD-Core Version:    0.6.2
 */