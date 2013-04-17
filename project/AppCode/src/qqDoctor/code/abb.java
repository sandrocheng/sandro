import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class abb extends BroadcastReceiver
{
  abb(aau paramaau)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      int i = paramIntent.getIntExtra("extra_cache_id", -1);
      if (i != -1)
      {
        Message localMessage = new Message();
        switch (i)
        {
        default:
          break;
        case 0:
          localMessage.what = 0;
          localMessage.obj = Boolean.valueOf(true);
          aau.h(this.a).sendMessage(localMessage);
          break;
        case 4:
          aau.h(this.a).sendEmptyMessage(4);
          break;
        case 2:
          localMessage.what = 0;
          localMessage.obj = Boolean.valueOf(false);
          aau.h(this.a).sendMessage(localMessage);
          break;
        case 1:
          localMessage.what = 1;
          localMessage.obj = Boolean.valueOf(paramIntent.getBooleanExtra("extra_enforce", false));
          aau.h(this.a).sendMessage(localMessage);
          break;
        case 3:
          aau.h(this.a).sendEmptyMessage(2);
          break;
        case 5:
          String str = paramIntent.getStringExtra("extra_app_path");
          localMessage.what = 5;
          localMessage.obj = str;
          aau.h(this.a).sendMessage(localMessage);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abb
 * JD-Core Version:    0.6.2
 */