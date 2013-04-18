package com.c.a.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class j
{
  public int a;
  public long b;

  public j()
  {
  }

  j(byte paramByte)
  {
    this.a = 0;
    this.b = 0L;
  }

  public static String a(PackageManager paramPackageManager, String paramString)
  {
    int i = 0;
    Object localObject;
    try
    {
      ApplicationInfo localApplicationInfo = paramPackageManager.getApplicationInfo(paramString, 0);
      if (localApplicationInfo == null)
      {
        localObject = null;
      }
      else if ((0x1 & localApplicationInfo.flags) != 0)
      {
        localObject = "SYSTEM";
      }
      else
      {
        PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 64);
        if ((localPackageInfo == null) || (localPackageInfo.signatures == null) || (localPackageInfo.signatures.length == 0) || (localPackageInfo.signatures[0] == null))
          break label226;
        byte[] arrayOfByte1 = localPackageInfo.signatures[0].toByteArray();
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        if (localMessageDigest == null)
        {
          localObject = null;
        }
        else
        {
          byte[] arrayOfByte2 = localMessageDigest.digest(arrayOfByte1);
          if (arrayOfByte2 == null)
          {
            localObject = null;
          }
          else
          {
            StringBuffer localStringBuffer = new StringBuffer(arrayOfByte2.length << 1);
            int j = arrayOfByte2.length;
            while (i < j)
            {
              byte b1 = arrayOfByte2[i];
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = Byte.valueOf(b1);
              localStringBuffer.append(String.format("%02x", arrayOfObject));
              i++;
            }
            String str = localStringBuffer.toString();
            localObject = str;
          }
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localObject = null;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localObject = null;
    }
    while (true)
    {
      return localObject;
      label226: localObject = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.j
 * JD-Core Version:    0.6.2
 */