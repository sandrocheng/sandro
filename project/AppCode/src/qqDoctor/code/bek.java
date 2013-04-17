import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bek extends BroadcastReceiver
{
  bek(bej parambej, Dialog paramDialog)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.dismiss();
    switch (getResultCode())
    {
    default:
      ha.b(bej.b(this.b), 2131429381);
    case -1:
    }
    while (true)
    {
      if (bej.c(this.b) != null)
      {
        bej.d(this.b).unregisterReceiver(bej.c(this.b));
        bej.e(this.b);
      }
      return;
      ha.b(bej.a(this.b), 2131429380);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bek
 * JD-Core Version:    0.6.2
 */