package com.keniu.security.protection;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.protection.ui.ag;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

final class k extends Thread
{
  private Bitmap b;
  private String c = "mosecurity/img";

  public k(f paramf, Bitmap paramBitmap)
  {
    this.b = paramBitmap;
  }

  private void a()
  {
    if ((this.b != null) && ("mounted".equals(Environment.getExternalStorageState())));
    try
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory(), this.c);
      if (!localFile1.exists())
        localFile1.mkdir();
      Date localDate = new Date();
      String str = String.valueOf(localDate.getTime()) + "camera.jpg";
      File localFile2 = new File(localFile1, str);
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2.getAbsolutePath());
      this.b.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      a(str, localFile2);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void a(String paramString, File paramFile)
  {
    HttpURLConnection localHttpURLConnection;
    DataOutputStream localDataOutputStream;
    try
    {
      byte[] arrayOfByte = new byte[1024];
      localHttpURLConnection = (HttpURLConnection)new URL("http://m.ijinshan.com/fangdao/uptoserver.php").openConnection();
      Log.d("KnCameraPreview", localHttpURLConnection.getURL().toString());
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
      localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + "***mosecurity**");
      localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "\r\n");
      localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + "file" + "\";" + " filename=\"" + paramString + "\"" + "\r\n");
      localDataOutputStream.writeBytes("Content-Type: image/gif" + "\r\n");
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
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      return;
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "\r\n");
      localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + "time" + "\"" + "\r\n");
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.flush();
      String str1 = String.valueOf(new Date().getTime());
      localDataOutputStream.writeBytes(str1);
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "\r\n");
      localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + "sign" + "\"" + "\r\n");
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.writeBytes(ag.a("68@mwt!kingsoft*" + str1));
      localDataOutputStream.writeBytes("\r\n");
      localDataOutputStream.writeBytes("--" + "***mosecurity**" + "--" + "\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.close();
      DataInputStream localDataInputStream = new DataInputStream(localHttpURLConnection.getInputStream());
      String str2 = localDataInputStream.readLine();
      if ((str2 != null) && (str2.contains(".jpg")))
      {
        Log.d("KnCameraPreview", "http://m.ijinshan.com/fangdao/tupian/" + str2);
        String str3 = ag.a(f.a(this.a));
        if (str3 != null)
        {
          a.a(f.a(this.a), "pto", "12", "");
          Context localContext1 = f.a(this.a);
          Context localContext2 = f.a(this.a);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = ("http://m.ijinshan.com/fangdao/tupian/" + str2);
          if (ag.a(localContext1, str3, localContext2.getString(2131429207, arrayOfObject)) == -1)
            f.c(this.a).sendEmptyMessage(0);
        }
      }
      localDataInputStream.close();
    }
  }

  public final void run()
  {
    if ((this.b != null) && ("mounted".equals(Environment.getExternalStorageState())));
    try
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory(), this.c);
      if (!localFile1.exists())
        localFile1.mkdir();
      Date localDate = new Date();
      String str = String.valueOf(localDate.getTime()) + "camera.jpg";
      File localFile2 = new File(localFile1, str);
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2.getAbsolutePath());
      this.b.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      a(str, localFile2);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.k
 * JD-Core Version:    0.6.2
 */