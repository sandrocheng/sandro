import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

final class biq extends BroadcastReceiver
{
  biq(bip parambip)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    bip.a(this.a).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     biq
 * JD-Core Version:    0.6.2
 */