import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.File;

public final class rv extends abu
{
  private static String d = "EncryedFileThumbnailLoaderService";
  private final Handler e = new Handler();

  public final void a(mp parammp)
  {
    if (parammp == null);
    while (true)
    {
      return;
      li localli = (li)parammp;
      String str = localli.a;
      boolean bool = new File(str).exists();
      Bitmap localBitmap = null;
      if (bool)
        localBitmap = gz.a(str);
      if (localBitmap == null)
        localBitmap = BitmapFactory.decodeResource(QQPimApplication.a().getResources(), 2130838222);
      if (localBitmap != null)
      {
        localli.b = localBitmap;
        this.e.post(new rw(localli));
      }
    }
  }

  protected final void b()
  {
    super.b();
    System.gc();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rv
 * JD-Core Version:    0.6.2
 */