import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.SecureSmsDialogueActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bij
  implements AdapterView.OnItemClickListener
{
  bij(big parambig)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = big.d(this.a).getItem(paramInt);
    int i = big.d(this.a).getContextItemPosition();
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 1:
    case 2:
    case 5:
    case 6:
    case 3:
    case 4:
    }
    while (true)
    {
      big.d(this.a).dismiss();
      return;
      lf locallf4 = (lf)big.e(this.a).get(i);
      big.c(this.a).a(locallf4, 2, new bik(this));
      continue;
      lf locallf3 = (lf)big.f(this.a).get(i);
      big.c(this.a).a(locallf3, big.a(this.a), big.b(this.a));
      continue;
      lf locallf2 = (lf)big.g(this.a).get(i);
      sy localsy2 = big.h(this.a);
      String str3 = locallf2.phonenum;
      Dialog localDialog2 = new Dialog(localsy2.a);
      localDialog2.setTitle(localsy2.a.getString(2131428671));
      localDialog2.setMessage(localsy2.a.getString(2131428672) + str3 + localsy2.a.getString(2131428673));
      localDialog2.setPositiveButton(2131427397, new tn(localsy2, str3, null, localDialog2), 1);
      localDialog2.setNegativeButton(2131427379, new tp(localDialog2), 2);
      localDialog2.show();
      continue;
      lf locallf1 = (lf)big.i(this.a).get(i);
      sy localsy1 = big.h(this.a);
      String str2 = locallf1.phonenum;
      new StringBuilder("showImportSmsLogsDialog: ").append(str2).toString();
      Dialog localDialog1 = new Dialog(localsy1.a);
      localDialog1.setTitle(localsy1.a.getString(2131428679));
      localDialog1.setMessage(localsy1.a.getString(2131428672) + str2 + localsy1.a.getString(2131428681));
      localDialog1.setPositiveButton(2131427397, new tq(localsy1, str2, null, localDialog1), 1);
      localDialog1.setNegativeButton(2131427379, new ts(localDialog1), 2);
      localDialog1.show();
      continue;
      String str1 = ((lf)big.j(this.a).getItem(i)).phonenum;
      Intent localIntent2 = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str1));
      big.k(this.a).startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("smslogname", ((lf)big.l(this.a).getItem(i)).name);
      localIntent1.putExtra("smslogphonenum", ((lf)big.m(this.a).getItem(i)).phonenum);
      localIntent1.setClass(big.n(this.a), SecureSmsDialogueActivity.class);
      big.o(this.a).startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bij
 * JD-Core Version:    0.6.2
 */