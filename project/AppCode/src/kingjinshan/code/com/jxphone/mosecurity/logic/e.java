package com.jxphone.mosecurity.logic;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.jxphone.b.a.b;
import com.keniu.security.a;
import com.keniu.security.g;
import com.keniu.security.util.av;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class e
  implements com.jxphone.mosecurity.logic.a.e
{
  public static final String a = "http://report.sj.ijinshan.com/report/debug/upload";
  private final Context b;

  public e(Context paramContext)
  {
    this.b = paramContext;
  }

  public static boolean a(String paramString1, String paramString2, String paramString3, File paramFile)
  {
    boolean bool;
    try
    {
      byte[] arrayOfByte = new byte[1024];
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString3).openConnection();
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
      localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + "***mosecurity**");
      DataOutputStream localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "\r\n");
      localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + paramString1 + "\";" + " filename=\"" + paramString2 + "\"" + "\r\n");
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.flush();
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte, 0, 1024);
        if (i <= 0)
          break;
        localDataOutputStream.write(arrayOfByte, 0, i);
      }
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "--" + "\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.close();
      DataInputStream localDataInputStream = new DataInputStream(localHttpURLConnection.getInputStream());
      String str = localDataInputStream.readLine();
      if (str != null)
      {
        int j = str.compareTo("0");
        if (j != 0);
      }
      for (bool = true; ; bool = false)
        try
        {
          localDataInputStream.close();
        }
        catch (Exception localException2)
        {
        }
    }
    catch (Exception localException1)
    {
      bool = false;
    }
    return bool;
  }

  private boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      b localb = new b("https://secure.jxphone.com/fb/api/v1/feedback.do");
      String[][] arrayOfString; = new String[10][];
      arrayOfString;[0] = { "sid", "0401000302" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "version";
      arrayOfString1[1] = com.keniu.security.e.a(this.b);
      arrayOfString;[1] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "content";
      arrayOfString2[1] = URLEncoder.encode(paramString1);
      arrayOfString;[2] = arrayOfString2;
      arrayOfString;[3] = { "email", paramString3 };
      arrayOfString;[4] = { "mobile", paramString2 };
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "model";
      arrayOfString3[1] = Build.MODEL;
      arrayOfString;[5] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "imei";
      arrayOfString4[1] = av.b(this.b);
      arrayOfString;[6] = arrayOfString4;
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "imsi";
      arrayOfString5[1] = av.c(this.b);
      arrayOfString;[7] = arrayOfString5;
      String[] arrayOfString6 = new String[2];
      arrayOfString6[0] = "os";
      arrayOfString6[1] = "Android API Level".concat(Build.VERSION.SDK);
      arrayOfString;[8] = arrayOfString6;
      arrayOfString;[9] = { "flag", paramString4 };
      Log.d("FeedBack", "send crush infomation");
      boolean bool2 = localb.a(arrayOfString;);
      bool1 = bool2;
      return bool1;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
      {
        Log.w(getClass().getSimpleName(), "error on feedback url", localMalformedURLException);
        bool1 = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Log.w(getClass().getSimpleName(), "error on send feedback ", localIOException);
        boolean bool1 = false;
      }
    }
  }

  private static boolean b(File[] paramArrayOfFile, File paramFile)
  {
    boolean bool;
    try
    {
      byte[] arrayOfByte = new byte[1024];
      ZipOutputStream localZipOutputStream = new ZipOutputStream(new FileOutputStream(paramFile));
      for (int i = 0; i < paramArrayOfFile.length; i++)
      {
        FileInputStream localFileInputStream = new FileInputStream(paramArrayOfFile[i]);
        localZipOutputStream.putNextEntry(new ZipEntry(paramArrayOfFile[i].getName()));
        while (true)
        {
          int j = localFileInputStream.read(arrayOfByte, 0, 1024);
          if (j <= 0)
            break;
          localZipOutputStream.write(arrayOfByte, 0, j);
        }
        localFileInputStream.close();
      }
      localZipOutputStream.flush();
      localZipOutputStream.close();
      bool = true;
    }
    catch (IOException localIOException)
    {
      bool = false;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      bool = false;
    }
    return bool;
  }

  public final void a()
  {
    g.a();
    if (g.b());
    while (true)
    {
      return;
      if (a.a(this.b).aH())
        new f(this).start();
    }
  }

  public final boolean a(String paramString1, String paramString2, String paramString3)
  {
    return a(paramString1, paramString2, paramString3, "fb");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.e
 * JD-Core Version:    0.6.2
 */