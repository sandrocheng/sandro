import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao.c;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao.e;
import java.util.Timer;
import java.util.TimerTask;

public final class bue extends TimerTask
{
  public bue(DefaultSysDao.c paramc, Timer paramTimer)
  {
  }

  public final void run()
  {
    this.b.cancel();
    new Thread(this.a.f).start();
    Handler localHandler = new Handler(DefaultSysDao.b(this.a.g).getMainLooper());
    this.a.c = new buf(this, localHandler, localHandler);
    DefaultSysDao.a(this.a.g).registerContentObserver(DefaultSysDao.c(this.a.g).a(), true, this.a.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bue
 * JD-Core Version:    0.6.2
 */