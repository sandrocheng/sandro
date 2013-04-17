import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class baa extends BroadcastReceiver
{
  baa(azu paramazu)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      azu.a(this.a).b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     baa
 * JD-Core Version:    0.6.2
 */