import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class blw extends BroadcastReceiver
{
  blw(blt paramblt)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (blt.a(this.a, paramIntent))
      this.a.b(paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blw
 * JD-Core Version:    0.6.2
 */