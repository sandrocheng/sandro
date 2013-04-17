import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class xo extends BroadcastReceiver
{
  xo(xn paramxn, Dialog paramDialog)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    switch (getResultCode())
    {
    default:
      if (this.a.isShowing())
        xn.a(this.b.a, 2131429382);
      break;
    case -1:
    }
    while (true)
    {
      this.a.dismiss();
      if (this.b.d != null)
      {
        this.b.a.unregisterReceiver(this.b.d);
        this.b.d = null;
      }
      return;
      String str = String.format(this.b.a.getString(2131429368), new Object[] { "" });
      if (this.a.isShowing())
      {
        Dialog localDialog = new Dialog(this.b.a);
        localDialog.setTitle(2131429289);
        localDialog.setMessage(str);
        localDialog.setPositiveButton(2131427397, new xp(localDialog), 2);
        localDialog.show();
      }
      else
      {
        ha.b(this.b.a, str);
        continue;
        ha.b(this.b.a, 2131429382);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xo
 * JD-Core Version:    0.6.2
 */