import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.File;

public final class dx
{
  public static final String a;
  public static final String b;
  public static final String c;
  public static final String d;
  public static final String e;
  public static final String f;
  public static final String g;
  public static final String h;
  public static final String i;
  private static final String j = Environment.getExternalStorageDirectory().getAbsolutePath();
  private static String k;

  static
  {
    a = j + File.separator + "QQSecureDownload" + File.separator + "CacheDrawable";
    QQPimApplication.a().getResources().getDrawable(17301651);
    k = j + File.separator;
    b = j + File.separator + "QQSecureDownload" + File.separator + ".CacheDrawable";
    c = j + File.separator + "QQSecureDownload" + File.separator + ".CacheADImage";
    d = j + File.separator + "QQSecureDownload" + File.separator + ".CacheCEImage";
    e = j + File.separator + "QQSecureDownload";
    f = e + File.separator + "tmp";
    g = j + File.separator + "QQSecureDownload" + File.separator + ".CacheImageThumb";
    h = j + File.separator + "QQSecureDownload" + File.separator + ".CacheVideoThumb";
    i = k + "QQScreenShot" + File.separator;
    new StringBuilder().append(k).append("frame.raw").toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dx
 * JD-Core Version:    0.6.2
 */