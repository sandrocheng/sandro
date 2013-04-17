import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class bms extends BroadcastReceiver
{
  bms(bmp parambmp)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    bmp.W(this.a);
    if (paramIntent.getIntExtra("extra_notify_id", -1) == 0)
    {
      Message localMessage = bmp.X(this.a).obtainMessage();
      localMessage.what = 5;
      localMessage.obj = Boolean.valueOf(true);
      bmp.Y(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bms
 * JD-Core Version:    0.6.2
 */