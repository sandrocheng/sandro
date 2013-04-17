import android.os.Environment;
import android.text.format.DateFormat;
import java.io.File;
import java.util.Date;

public final class dj
{
  static String a;

  static
  {
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      a = Environment.getExternalStorageDirectory() + File.separator + ".qqpim" + File.separator + "log" + File.separator + DateFormat.format("yyyyMMddkkmmss", new Date()) + ".log";
      new File(a).getParentFile().mkdirs();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dj
 * JD-Core Version:    0.6.2
 */