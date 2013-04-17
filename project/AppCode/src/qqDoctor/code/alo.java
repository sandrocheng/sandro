import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.software.SoftwareManager;

final class alo extends Thread
{
  alo(all paramall, kw paramkw)
  {
  }

  public final void run()
  {
    try
    {
      if (this.a.t() == 1)
      {
        ft.a locala = new ft.a();
        ft.b(locala);
        long l1 = locala.a;
        if (!all.a(this.b).movePackageToExternal(this.a.getPackageName()))
          return;
        ft.b(locala);
        long l2 = locala.a - l1;
        if (l2 > 0L)
          this.a.o(a.c(l2));
        while (true)
        {
          Message localMessage = all.b(this.b).obtainMessage();
          localMessage.obj = this.a;
          localMessage.what = 0;
          all.b(this.b).sendMessage(localMessage);
          break;
          this.a.o(null);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
      if (this.a.t() == 2)
        all.a(this.b).movePackageToInteranl(this.a.getPackageName());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alo
 * JD-Core Version:    0.6.2
 */