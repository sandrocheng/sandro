import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
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

public final class ek
{
  private static volatile ek a = null;
  private ei b;
  private Calendar c = Calendar.getInstance();
  private ej d;

  private ek()
  {
    f();
  }

  public static ek a()
  {
    try
    {
      if (a == null)
        a = new ek();
      ek localek = a;
      return localek;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
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

  private void f()
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
      RSAPublicKey localRSAPublicKey = a.a(gi.a("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n".getBytes(), 0));
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
        this.d = new ej(localProperties, TMSApplication.getApplicaionContext());
        if (this.d.a())
        {
          g();
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

  private final void g()
  {
    ex localex = new ex("licence");
    String str = localex.c.getString(localex.a + "." + "expiry.enc_seconds", null);
    RSAPublicKey localRSAPublicKey;
    if (str != null)
      localRSAPublicKey = a.a(gi.a("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n".getBytes(), 0));
    while (true)
    {
      try
      {
        byte[] arrayOfByte1 = gi.a(str);
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
        this.b = new ei(bool2);
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
    ej localej = this.d;
    boolean bool = false;
    if (localej != null)
      bool = this.d.a(paramClass);
    return bool;
  }

  public final String b()
  {
    return this.d.b();
  }

  public final String c()
  {
    return this.d.c();
  }

  public final boolean d()
  {
    int i = 1;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(System.currentTimeMillis());
    if ((localCalendar.get(i) != this.c.get(i)) || (localCalendar.get(6) != this.c.get(6)))
      g();
    this.c.setTimeInMillis(System.currentTimeMillis());
    ei localei = this.b;
    localei.a();
    long l1 = localei.a;
    long l2 = localei.b;
    long l3 = localei.c;
    if (l2 * l2 < l1 * (l3 * l3));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final boolean e()
  {
    return this.d.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ek
 * JD-Core Version:    0.6.2
 */