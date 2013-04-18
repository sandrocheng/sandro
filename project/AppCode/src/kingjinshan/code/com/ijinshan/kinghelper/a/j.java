package com.ijinshan.kinghelper.a;

import android.a.t;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.provider.CallLog.Calls;
import android.provider.Contacts.People;
import android.provider.Contacts.Phones;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import king.org.apache.commons.codec.binary.Base64;
import king.org.apache.commons.codec.binary.StringUtils;
import king.org.apache.commons.codec.digest.DigestUtils;

public final class j
{
  private static final byte[] a = DigestUtils.md5("kinsoft_ijinshan".getBytes());
  private static final byte[] b = DigestUtils.md5("ijinshan_sync_compress".getBytes());

  public static long a()
  {
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  public static String a(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }

  public static String a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    for (Object localObject = ""; ; localObject = "")
    {
      return localObject;
      if ((TextUtils.isEmpty(paramString)) || (PhoneNumberUtils.isGlobalPhoneNumber(paramString)))
        break;
    }
    String str1 = i.a(paramString);
    Uri localUri1;
    label54: Cursor localCursor;
    if (Integer.parseInt(Build.VERSION.SDK) > 4)
    {
      localUri1 = e.c;
      Uri localUri2 = Uri.withAppendedPath(localUri1, str1);
      localCursor = paramContext.getContentResolver().query(localUri2, null, null, null, null);
      if (localCursor == null)
        break label137;
      if (!localCursor.moveToFirst())
        break label143;
      Integer.parseInt(Build.VERSION.SDK);
    }
    label137: label143: for (String str2 = localCursor.getString(localCursor.getColumnIndex("display_name")); ; str2 = null)
    {
      localCursor.close();
      localObject = str2;
      break;
      localUri1 = Contacts.People.CONTENT_FILTER_URI;
      break label54;
      localObject = null;
      break;
    }
  }

