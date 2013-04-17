import android.os.Handler;
import android.os.Message;

final class bmy
  implements abu.a
{
  bmy(bmp parambmp)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    if (!bmp.m(this.a));
    while (true)
    {
      return;
      kw localkw = (kw)parammp.h;
      new StringBuilder().append(localkw.getApkPath()).append(" ").append(localkw.getPackageName()).toString();
      Message localMessage = bmp.D(this.a).obtainMessage();
      localMessage.what = 2;
      localMessage.obj = localkw;
      bmp.E(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmy
 * JD-Core Version:    0.6.2
 */