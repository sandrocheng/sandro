import QQPIM.LicenceCheckResult;
import QQPIM.RetInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.RSAPublicKey;
import java.util.Calendar;
import java.util.Properties;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public final class bsv
{
  private static volatile bsv a = null;
  private bst b;
  private Calendar c = Calendar.getInstance();
  private bsu d;

  private bsv()
  {
    g();
  }

  public static bsv a()
  {
    try
    {
      if (a == null)
        a = new bsv();
      bsv localbsv = a;
      return localbsv;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(String paramString)
  {
    new StringBuilder("strTimeSec=").append(paramString).toString();
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = getClass();
    a.a(arrayOfClass);
    btl localbtl = new btl("licence");
    localbtl.b.putString(localbtl.a + "." + "expiry.enc_seconds", paramString);
    localbtl.b.commit();
    h();
  }

  private static byte[] a(int paramInt)
  {
    try
    {
      AssetManager localAssetManager = TMSApplication.getApplicaionContext().getAssets();
      if (paramInt == 0);
      String str;
      for (Object localObject = "licence.conf"; ; localObject = str)
      {
        InputStream localInputStream = localAssetManager.open((String)localObject);
        byte[] arrayOfByte = new byte[localInputStream.available()];
        localInputStream.read(arrayOfByte);
        localInputStream.close();
        return arrayOfByte;
        str = "licence" + paramInt + ".conf";
      }
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      DESKeySpec localDESKeySpec = new DESKeySpec(paramArrayOfByte2);
      SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
      Cipher localCipher = Cipher.getInstance("DES/ECB/NoPadding");
      localCipher.init(2, localSecretKey);
      byte[] arrayOfByte2 = localCipher.doFinal(paramArrayOfByte1);
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      while (true)
      {
        localGeneralSecurityException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private void g()
  {
    int i = 0;
    while (true)
    {
      byte[] arrayOfByte1;
      try
      {
        arrayOfByte1 = a(i);
        if (arrayOfByte1 == null)
          throw new RuntimeException("Certification file is missing! Please contact TMS(Tencent Mobile Secure) group.");
      }
      catch (RuntimeException localRuntimeException)
      {
        throw new RuntimeException("Invaild signature! Please contact TMS(Tencent Mobile Secure) group.");
      }
      RSAPublicKey localRSAPublicKey = a.c(Base64.decode("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n".getBytes(), 0));
      byte[] arrayOfByte2 = new byte[''];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
      byte[] arrayOfByte3 = a.a(arrayOfByte2, localRSAPublicKey);
      if (arrayOfByte3 == null)
        throw new RuntimeException("RSA decrypt error.");
      byte[] arrayOfByte4 = new byte[-128 + arrayOfByte1.length];
      System.arraycopy(arrayOfByte1, 128, arrayOfByte4, 0, arrayOfByte4.length);
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(a(arrayOfByte4, arrayOfByte3));
      Properties localProperties = new Properties();
      try
      {
        localProperties.load(localByteArrayInputStream);
        this.d = new bsu(localProperties, TMSApplication.getApplicaionContext());
        if (this.d.a())
        {
          h();
          this.c.setTimeInMillis(System.currentTimeMillis());
          return;
        }
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
        i++;
      }
    }
  }

  private final void h()
  {
    btl localbtl = new btl("licence");
    String str = localbtl.c.getString(localbtl.a + "." + "expiry.enc_seconds", null);
    RSAPublicKey localRSAPublicKey;
    if (str != null)
      localRSAPublicKey = a.c(Base64.decode("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n".getBytes(), 0));
    while (true)
    {
      try
      {
        byte[] arrayOfByte1 = Base64.decode(str, 0);
        int i = ByteBuffer.wrap(arrayOfByte1).getInt();
        Cipher localCipher1 = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        localCipher1.init(2, localRSAPublicKey);
        byte[] arrayOfByte2 = localCipher1.doFinal(arrayOfByte1, 4, i);
        Cipher localCipher2 = Cipher.getInstance("DES/ECB/PKCS5Padding");
        DESKeySpec localDESKeySpec = new DESKeySpec(arrayOfByte2);
        localCipher2.init(2, SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec));
        long l2 = Long.parseLong(new String(localCipher2.doFinal(arrayOfByte1, i + 4, -4 + arrayOfByte1.length - i)), 16);
        l1 = l2;
        if (l1 == -1L)
          l1 = this.d.d();
        boolean bool1 = System.currentTimeMillis() / 1000L < l1;
        boolean bool2 = false;
        if (!bool1)
          bool2 = true;
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(l1 * 1000L);
        new StringBuilder("expirySeconds=").append(l1).append("(").append(localCalendar.get(1)).append("-").append(localCalendar.get(2)).append("-").append(localCalendar.get(5)).append(") expired=").append(bool2).toString();
        this.b = new bst(bool2);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      long l1 = -1L;
    }
  }

  public final boolean a(Class<? extends BaseManager> paramClass)
  {
    bsu localbsu = this.d;
    boolean bool = false;
    if (localbsu != null)
      bool = this.d.a(paramClass);
    return bool;
  }

  public final boolean b()
  {
    LicenceCheckResult localLicenceCheckResult = new LicenceCheckResult();
    int i = this.d.a(localLicenceCheckResult);
    boolean bool1;
    if ((localLicenceCheckResult.value == null) || (localLicenceCheckResult.value.strtime_sec == null) || (localLicenceCheckResult.value.strtime_sec.length() == 0))
    {
      bool1 = false;
      switch (i)
      {
      case 0:
      default:
        boolean bool2 = e();
        bool1 = false;
        if (!bool2)
          break;
      case -1:
      case 1:
      }
      while (true)
      {
        return bool1;
        bool1 = true;
        continue;
        bool1 = true;
      }
    }
    boolean bool3;
    switch (i)
    {
    default:
      bool3 = e();
    case 1:
    case -1:
      while (true)
      {
        bool1 = false;
        if (bool3)
          break;
        bool1 = true;
        break;
        a(localLicenceCheckResult.value.strtime_sec);
        bool3 = false;
        continue;
        a(localLicenceCheckResult.value.strtime_sec);
        bool3 = true;
      }
    case 0:
    }
    throw new RuntimeException("Unknown licence! Please contact TMS(Tencent Mobile Secure) group.");
  }

  public final String c()
  {
    return this.d.b();
  }

  public final String d()
  {
    return this.d.c();
  }

  public final boolean e()
  {
    int i = 1;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(System.currentTimeMillis());
    if ((localCalendar.get(i) != this.c.get(i)) || (localCalendar.get(6) != this.c.get(6)))
      h();
    this.c.setTimeInMillis(System.currentTimeMillis());
    bst localbst = this.b;
    localbst.a();
    long l1 = localbst.a;
    long l2 = localbst.b;
    long l3 = localbst.c;
    if (l2 * l2 < l1 * (l3 * l3));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final boolean f()
  {
    return this.d.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsv
 * JD-Core Version:    0.6.2
 */