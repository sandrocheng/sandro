import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.util.List;

final class bmo extends BroadcastReceiver
{
  bmo(bmj parambmj)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getAction().equals("android.intent.action.PACKAGE_REMOVED")))
    {
      String str = paramIntent.getDataString();
      if (str.contains("package:"))
        str = str.replace("package:", "");
      kw localkw = new kw();
      localkw.setPackageName(str);
      if ((bmj.b(this.a).remove(localkw)) && (bmj.c(this.a).remove(localkw)))
        bmj.d(this.a).sendEmptyMessage(-2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmo
 * JD-Core Version:    0.6.2
 */