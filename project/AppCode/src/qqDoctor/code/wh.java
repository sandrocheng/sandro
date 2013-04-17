import QQPIM.STNetLocal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.File;
import java.util.HashMap;

public final class wh
{
  static wh a;
  private static String i;
  Context b = QQPimApplication.a();
  iy c = new iy(QQPimApplication.a());
  HashMap<Long, Boolean> d = new HashMap();
  HashMap<fl, STNetLocal> e = new HashMap();
  fl f;
  BroadcastReceiver g;
  Handler h = new wi(this, Looper.getMainLooper());

  public static wh a()
  {
    try
    {
      if (a == null)
      {
        a = new wh();
        if (new File("/proc/self/net/dev").exists())
          break label71;
        if (new File("/proc/net/dev").exists())
          break label65;
      }
      label65: for (String str = "error"; ; str = "/proc/net/dev")
      {
        i = str;
        wh localwh = a;
        return localwh;
      }
      label71: str = "/proc/self/net/dev";
    }
    finally
    {
    }
  }

  static String c()
  {
    String str1;
    String[] arrayOfString1;
    StringBuffer localStringBuffer;
    try
    {
      localFile = new File(i);
      if (localFile == null)
      {
        str1 = "-1";
        return str1;
      }
    }
    catch (Exception localException)
    {
      File localFile;
      while (true)
      {
        localException.printStackTrace();
        localFile = null;
      }
      arrayOfString1 = btd.b(localFile);
      localStringBuffer = new StringBuffer();
      if (arrayOfString1 == null)
        break label177;
    }
    while (true)
    {
      int k;
      int n;
      try
      {
        int j = arrayOfString1.length;
        k = 0;
        if (k >= j)
          break label175;
        String[] arrayOfString2 = arrayOfString1[k].trim().split("[: ]+");
        int m = arrayOfString2.length;
        n = 0;
        if (n < m)
        {
          String str2 = arrayOfString2[n].trim().toLowerCase();
          if (n == -1 + arrayOfString2.length)
            localStringBuffer.append(str2);
          else
            localStringBuffer.append(str2 + ",");
        }
      }
      finally
      {
      }
      localStringBuffer.append(";");
      k++;
      continue;
      label175: label177: str1 = localStringBuffer.toString();
      break;
      n++;
    }
  }

  final boolean a(int paramInt)
  {
    boolean bool = false;
    switch (paramInt)
    {
    default:
    case 3:
    case 1:
    case 2:
    case 0:
    }
    while (true)
    {
      return bool;
      bool = this.c.a.getBoolean("is_wifi_upload", false);
      continue;
      bool = this.c.a.getBoolean("is_gprs_cmnet_upload", false);
      continue;
      bool = this.c.a.getBoolean("is_gprs_wap_upload", false);
      continue;
      bool = this.c.a.getBoolean("is_none_upload", false);
    }
  }

  public final void b()
  {
    try
    {
      new Thread(new wj(this)).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wh
 * JD-Core Version:    0.6.2
 */