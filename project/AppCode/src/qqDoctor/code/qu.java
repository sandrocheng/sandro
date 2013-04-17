import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;

final class qu extends Handler
{
  qu(qt paramqt, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      qt localqt2 = this.a;
      ma localma = (ma)paramMessage.obj;
      File localFile2 = new File(dx.d);
      if (!localFile2.exists())
        localFile2.mkdir();
      if (localqt2.b == null)
        localqt2.b = new sl();
      try
      {
        lv locallv2 = new lv();
        locallv2.b = 0;
        locallv2.g = localma.c.hashCode();
        locallv2.d = localma.c;
        locallv2.a = 3;
        locallv2.i = new qv(localqt2, localma);
        localqt2.b.b(locallv2);
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
      continue;
      qt localqt1 = this.a;
      lx locallx = (lx)paramMessage.obj;
      File localFile1 = new File(dx.d);
      if (!localFile1.exists())
        localFile1.mkdir();
      if (localqt1.b == null)
        localqt1.b = new sl();
      try
      {
        lv locallv1 = new lv();
        locallv1.b = 0;
        locallv1.g = locallx.c.hashCode();
        locallv1.d = locallx.c;
        locallv1.a = 3;
        locallv1.e = false;
        locallv1.i = new qw(localqt1, locallx);
        localqt1.b.b(locallv1);
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qu
 * JD-Core Version:    0.6.2
 */