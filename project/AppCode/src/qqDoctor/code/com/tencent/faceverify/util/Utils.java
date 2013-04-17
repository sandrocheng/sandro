package com.tencent.faceverify.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Utils
{
  public static final String DIR_STORAGE = Environment.getExternalStorageDirectory() + "/faceverify/";
  public static boolean frontCameraFlag;
  public static boolean isSpecialPhone;

  public static void decodeYUV420SP(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 * paramInt2;
    int j = 0;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i19;
    for (int k = 0; ; k = i19)
    {
      if (k >= paramInt2)
        return;
      m = i + paramInt1 * (k >> 1);
      n = 0;
      i1 = 0;
      i2 = j;
      i3 = 0;
      if (i1 < paramInt1)
        break;
      i19 = k + 1;
      j = i2;
    }
    int i4 = -16 + (0xFF & paramArrayOfByte[i2]);
    if (i4 < 0);
    for (int i5 = 0; ; i5 = i4)
    {
      int i17;
      int i6;
      int i7;
      if ((i1 & 0x1) == 0)
      {
        int i15 = m + 1;
        int i16 = -128 + (0xFF & paramArrayOfByte[m]);
        i17 = i15 + 1;
        int i18 = -128 + (0xFF & paramArrayOfByte[i15]);
        i6 = i16;
        i7 = i18;
      }
      for (int i8 = i17; ; i8 = m)
      {
        int i9 = i5 * 1192;
        int i10 = i9 + i6 * 1634;
        int i11 = i9 - i6 * 833 - i7 * 400;
        int i12 = i9 + i7 * 2066;
        if (i10 < 0)
        {
          i10 = 0;
          label199: if (i11 >= 0)
            break label293;
          i11 = 0;
          label207: if (i12 >= 0)
            break label307;
          i12 = 0;
        }
        while (true)
        {
          paramArrayOfInt[i2] = (0xFF000000 & i10 << 14 | 0xFF0000 & i11 << 6 | (0xFF00 | i12 >> 2));
          int i13 = i1 + 1;
          int i14 = i2 + 1;
          i1 = i13;
          m = i8;
          i2 = i14;
          i3 = i6;
          n = i7;
          break;
          if (i10 <= 262143)
            break label199;
          i10 = 262143;
          break label199;
          label293: if (i11 <= 262143)
            break label207;
          i11 = 262143;
          break label207;
          label307: if (i12 > 262143)
            i12 = 262143;
        }
        i6 = i3;
        i7 = n;
      }
    }
  }

  public static boolean detectNetwork(Activity paramActivity)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramActivity.getApplicationContext().getSystemService("connectivity");
    boolean bool;
    if (localConnectivityManager == null)
      bool = false;
    while (true)
    {
      return bool;
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
        bool = false;
      else
        bool = true;
    }
  }

  public static int getCameraInfoFacingFrontConst()
  {
    return 1;
  }

  public static ImageInfo getImageInfo(Bitmap paramBitmap, byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramBitmap.getWidth();
    int k = paramBitmap.getHeight();
    int[] arrayOfInt = new int[j * k];
    byte[] arrayOfByte = new byte[j * k];
    paramBitmap.getPixels(arrayOfInt, 0, j, 0, 0, j, k);
    while (true)
    {
      if (i >= arrayOfInt.length)
      {
        int n = FaceLib.faceDetect(arrayOfByte, j, k, FaceLoc.class, EyeInfo.class, true);
        ImageInfo localImageInfo = null;
        if (n == 0)
        {
          int i1 = FaceLoc.width * FaceLoc.height;
          localImageInfo = new ImageInfo(EyeInfo.xLeft, EyeInfo.yLeft, EyeInfo.xRight, EyeInfo.yRight, FaceLoc.width, FaceLoc.height, i1, paramArrayOfByte);
        }
        return localImageInfo;
      }
      int m = arrayOfInt[i];
      arrayOfByte[i] = ((byte)(38 * Color.red(m) + 75 * Color.green(m) + 15 * Color.blue(m) >> 7));
      i++;
    }
  }

  public static void getRecogData(byte[] paramArrayOfByte1, boolean paramBoolean, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    int i = paramInt1 * paramInt2;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        if (!isSpecialPhone)
          break;
        return;
      }
      int k = j / paramInt2;
      paramArrayOfByte2[(-1 + (paramInt1 + paramInt1 * (j % paramInt2) - k))] = paramArrayOfByte1[j];
    }
    int m = 0;
    label59: if (m < paramInt1);
    for (int n = 0; ; n++)
    {
      if (n >= paramInt2 / 2)
      {
        m++;
        break label59;
        break;
      }
      int i1 = m + n * paramInt1;
      int i2 = m + paramInt1 * (-1 + (paramInt2 - n));
      int i3 = paramArrayOfByte2[i1];
      paramArrayOfByte2[i1] = paramArrayOfByte2[i2];
      paramArrayOfByte2[i2] = i3;
    }
  }

  public static boolean hasFrontCamera()
  {
    int i = 1;
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    int j = Camera.getNumberOfCameras();
    for (int k = 0; ; k++)
    {
      if (k >= j)
        i = 0;
      do
      {
        return i;
        Camera.getCameraInfo(k, localCameraInfo);
      }
      while (localCameraInfo.facing == i);
    }
  }

  public static Bitmap rawYuvArray2Bitmap(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt1 * paramInt2];
    decodeYUV420SP(arrayOfInt, paramArrayOfByte, paramInt1, paramInt2);
    return Bitmap.createBitmap(arrayOfInt, paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
  }

  public static Bitmap rawYuvArray2BitmapNew(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    YuvImage localYuvImage = new YuvImage(paramArrayOfByte, 17, paramInt1, paramInt2, null);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localYuvImage.compressToJpeg(new Rect(0, 0, paramInt1, paramInt2), 100, localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
  }

  public static byte[] rawYuvArray2GrayJpegByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = rawYuvData2GrayBitmap(paramArrayOfByte, paramInt1, paramInt2);
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      if (localBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localByteArrayOutputStream))
      {
        localByteArrayOutputStream.flush();
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        arrayOfByte1 = arrayOfByte2;
      }
    }
    catch (IOException localIOException1)
    {
      while (true)
      {
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream;
          localByteArrayOutputStream.close();
          localBitmap.recycle();
          return arrayOfByte1;
          localIOException1 = localIOException1;
          arrayOfByte1 = null;
          IOException localIOException2 = localIOException1;
          localIOException2.printStackTrace();
          continue;
        }
        catch (IOException localIOException3)
        {
          continue;
        }
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static Bitmap rawYuvData2GrayBitmap(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    int i = 0;
    if (i >= paramInt2)
      return localBitmap;
    for (int j = 0; ; j++)
    {
      if (j >= paramInt1)
      {
        i++;
        break;
      }
      localBitmap.setPixel(j, i, paramArrayOfByte[(j + i * paramInt1)]);
    }
  }

  public static boolean saveBaosToFile(ByteArrayOutputStream paramByteArrayOutputStream, String paramString)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramString);
      localFileOutputStream.write(paramByteArrayOutputStream.toByteArray());
      localFileOutputStream.close();
      bool = true;
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static void saveByte2Image(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
    int i = 0;
    while (true)
    {
      File localFile;
      if (i >= paramInt2)
        localFile = new File(paramString);
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream);
        localBitmap.recycle();
        localFileOutputStream.flush();
        localFileOutputStream.close();
        return;
        int j = 0;
        if (j >= paramInt1)
        {
          i++;
          continue;
        }
        int k = j + i * paramInt1;
        int i1;
        if (paramInt3 == 1)
          i1 = paramArrayOfByte[k];
        int n;
        for (m = 0xFF000000 | (i1 | (i1 << 16 | i1 << 8)); ; m = 0xFF000000 | (paramArrayOfByte[n] << 16 | paramArrayOfByte[(n + 1)] << 8 | paramArrayOfByte[(n + 2)]))
        {
          localBitmap.setPixel(j, i, m);
          j++;
          break;
          if (paramInt3 != 3)
            break label204;
          n = k * 3;
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
          localFileNotFoundException.printStackTrace();
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          localIOException.printStackTrace();
          continue;
          label204: int m = 0;
        }
      }
    }
  }

  public static void saveByte2ImageNew(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    int i = 0;
    int j = 0;
    while (true)
    {
      File localFile;
      if (i >= paramInt2)
        localFile = new File(paramString);
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream);
        localBitmap.recycle();
        localFileOutputStream.flush();
        localFileOutputStream.close();
        return;
        int k = 0;
        if (k >= paramInt1)
        {
          i++;
          continue;
        }
        int m = k + i * paramInt1;
        if (paramInt3 == 1)
        {
          int i1 = localBitmap.getPixel(k, i);
          int i2 = paramArrayOfByte[m];
          j = i2 | (i1 & 0xFF000000 | i2 << 16 | i2 << 8);
        }
        while (true)
        {
          localBitmap.setPixel(k, i, j);
          k++;
          break;
          if (paramInt3 == 3)
          {
            int n = m * 3;
            j = paramArrayOfByte[n] << 16 | paramArrayOfByte[(n + 1)] << 8 | paramArrayOfByte[(n + 2)];
          }
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
          localFileNotFoundException.printStackTrace();
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }
  }

  public static boolean saveRgbBitmapToGrayImageFile(Bitmap paramBitmap, String paramString)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    int k = 0;
    while (true)
    {
      File localFile;
      if (k >= j)
        localFile = new File(paramString);
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        bool = localBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        return bool;
        for (int m = 0; ; m++)
        {
          if (m >= i)
          {
            k++;
            break;
          }
          int n = paramBitmap.getPixel(m, k);
          int i1 = 0xFF000000 & n;
          int i2 = 38 * Color.red(n) + 75 * Color.green(n) + 15 * Color.blue(n) >> 7;
          localBitmap.setPixel(m, k, i2 | (i1 | i2 << 16 | i2 << 8));
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
        {
          localFileNotFoundException.printStackTrace();
          bool = false;
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          localIOException.printStackTrace();
          boolean bool = false;
        }
      }
    }
  }

  public static boolean saveRgbBitmapToImageFile(Bitmap paramBitmap, String paramString)
  {
    File localFile = new File(paramString);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      bool = paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static boolean saveYCbCrArray2ImageFile(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    YuvImage localYuvImage = new YuvImage(paramArrayOfByte, 17, paramInt1, paramInt2, null);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    boolean bool = localYuvImage.compressToJpeg(new Rect(0, 0, paramInt1, paramInt2), 100, localByteArrayOutputStream);
    File localFile = new File(paramString);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(localByteArrayOutputStream.toByteArray());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        bool = false;
      }
    }
  }

  public static boolean saveYuvData2GrayBitmapFile(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    Bitmap localBitmap = rawYuvData2GrayBitmap(paramArrayOfByte, paramInt1, paramInt2);
    File localFile = new File(paramString);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      bool = localBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localFileOutputStream);
      localBitmap.recycle();
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static void setSpecial(boolean paramBoolean)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.faceverify.util.Utils
 * JD-Core Version:    0.6.2
 */