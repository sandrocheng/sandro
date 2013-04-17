import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.utils.ScriptHelper;

final class bmv extends Thread
{
  bmv(bmp parambmp)
  {
  }

  public final void run()
  {
    bmp localbmp = this.a;
    if (ScriptHelper.canRunAtRoot() == 0);
    for (boolean bool = true; ; bool = false)
    {
      bmp.a(localbmp, bool);
      TMSService.startService(new aau());
      Intent localIntent = new Intent("com.tencent.qqpimsecure.CACHE");
      localIntent.putExtra("extra_cache_id", 0);
      bmp.f(this.a).sendBroadcast(localIntent);
      Message localMessage = bmp.g(this.a).obtainMessage();
      localMessage.what = 5;
      localMessage.obj = Boolean.valueOf(false);
      bmp.h(this.a).sendMessage(localMessage);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmv
 * JD-Core Version:    0.6.2
 */