import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Properties;

final class ej
{
  private static final HashMap<String, String> a = new HashMap();
  private static final long b = new GregorianCalendar(2016, 0, 1).getTimeInMillis() / 1000L;
  private Properties c;
  private Context d;

  static
  {
    a.put("AresEngineManager", "aresengine");
    a.put("QScannerManager", "qscanner");
    a.put("LocationManager", "phoneservice");
    a.put("IpDialManager", "phoneservice");
    a.put("UsefulNumberManager", "phoneservice");
    a.put("NetworkManager", "network");
    a.put("TrafficCorrectionManager", "network");
    a.put("FirewallManager", "network");
    a.put("NetSettingManager", "netsetting");
    a.put("OptimizeManager", "optimize");
    a.put("UpdateManager", "update");
    a.put("UrlCheckManager", "urlcheck");
    a.put("PermissionManager", "permission");
    a.put("SoftwareManager", "software");
    a.put("AntitheftManager", "antitheft");
    a.put("PowerSavingManager", "powersaving");
  }

  ej(Properties paramProperties, Context paramContext)
  {
    this.c = paramProperties;
    this.d = paramContext;
  }

  // ERROR //
  private String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 101	ej:d	Landroid/content/Context;
    //   4: invokevirtual 114	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   7: astore_2
    //   8: aload_2
    //   9: aload_1
    //   10: bipush 64
    //   12: invokevirtual 120	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   15: astore 12
    //   17: aload 12
    //   19: astore 4
    //   21: aload 4
    //   23: ifnull +110 -> 133
    //   26: new 122	java/io/ByteArrayInputStream
    //   29: dup
    //   30: aload 4
    //   32: getfield 128	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   35: iconst_0
    //   36: aaload
    //   37: invokevirtual 134	android/content/pm/Signature:toByteArray	()[B
    //   40: invokespecial 137	java/io/ByteArrayInputStream:<init>	([B)V
    //   43: astore 5
    //   45: ldc 139
    //   47: invokestatic 145	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   50: aload 5
    //   52: invokevirtual 149	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   55: checkcast 151	java/security/cert/X509Certificate
    //   58: invokevirtual 154	java/security/cert/X509Certificate:getEncoded	()[B
    //   61: invokestatic 159	ew:a	([B)Ljava/lang/String;
    //   64: astore 11
    //   66: aload 11
    //   68: astore 7
    //   70: aload 5
    //   72: invokevirtual 162	java/io/ByteArrayInputStream:close	()V
    //   75: aload 7
    //   77: areturn
    //   78: astore_3
    //   79: aload_3
    //   80: invokevirtual 165	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   83: aconst_null
    //   84: astore 4
    //   86: goto -65 -> 21
    //   89: astore 9
    //   91: aconst_null
    //   92: astore 7
    //   94: aload 9
    //   96: astore 10
    //   98: aload 10
    //   100: invokevirtual 166	java/security/cert/CertificateException:printStackTrace	()V
    //   103: goto -28 -> 75
    //   106: astore 6
    //   108: aconst_null
    //   109: astore 7
    //   111: aload 6
    //   113: astore 8
    //   115: aload 8
    //   117: invokevirtual 167	java/io/IOException:printStackTrace	()V
    //   120: goto -45 -> 75
    //   123: astore 8
    //   125: goto -10 -> 115
    //   128: astore 10
    //   130: goto -32 -> 98
    //   133: aconst_null
    //   134: astore 7
    //   136: goto -61 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   8	17	78	android/content/pm/PackageManager$NameNotFoundException
    //   45	66	89	java/security/cert/CertificateException
    //   45	66	106	java/io/IOException
    //   70	75	123	java/io/IOException
    //   70	75	128	java/security/cert/CertificateException
  }

  public final boolean a()
  {
    int i = 1;
    int j = Integer.parseInt(this.c.getProperty("lc_sdk_channel"));
    if ((j == 873461) || (j == 873789))
    {
      GregorianCalendar localGregorianCalendar = new GregorianCalendar(2012, 10, i);
      if (System.currentTimeMillis() >= localGregorianCalendar.getTimeInMillis());
    }
    while (true)
    {
      return i;
      String str1 = a(this.d.getPackageName());
      String str2 = this.c.getProperty("signature").toUpperCase().trim();
      gk.b("your    signature is " + str1 + " len:" + str1.length());
      gk.b("licence signature is " + str2 + " len:" + str2.length());
      boolean bool = str1.equals(str2);
    }
  }

  public final boolean a(Class<? extends BaseManager> paramClass)
  {
    String str1 = (String)a.get(paramClass.getSimpleName());
    boolean bool;
    if (str1 != null)
    {
      String str2 = this.c.getProperty(str1);
      if (str2 != null)
        bool = str2.equals("1");
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = true;
    }
  }

  public final String b()
  {
    return this.c.getProperty("lc_sdk_channel");
  }

  public final String c()
  {
    return this.c.getProperty("lc_sdk_pid");
  }

  public final long d()
  {
    String str = Long.toString(b);
    return Long.parseLong(this.c.getProperty("expiry.seconds", str));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ej
 * JD-Core Version:    0.6.2
 */