  private static String a(byte[] paramArrayOfByte)
  {
    Object localObject = "";
    try
    {
      byte[] arrayOfByte = MessageDigest.getInstance("MD5").digest(paramArrayOfByte);
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        int j = 0xFF & arrayOfByte[i];
        if (j < 16)
          localStringBuffer.append("0");
        localStringBuffer.append(Integer.toHexString(j));
      }
      String str = localStringBuffer.toString();
      localObject = str;
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        localNoSuchAlgorithmException.printStackTrace();
    }
  }

  private static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    InputStream localInputStream;
    FileOutputStream localFileOutputStream;
    boolean bool;
    try
    {
      localInputStream = localAssetManager.open(paramString1);
      localFileOutputStream = new FileOutputStream(paramString2);
      byte[] arrayOfByte = new byte[512];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      Log.e("zy>>Utils>>copyAssertToFile", "" + localIOException.getMessage(), localIOException);
      bool = false;
    }
    while (true)
    {
      return bool;
      localFileOutputStream.flush();
      localFileOutputStream.close();
      localInputStream.close();
      bool = true;
    }
  }

  public static boolean a(File paramFile1, File paramFile2)
  {
    boolean bool;
    if ((paramFile1 == null) || (!paramFile1.exists()) || (paramFile1.isDirectory()) || (paramFile2 == null) || ((paramFile2.exists()) && (paramFile2.isDirectory())))
      bool = false;
    while (true)
    {
      return bool;
      FileInputStream localFileInputStream;
      GZIPOutputStream localGZIPOutputStream;
      CipherInputStream localCipherInputStream;
      try
      {
        int i = a.length / 2;
        byte[] arrayOfByte1 = new byte[i];
        byte[] arrayOfByte2 = new byte[i];
        System.arraycopy(a, 0, arrayOfByte1, 0, i);
        System.arraycopy(a, i, arrayOfByte2, 0, i);
        SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(arrayOfByte1));
        IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte2);
        Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        localCipher.init(1, localSecretKey, localIvParameterSpec);
        localFileInputStream = new FileInputStream(paramFile1);
        localGZIPOutputStream = new GZIPOutputStream(new FileOutputStream(paramFile2));
        localCipherInputStream = new CipherInputStream(localFileInputStream, localCipher);
        localGZIPOutputStream.write(b, 0, b.length);
        byte[] arrayOfByte3 = new byte[1024];
        while (true)
        {
          int j = localCipherInputStream.read(arrayOfByte3);
          if (j <= 0)
            break;
          localGZIPOutputStream.write(arrayOfByte3, 0, j);
        }
      }
      catch (Exception localException)
      {
        Log.e("Utils>>encryptFile", "des failer:" + localException.getMessage(), localException);
        bool = false;
      }
      continue;
      localCipherInputStream.close();
      localFileInputStream.close();
      localGZIPOutputStream.close();
      bool = true;
    }
  }

  public static boolean a(String paramString)
  {
    boolean bool;
    if ((paramString.length() == 16) && (paramString.startsWith("125201")))
      bool = true;
    while (true)
    {
      return bool;
      if ((paramString.length() == 19) && (paramString.startsWith("125200261")))
        bool = true;
      else
        bool = false;
    }
  }

  public static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool;
    if (paramArrayOfByte1.length != paramArrayOfByte2.length)
      bool = false;
    while (true)
    {
      return bool;
      for (int i = 0; ; i++)
      {
        if (i >= paramArrayOfByte1.length)
          break label39;
        if (paramArrayOfByte1[i] != paramArrayOfByte2[i])
        {
          bool = false;
          break;
        }
      }
      label39: bool = true;
    }
  }

  private static boolean a(char[] paramArrayOfChar, byte[] paramArrayOfByte)
  {
    boolean bool;
    if (paramArrayOfChar.length != paramArrayOfByte.length)
      bool = false;
    while (true)
    {
      return bool;
      for (int i = 0; ; i++)
      {
        if (i >= paramArrayOfChar.length)
          break label39;
        if (paramArrayOfChar[i] != paramArrayOfByte[i])
        {
          bool = false;
          break;
        }
      }
      label39: bool = true;
    }
  }

  public static int b(Context paramContext, String paramString)
  {
    int i;
    if (TextUtils.isEmpty(paramString))
      i = 0;
    while (true)
    {
      return i;
      if ((!TextUtils.isEmpty(paramString)) && (!PhoneNumberUtils.isGlobalPhoneNumber(paramString)))
      {
        i = 0;
      }
      else
      {
        Uri localUri = Uri.withAppendedPath(CallLog.Calls.CONTENT_FILTER_URI, paramString);
        Cursor localCursor = paramContext.getContentResolver().query(localUri, new String[] { "_id" }, "type=2", null, null);
        if (localCursor != null)
        {
          int j = localCursor.getCount();
          localCursor.close();
          i = j;
        }
        else
        {
          i = 0;
        }
      }
    }
  }

  private static long b(String paramString)
  {
    StatFs localStatFs = new StatFs(paramString);
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  public static String b(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str2;
    if (localTelephonyManager == null)
      str2 = "-1";
    while (true)
    {
      return str2;
      String str1 = localTelephonyManager.getSubscriberId();
      if (TextUtils.isEmpty(str1))
        str2 = "-1";
      else
        str2 = str1.trim();
    }
  }

  public static boolean b()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }

  public static boolean b(File paramFile1, File paramFile2)
  {
    GZIPInputStream localGZIPInputStream;
    FileOutputStream localFileOutputStream;
    CipherOutputStream localCipherOutputStream;
    boolean bool;
    try
    {
      int i = a.length / 2;
      byte[] arrayOfByte1 = new byte[i];
      byte[] arrayOfByte2 = new byte[i];
      System.arraycopy(a, 0, arrayOfByte1, 0, i);
      System.arraycopy(a, i, arrayOfByte2, 0, i);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte2);
      SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(arrayOfByte1));
      Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
      localCipher.init(2, localSecretKey, localIvParameterSpec);
      localGZIPInputStream = new GZIPInputStream(new FileInputStream(paramFile1));
      localFileOutputStream = new FileOutputStream(paramFile2);
      localCipherOutputStream = new CipherOutputStream(localFileOutputStream, localCipher);
      byte[] arrayOfByte3 = new byte[b.length];
      localGZIPInputStream.read(arrayOfByte3, 0, b.length);
      if (!a(arrayOfByte3, b))
        localCipherOutputStream.write(arrayOfByte3, 0, arrayOfByte3.length);
      byte[] arrayOfByte4 = new byte[1024];
      while (true)
      {
        int j = localGZIPInputStream.read(arrayOfByte4);
        if (j < 0)
          break;
        localCipherOutputStream.write(arrayOfByte4, 0, j);
      }
    }
    catch (Exception localException)
    {
      Log.e("Utils>>decryptFile", "des failer:" + localException.getMessage(), localException);
      bool = false;
    }
    while (true)
    {
      return bool;
      localCipherOutputStream.close();
      localFileOutputStream.close();
      localGZIPInputStream.close();
      bool = true;
    }
  }

  public static int c(Context paramContext, String paramString)
  {
    int i;
    if (TextUtils.isEmpty(paramString))
      i = 0;
    while (true)
    {
      return i;
      if ((!TextUtils.isEmpty(paramString)) && (!PhoneNumberUtils.isGlobalPhoneNumber(paramString)))
      {
        i = 0;
      }
      else
      {
        Cursor localCursor = t.a(paramContext.getContentResolver());
        if (localCursor != null)
        {
          int j = localCursor.getColumnIndex("address");
          int k = localCursor.getColumnIndex("type");
          int m = 0;
          label153: 
          while (localCursor.moveToNext())
          {
            String str1 = localCursor.getString(j);
            if (t.a(localCursor.getInt(k)))
            {
              String str2 = i.a(str1);
              String str3 = i.a(paramString);
              if ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)));
              for (boolean bool = false; ; bool = str2.equals(str3))
              {
                if (!bool)
                  break label153;
                m++;
                break;
              }
            }
          }
          localCursor.close();
          i = m;
        }
        else
        {
          i = 0;
        }
      }
    }
  }

  private static String c(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString))
      str = "";
    while (true)
    {
      return str;
      byte[] arrayOfByte1 = Base64.decodeBase64(paramString);
      if (arrayOfByte1 == null)
      {
        str = "";
      }
      else
      {
        byte[] arrayOfByte4;
        try
        {
          int i = a.length / 2;
          byte[] arrayOfByte2 = new byte[i];
          byte[] arrayOfByte3 = new byte[i];
          System.arraycopy(a, 0, arrayOfByte2, 0, i);
          System.arraycopy(a, i, arrayOfByte3, 0, i);
          IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte3);
          SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(arrayOfByte2));
          Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
          localCipher.init(2, localSecretKey, localIvParameterSpec);
          arrayOfByte4 = localCipher.doFinal(arrayOfByte1);
          if (arrayOfByte4 != null)
            break label162;
          str = "";
        }
        catch (Exception localException)
        {
          Log.e("Utils>>decrypt", "des failer:", localException);
          str = "";
        }
        continue;
        label162: str = StringUtils.newStringUtf8(arrayOfByte4);
      }
    }
  }

  public static boolean c(Context paramContext)
  {
    Log.e("IsNetworkAvailable", "begin");
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    Log.e("IsNetworkAvailable", "end");
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static Uri d(Context paramContext, String paramString)
  {
    Uri localUri1;
    Cursor localCursor;
    String str;
    Uri localUri5;
    if (Integer.parseInt(Build.VERSION.SDK) > 4)
    {
      localUri1 = e.c;
      Uri localUri2 = Uri.withAppendedPath(localUri1, paramString);
      localCursor = paramContext.getContentResolver().query(localUri2, null, null, null, null);
      if (localCursor == null)
        break label121;
      if (!localCursor.moveToFirst())
        break label127;
      str = localCursor.getString(localCursor.getColumnIndex("_id"));
      if (Integer.parseInt(Build.VERSION.SDK) <= 4)
        break label113;
      localUri5 = e.d;
    }
    label83: label113: label121: label127: for (Uri localUri4 = Uri.withAppendedPath(localUri5, str); ; localUri4 = null)
    {
      localCursor.close();
      for (Uri localUri3 = localUri4; ; localUri3 = null)
      {
        return localUri3;
        localUri1 = Contacts.Phones.CONTENT_FILTER_URL;
        break;
        localUri5 = Contacts.People.CONTENT_URI;
        break label83;
      }
    }
  }

  private static String d(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    while (true)
    {
      return str;
      byte[] arrayOfByte1 = StringUtils.getBytesUtf8(paramString);
      try
      {
        int i = a.length / 2;
        byte[] arrayOfByte2 = new byte[i];
        byte[] arrayOfByte3 = new byte[i];
        System.arraycopy(a, 0, arrayOfByte2, 0, i);
        System.arraycopy(a, i, arrayOfByte3, 0, i);
        SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(arrayOfByte2));
        IvParameterSpec localIvParameterSpec = new IvParameterSpec(arrayOfByte3);
        Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        localCipher.init(1, localSecretKey, localIvParameterSpec);
        byte[] arrayOfByte4 = localCipher.doFinal(arrayOfByte1);
        str = Base64.encodeBase64String(arrayOfByte4).replaceAll("\\+", "-").replaceAll("\\/", "_");
      }
      catch (Exception localException)
      {
        Log.e("Utils>>encrypt", "des failer:", localException);
        str = "";
      }
    }
  }

  private static boolean d(Context paramContext)
  {
    Log.e("IsNetworkAvailable", "begin");
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    Log.e("IsNetworkAvailable", "end");
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.getType() == 1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean e(String paramString)
  {
    Log.d("IsFileExist", "begin");
    if (new File(paramString).length() < 10000L);
    for (boolean bool = false; ; bool = true)
    {
      Log.d("IsFileExist", "end");
      return bool;
    }
  }

  private static boolean f(String paramString)
  {
    boolean bool;
    if (paramString.length() <= 0)
      bool = false;
    while (true)
    {
      return bool;
      if (paramString.startsWith("10"))
        bool = true;
      else if (paramString.startsWith("12"))
      {
        if (a(paramString))
          bool = false;
        else
          bool = true;
      }
      else if (paramString.startsWith("9"))
        bool = true;
      else if (paramString.startsWith("4"))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.j
 * JD-Core Version:    0.6.2
 */