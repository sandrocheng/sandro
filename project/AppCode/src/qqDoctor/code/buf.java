import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao.c;

final class buf extends ContentObserver
{
  buf(bue parambue, Handler paramHandler1, Handler paramHandler2)
  {
    super(paramHandler1);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    DefaultSysDao.c localc = bue.a(this.a);
    localc.e = (1 + localc.e);
    this.b.removeCallbacks(bue.a(this.a).f);
    this.b.postDelayed(bue.a(this.a).f, 5000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buf
 * JD-Core Version:    0.6.2
 */