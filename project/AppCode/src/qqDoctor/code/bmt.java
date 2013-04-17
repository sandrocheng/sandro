import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class bmt extends BroadcastReceiver
{
  bmt(bmp parambmp)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getIntExtra("extra_notify_id", -1) == 0)
    {
      Message localMessage = bmp.Z(this.a).obtainMessage();
      localMessage.what = 5;
      localMessage.obj = Boolean.valueOf(true);
      bmp.aa(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmt
 * JD-Core Version:    0.6.2
 */