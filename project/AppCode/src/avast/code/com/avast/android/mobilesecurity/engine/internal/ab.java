package com.avast.android.mobilesecurity.engine.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.avast.android.generic.c.b;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class ab
{
  private final ZipFile a;
  private final ZipFile b;

  public ab(Context paramContext, File paramFile)
  {
    this.b = new ZipFile(paramContext.getApplicationInfo().sourceDir);
    this.a = new ZipFile(paramFile);
  }

  private String a(ZipEntry paramZipEntry)
  {
    try
    {
      X509Certificate localX509Certificate1 = a(this.b, null);
      X509Certificate localX509Certificate2 = a(this.a, paramZipEntry);
      if ((localX509Certificate1 != null) && (localX509Certificate2 != null))
      {
        if (!localX509Certificate1.getIssuerDN().equals(localX509Certificate2.getIssuerDN()))
        {
          localObject = null;
          break label326;
        }
        if (!localX509Certificate1.getSubjectDN().equals(localX509Certificate2.getSubjectDN()))
        {
          localObject = null;
          break label326;
        }
        RSAPublicKey localRSAPublicKey1 = (RSAPublicKey)localX509Certificate1.getPublicKey();
        RSAPublicKey localRSAPublicKey2 = (RSAPublicKey)localX509Certificate2.getPublicKey();
        if (!localRSAPublicKey1.getAlgorithm().equals(localRSAPublicKey2.getAlgorithm()))
        {
          localObject = null;
          break label326;
        }
        if (localRSAPublicKey1.getModulus().compareTo(localRSAPublicKey2.getModulus()) != 0)
        {
          localObject = null;
          break label326;
        }
        if (localRSAPublicKey1.getPublicExponent().compareTo(localRSAPublicKey2.getPublicExponent()) != 0)
        {
          localObject = null;
          break label326;
        }
        byte[] arrayOfByte1 = b(paramZipEntry);
        Cipher localCipher = Cipher.getInstance("RSA/None/PKCS1Padding", "BC");
        localCipher.init(2, localX509Certificate2);
        byte[] arrayOfByte2 = localCipher.doFinal(arrayOfByte1);
        localObject = "";
        int i = 0;
        while (i < arrayOfByte2.length)
        {
          String str = (String)localObject + Integer.toString(256 + (0xFF & arrayOfByte2[i]), 16).substring(1);
          i++;
          localObject = str;
        }
      }
    }
    catch (IOException localIOException)
    {
      localObject = null;
    }
    catch (CertificateException localCertificateException)
    {
      localObject = null;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localObject = null;
    }
    catch (NoSuchProviderException localNoSuchProviderException)
    {
      localObject = null;
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      localObject = null;
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      localObject = null;
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      localObject = null;
    }
    catch (BadPaddingException localBadPaddingException)
    {
      localObject = null;
    }
    Object localObject = null;
    label326: return localObject;
  }

  private X509Certificate a(ZipFile paramZipFile, ZipEntry paramZipEntry)
  {
    Enumeration localEnumeration = paramZipFile.entries();
    ZipEntry localZipEntry;
    if (paramZipEntry == null)
    {
      localZipEntry = paramZipEntry;
      do
      {
        if (!localEnumeration.hasMoreElements())
          break;
        localZipEntry = (ZipEntry)localEnumeration.nextElement();
      }
      while ((!localZipEntry.getName().startsWith("META-INF/")) || (!localZipEntry.getName().endsWith(".RSA")));
    }
    while (true)
    {
      InputStream localInputStream = paramZipFile.getInputStream(localZipEntry);
      List localList = (List)CertificateFactory.getInstance("X509").generateCertificates(localInputStream);
      if ((localList == null) || (localList.isEmpty()));
      for (X509Certificate localX509Certificate = null; ; localX509Certificate = (X509Certificate)localList.get(0))
        return localX509Certificate;
      localZipEntry = paramZipEntry;
    }
  }

  private byte[] b(ZipEntry paramZipEntry)
  {
    Enumeration localEnumeration = this.a.entries();
    if (paramZipEntry == null)
    {
      localZipEntry = paramZipEntry;
      while (localEnumeration.hasMoreElements())
      {
        localZipEntry = (ZipEntry)localEnumeration.nextElement();
        if ((!localZipEntry.getName().startsWith("META-INF/")) || (!localZipEntry.getName().endsWith(".RSA")));
      }
    }
    ZipEntry localZipEntry = paramZipEntry;
    InputStream localInputStream = this.a.getInputStream(localZipEntry);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream((int)localZipEntry.getSize());
    byte[] arrayOfByte = new byte[(int)localZipEntry.getSize()];
    while (true)
    {
      int i = localInputStream.read(arrayOfByte);
      if (i < 0)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return new a(localByteArrayOutputStream.toByteArray()).a();
  }

  private m c(ZipEntry paramZipEntry)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.a.getInputStream(paramZipEntry)));
    m localm = new m();
    String str1 = "";
    while (true)
    {
      String str2 = localBufferedReader.readLine();
      if (str2 == null)
        break;
      if (str2.startsWith("SHA1-Digest-Manifest:"))
        localm.a(b.a(str2.substring(2 + str2.indexOf(":"))));
      else if (str2.startsWith("Name:"))
        str1 = str2.substring(2 + str2.indexOf(":"));
      else if (str2.startsWith("SHA1-Digest:"))
        localm.a(str1, b.a(str2.substring(2 + str2.indexOf(":"))));
    }
    return localm;
  }

  public boolean a()
  {
    while (true)
    {
      Object localObject1;
      Object localObject2;
      Object localObject3;
      int i;
      String str5;
      try
      {
        Enumeration localEnumeration1 = this.a.entries();
        localObject1 = null;
        localObject2 = null;
        localObject3 = null;
        if (!localEnumeration1.hasMoreElements())
          break label719;
        ZipEntry localZipEntry2 = (ZipEntry)localEnumeration1.nextElement();
        if ((localZipEntry2.getName().startsWith("META-INF/")) && (localZipEntry2.getName().endsWith(".RSA")))
          localObject3 = localZipEntry2;
        if ((localZipEntry2.getName().startsWith("META-INF/")) && (localZipEntry2.getName().endsWith(".SF")))
          localObject2 = localZipEntry2;
        if ((!localZipEntry2.getName().startsWith("META-INF/")) || (!localZipEntry2.getName().endsWith(".MF")))
          continue;
        localObject1 = localZipEntry2;
        continue;
        String str1 = a(localObject3);
        String str2 = f.a(g.a, this.a.getInputStream(localObject2), 0);
        String str3 = "3021300906052b0e03021a05000414" + str2;
        if ((str1 == null) || (str1.compareToIgnoreCase(str3) != 0))
          break label738;
        m localm = c(localObject2);
        byte[] arrayOfByte = f.a(g.a, this.a.getInputStream(localObject1));
        if ((arrayOfByte == null) || (localm.a() == null))
          break label743;
        if (arrayOfByte.length == localm.a().length)
          break label748;
        break label743;
        if (i < arrayOfByte.length)
        {
          if (arrayOfByte[i] == localm.a()[i])
            break label754;
          bool1 = false;
        }
        else
        {
          h localh = new h();
          BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.a.getInputStream(localObject1)));
          String str4 = "";
          str5 = "";
          String str6 = localBufferedReader.readLine();
          if (str6 != null)
          {
            if (str6.startsWith("Name:"))
            {
              str4 = str6.substring(2 + str6.indexOf(":"));
              str5 = str5 + str6 + "\r\n";
              continue;
            }
            if (str6.startsWith("SHA1-Digest:"))
            {
              localh.a(str4, b.a(str6.substring(2 + str6.indexOf(":"))));
              str5 = str5 + str6 + "\r\n";
              continue;
            }
            if ((!"".equals(str6)) || ("".equals(str5)))
              continue;
            str5 = str5 + "\r\n";
            String str7 = f.a(g.a, str5, 0);
            String str8 = "";
            if (localm.a(str4) == null)
              continue;
            int j = 0;
            if (j < localm.a(str4).length)
            {
              str8 = str8 + Integer.toString(256 + (0xFF & localm.a(str4)[j]), 16).substring(1);
              j++;
              continue;
            }
            if (str7.compareToIgnoreCase(str8) == 0)
              break label760;
            bool1 = false;
            break label736;
          }
          Enumeration localEnumeration2 = this.a.entries();
          if (localEnumeration2.hasMoreElements())
          {
            ZipEntry localZipEntry1 = (ZipEntry)localEnumeration2.nextElement();
            if (localZipEntry1.getName().startsWith("META-INF/"))
              continue;
            boolean bool2 = localh.b(localZipEntry1.getName(), f.a(g.a, this.a.getInputStream(localZipEntry1)));
            if (bool2)
              continue;
            bool1 = false;
          }
        }
      }
      catch (ZipException localZipException)
      {
        bool1 = false;
      }
      catch (IOException localIOException)
      {
        bool1 = false;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        bool1 = false;
      }
      boolean bool1 = true;
      label719: if ((localObject3 == null) || (localObject2 == null) || (localObject1 == null))
      {
        bool1 = false;
        while (true)
        {
          label736: return bool1;
          label738: bool1 = false;
          continue;
          label743: bool1 = false;
        }
        label748: i = 0;
        continue;
        label754: i++;
        continue;
        label760: str5 = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.ab
 * JD-Core Version:    0.6.2
 */