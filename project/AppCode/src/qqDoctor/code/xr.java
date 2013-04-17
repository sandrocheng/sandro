import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

final class xr
  implements View.OnClickListener
{
  xr(xn paramxn, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    xn localxn = this.b;
    Dialog localDialog = a.a(localxn.a, localxn.a.getResources().getString(2131427725));
    localDialog.show();
    if (localxn.d == null)
    {
      localxn.d = new xo(localxn, localDialog);
      localxn.a.registerReceiver(localxn.d, new IntentFilter("com.tencent.qqpim.pickproff"));
    }
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(localxn.a, 0, new Intent("com.tencent.qqpim.pickproff"), 0);
    String str1 = localxn.c.getHelperNumber();
    if (str1 == null)
    {
      str1 = localxn.b.bE();
      localxn.c.setHelperNumber(str1);
    }
    String str2 = localxn.c.getPassword();
    if (str2 == null)
    {
      str2 = localxn.b.bF();
      localxn.c.setPassword(str2);
    }
    String str3 = localxn.a.getResources().getString(2131429366);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = localxn.b.bT();
    arrayOfObject[1] = str2;
    if ((!gu.a(str1, String.format(str3, arrayOfObject), localPendingIntent)) && (localxn.d != null))
    {
      localxn.a.unregisterReceiver(localxn.d);
      localxn.d = null;
      localDialog.dismiss();
    }
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xr
 * JD-Core Version:    0.6.2
 */