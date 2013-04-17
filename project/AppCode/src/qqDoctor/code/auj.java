import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class auj
  implements AdapterView.OnItemClickListener
{
  auj(atz paramatz)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = atz.d(this.a).getItem(paramInt);
    int i = atz.d(this.a).getContextItemPosition();
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      atz.d(this.a).dismiss();
      return;
      lf locallf2 = (lf)atz.e(this.a).get(i);
      atz.g(this.a).a(locallf2, locallf2.b, new auk(this));
      continue;
      lf locallf1 = (lf)atz.h(this.a).get(i);
      atz.g(this.a).a(locallf1, atz.i(this.a), atz.j(this.a));
      continue;
      String str2 = ((lf)atz.k(this.a).getItem(i)).phonenum;
      Intent localIntent2 = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str2));
      atz.l(this.a).startActivity(localIntent2);
      continue;
      String str1 = ((lf)atz.m(this.a).getItem(i)).phonenum;
      Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + str1));
      localIntent1.putExtra("address", str1);
      localIntent1.setType("vnd.android-dir/mms-sms");
      atz.n(this.a).startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     auj
 * JD-Core Version:    0.6.2
 */