package com.keniu.security.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public final class az
{
  public static int a = 512;

  private static void a(String paramString1, String paramString2)
  {
    ZipInputStream localZipInputStream = new ZipInputStream(new FileInputStream(paramString1));
    while (true)
    {
      ZipEntry localZipEntry = localZipInputStream.getNextEntry();
      if (localZipEntry == null)
        break;
      String str = localZipEntry.getName();
      File localFile1 = new File(paramString2 + File.separator + str);
      if (localZipEntry.isDirectory())
      {
        localFile1.mkdirs();
      }
      else
      {
        File localFile2 = localFile1.getParentFile();
        if (!localFile2.exists())
          localFile2.mkdirs();
        localFile1.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile1);
        byte[] arrayOfByte = new byte[a];
        while (true)
        {
          int i = localZipInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
          localFileOutputStream.flush();
        }
        localFileOutputStream.close();
      }
    }
    localZipInputStream.close();
    Log.v("outPathString", paramString2);
  }

  private static void a(String paramString1, String paramString2, ZipOutputStream paramZipOutputStream)
  {
    if (paramZipOutputStream == null);
    while (true)
    {
      return;
      File localFile = new File(paramString1 + paramString2);
      if (localFile.isFile())
      {
        ZipEntry localZipEntry = new ZipEntry(paramString2);
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        paramZipOutputStream.putNextEntry(localZipEntry);
        byte[] arrayOfByte = new byte[a];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          paramZipOutputStream.write(arrayOfByte, 0, i);
        }
        paramZipOutputStream.closeEntry();
      }
      else
      {
        String[] arrayOfString = localFile.list();
        if (arrayOfString.length <= 0)
        {
          paramZipOutputStream.putNextEntry(new ZipEntry(paramString2 + File.separator));
          paramZipOutputStream.closeEntry();
        }
        for (int j = 0; j < arrayOfString.length; j++)
          a(paramString1, paramString2 + File.separator + arrayOfString[j], paramZipOutputStream);
      }
    }
  }

  private static void b(String paramString1, String paramString2)
  {
    Log.v("XZip", "ZipFolder(String, String)");
    File localFile = new File(paramString1);
    if (localFile.exists())
    {
      ZipOutputStream localZipOutputStream = new ZipOutputStream(new FileOutputStream(paramString2));
      a(localFile.getParent() + File.separator, localFile.getName(), localZipOutputStream);
      localZipOutputStream.finish();
      localZipOutputStream.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.az
 * JD-Core Version:    0.6.2
 */