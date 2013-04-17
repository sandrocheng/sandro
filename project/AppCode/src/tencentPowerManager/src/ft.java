import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.tmsecure.common.BaseManager;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

final class ft extends BaseManager
{
  PackageManager a = null;
  Context b = null;
  private CertificateFactory c = null;

  final PackageInfo a(String paramString, int paramInt)
  {
    try
    {
      PackageInfo localPackageInfo2 = this.a.getPackageInfo(paramString, paramInt);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        gk.a(paramString + " can't be found");
        PackageInfo localPackageInfo1 = null;
      }
    }
  }

  // ERROR //
  java.security.cert.Certificate a(android.content.pm.Signature paramSignature)
  {
    // Byte code:
    //   0: new 63	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 69	android/content/pm/Signature:toByteArray	()[B
    //   8: invokespecial 72	java/io/ByteArrayInputStream:<init>	([B)V
    //   11: astore_2
    //   12: aload_0
    //   13: getfield 20	ft:c	Ljava/security/cert/CertificateFactory;
    //   16: aload_2
    //   17: invokevirtual 78	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   20: checkcast 80	java/security/cert/X509Certificate
    //   23: astore 7
    //   25: aload_2
    //   26: invokevirtual 83	java/io/ByteArrayInputStream:close	()V
    //   29: aload 7
    //   31: areturn
    //   32: astore 8
    //   34: aload 8
    //   36: invokevirtual 86	java/security/cert/CertificateException:printStackTrace	()V
    //   39: aload_2
    //   40: invokevirtual 83	java/io/ByteArrayInputStream:close	()V
    //   43: aconst_null
    //   44: astore 7
    //   46: goto -17 -> 29
    //   49: astore 9
    //   51: aload 9
    //   53: invokevirtual 87	java/io/IOException:printStackTrace	()V
    //   56: aconst_null
    //   57: astore 7
    //   59: goto -30 -> 29
    //   62: astore 5
    //   64: aload 5
    //   66: invokevirtual 88	java/lang/Exception:printStackTrace	()V
    //   69: aload_2
    //   70: invokevirtual 83	java/io/ByteArrayInputStream:close	()V
    //   73: aconst_null
    //   74: astore 7
    //   76: goto -47 -> 29
    //   79: astore 6
    //   81: aload 6
    //   83: invokevirtual 87	java/io/IOException:printStackTrace	()V
    //   86: aconst_null
    //   87: astore 7
    //   89: goto -60 -> 29
    //   92: astore_3
    //   93: aload_2
    //   94: invokevirtual 83	java/io/ByteArrayInputStream:close	()V
    //   97: aload_3
    //   98: athrow
    //   99: astore 4
    //   101: aload 4
    //   103: invokevirtual 87	java/io/IOException:printStackTrace	()V
    //   106: goto -9 -> 97
    //   109: astore 10
    //   111: aload 10
    //   113: invokevirtual 87	java/io/IOException:printStackTrace	()V
    //   116: goto -87 -> 29
    //
    // Exception table:
    //   from	to	target	type
    //   12	25	32	java/security/cert/CertificateException
    //   39	43	49	java/io/IOException
    //   12	25	62	java/lang/Exception
    //   69	73	79	java/io/IOException
    //   12	25	92	finally
    //   34	39	92	finally
    //   64	69	92	finally
    //   93	97	99	java/io/IOException
    //   25	29	109	java/io/IOException
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    new fr();
    this.a = paramContext.getPackageManager();
    try
    {
      this.c = CertificateFactory.getInstance("X.509");
      return;
    }
    catch (CertificateException localCertificateException)
    {
      while (true)
        gk.b(localCertificateException.getLocalizedMessage());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ft
 * JD-Core Version:    0.6.2
 */