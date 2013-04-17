import android.os.SystemClock;
import com.tencent.qqpimsecure.service.QQPimApplication;

final class yo extends Thread
{
  yo(yn paramyn)
  {
  }

  public final void run()
  {
    long l = SystemClock.elapsedRealtime();
    if (l >= 180000L);
    while (true)
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder(QQPimApplication.a(l));
      int i = pn.b();
      if ((l != 0L) && (i > 0))
      {
        localStringBuilder.append(',');
        localStringBuilder.append(QQPimApplication.a(i));
        ov.a().a(localStringBuilder.toString());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yo
 * JD-Core Version:    0.6.2
 */