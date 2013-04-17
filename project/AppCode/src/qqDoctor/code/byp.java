import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.DisplayMetrics;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.software.AppEntity;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class byp extends BaseManager
{
  public Context a = null;
  public byo b;
  private PackageManager c = null;
  private CertificateFactory d = null;

  // ERROR //
  private java.security.cert.Certificate a(Signature paramSignature)
  {
    // Byte code:
    //   0: new 31	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 37	android/content/pm/Signature:toByteArray	()[B
    //   8: invokespecial 40	java/io/ByteArrayInputStream:<init>	([B)V
    //   11: astore_2
    //   12: aload_0
    //   13: getfield 22	byp:d	Ljava/security/cert/CertificateFactory;
    //   16: aload_2
    //   17: invokevirtual 46	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   20: checkcast 48	java/security/cert/X509Certificate
    //   23: astore 7
    //   25: aload_2
    //   26: invokevirtual 51	java/io/ByteArrayInputStream:close	()V
    //   29: aload 7
    //   31: areturn
    //   32: astore 8
    //   34: aload 8
    //   36: invokevirtual 54	java/security/cert/CertificateException:printStackTrace	()V
    //   39: aload_2
    //   40: invokevirtual 51	java/io/ByteArrayInputStream:close	()V
    //   43: aconst_null
    //   44: astore 7
    //   46: goto -17 -> 29
    //   49: astore 9
    //   51: aload 9
    //   53: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   56: aconst_null
    //   57: astore 7
    //   59: goto -30 -> 29
    //   62: astore 5
    //   64: aload 5
    //   66: invokevirtual 56	java/lang/Exception:printStackTrace	()V
    //   69: aload_2
    //   70: invokevirtual 51	java/io/ByteArrayInputStream:close	()V
    //   73: aconst_null
    //   74: astore 7
    //   76: goto -47 -> 29
    //   79: astore 6
    //   81: aload 6
    //   83: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   86: aconst_null
    //   87: astore 7
    //   89: goto -60 -> 29
    //   92: astore_3
    //   93: aload_2
    //   94: invokevirtual 51	java/io/ByteArrayInputStream:close	()V
    //   97: aload_3
    //   98: athrow
    //   99: astore 4
    //   101: aload 4
    //   103: invokevirtual 55	java/io/IOException:printStackTrace	()V
    //   106: goto -9 -> 97
    //   109: astore 10
    //   111: aload 10
    //   113: invokevirtual 55	java/io/IOException:printStackTrace	()V
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

  private void a(PackageInfo paramPackageInfo, AppEntity paramAppEntity, int paramInt)
  {
    boolean bool1 = true;
    if ((paramPackageInfo == null) || (paramAppEntity == null))
      return;
    boolean bool2;
    if ((paramInt & 0x1) != 0)
    {
      paramAppEntity.put("pkgName", paramPackageInfo.applicationInfo.packageName);
      paramAppEntity.put("appName", paramPackageInfo.applicationInfo.loadLabel(this.c));
      if ((0x1 & paramPackageInfo.applicationInfo.flags) != 0)
      {
        bool2 = bool1;
        label64: paramAppEntity.put("isSystem", Boolean.valueOf(bool2));
      }
    }
    else
    {
      if ((paramInt & 0x2) != 0)
      {
        paramAppEntity.put("pkgName", paramPackageInfo.applicationInfo.packageName);
        if ((0x1 & paramPackageInfo.applicationInfo.flags) == 0)
          break label296;
        label106: paramAppEntity.put("isSystem", Boolean.valueOf(bool1));
      }
      if ((paramInt & 0x4) != 0)
        paramAppEntity.put("icon", paramPackageInfo.applicationInfo.loadIcon(this.c));
      if ((paramInt & 0x8) != 0)
      {
        paramAppEntity.put("version", paramPackageInfo.versionName);
        paramAppEntity.put("versionCode", Integer.valueOf(paramPackageInfo.versionCode));
        File localFile = new File(paramPackageInfo.applicationInfo.sourceDir);
        paramAppEntity.put("size", Long.valueOf(localFile.length()));
        paramAppEntity.put("lastModified", Long.valueOf(localFile.lastModified()));
      }
      if (((paramInt & 0x10) != 0) && (paramPackageInfo != null) && (paramPackageInfo.signatures != null) && (paramPackageInfo.signatures.length > 0))
        break label302;
    }
    while (true)
    {
      if ((paramInt & 0x20) != 0)
        paramAppEntity.put("permissions", paramPackageInfo.requestedPermissions);
      if ((paramInt & 0x40) == 0)
        break;
      paramAppEntity.put("apkPath", paramPackageInfo.applicationInfo.sourceDir);
      paramAppEntity.put("isApk", Boolean.valueOf(false));
      break;
      bool2 = false;
      break label64;
      label296: bool1 = false;
      break label106;
      label302: X509Certificate localX509Certificate = (X509Certificate)a(paramPackageInfo.signatures[0]);
      if (localX509Certificate == null)
        continue;
      try
      {
        String str2 = btk.b(localX509Certificate.getEncoded());
        str1 = str2;
        paramAppEntity.put("signatureCermMD5", str1);
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
        while (true)
        {
          localCertificateEncodingException.printStackTrace();
          String str1 = null;
        }
      }
    }
  }

  private void a(String paramString, AppEntity paramAppEntity)
  {
    while (true)
    {
      X509Certificate localX509Certificate;
      try
      {
        Object[] arrayOfObject1 = { paramString };
        Class localClass = Class.forName("android.content.pm.PackageParser");
        Class[] arrayOfClass = new Class[arrayOfObject1.length];
        int i = arrayOfObject1.length;
        int j = 0;
        if (j >= i)
        {
          Object localObject1 = localClass.getConstructor(arrayOfClass).newInstance(arrayOfObject1);
          File localFile = new File(paramString);
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          localDisplayMetrics.setToDefaults();
          Object[] arrayOfObject2 = new Object[4];
          arrayOfObject2[0] = localFile;
          arrayOfObject2[1] = paramString;
          arrayOfObject2[2] = localDisplayMetrics;
          arrayOfObject2[3] = Integer.valueOf(0);
          Object localObject2 = di.a(localObject1, "parsePackage", arrayOfObject2);
          if (localObject2 != null)
          {
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = localObject2;
            arrayOfObject3[1] = Integer.valueOf(0);
            di.a(localObject1, "collectCertificates", arrayOfObject3);
            arrayOfSignature = (Signature[])localObject2.getClass().getField("mSignatures").get(localObject2);
            if ((arrayOfSignature != null) && (arrayOfSignature.length > 0))
              continue;
          }
        }
        else
        {
          arrayOfClass[j] = arrayOfObject1[j].getClass();
          j++;
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Signature[] arrayOfSignature = null;
        continue;
        localX509Certificate = (X509Certificate)a(arrayOfSignature[0]);
        if (localX509Certificate == null)
          continue;
      }
      try
      {
        String str2 = btk.b(localX509Certificate.getEncoded());
        str1 = str2;
        paramAppEntity.put("signatureCermMD5", str1);
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
        while (true)
        {
          localCertificateEncodingException.printStackTrace();
          String str1 = null;
        }
      }
    }
  }

  public final PackageInfo a(String paramString, int paramInt)
  {
    try
    {
      PackageInfo localPackageInfo2 = this.c.getPackageInfo(paramString, paramInt);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        new StringBuilder(String.valueOf(paramString)).append(" can't be found").toString();
        PackageInfo localPackageInfo1 = null;
      }
    }
  }

  public final AppEntity a(AppEntity paramAppEntity, int paramInt)
  {
    String str = (String)paramAppEntity.get("pkgName");
    int i = paramInt & 0x10;
    int j = 0;
    if (i != 0)
      j = 64;
    if ((paramInt & 0x20) != 0)
      j |= 4096;
    PackageInfo localPackageInfo = a(str, j);
    if (localPackageInfo != null)
      a(localPackageInfo, paramAppEntity, paramInt);
    while (true)
    {
      return paramAppEntity;
      paramAppEntity = null;
    }
  }

  public final ArrayList<AppEntity> a(int paramInt1, int paramInt2)
  {
    PackageManager localPackageManager = this.c;
    if ((paramInt1 & 0x10) != 0);
    for (int i = 64; ; i = 0)
    {
      if ((paramInt1 & 0x20) != 0)
        i |= 4096;
      List localList = localPackageManager.getInstalledPackages(i);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localList.iterator();
      if (!localIterator.hasNext())
        return localArrayList;
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      if ((0x1 & localPackageInfo.applicationInfo.flags) != 0);
      for (int j = 1; ; j = 0)
      {
        String str = localPackageInfo.applicationInfo.packageName;
        if (((j == 0) && (paramInt2 == 1)) || ((j != 0) && (paramInt2 == 0)) || (str.equals(this.a.getPackageName())))
          break;
        AppEntity localAppEntity = new AppEntity();
        a(localPackageInfo, localAppEntity, paramInt1);
        localArrayList.add(localAppEntity);
        break;
      }
    }
  }

  public final ArrayList<AppEntity> a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    PackageManager localPackageManager = this.c;
    int i = paramInt1 & 0x10;
    int j = 0;
    if (i != 0)
      j = 64;
    if ((paramInt1 & 0x20) != 0)
      j |= 4096;
    List localList = localPackageManager.getInstalledPackages(j);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      if (((paramInt2 & 0x1) != 0) && (byn.a(localPackageInfo, paramBoolean)))
      {
        AppEntity localAppEntity2 = new AppEntity();
        a(localPackageInfo, localAppEntity2, paramInt1);
        localArrayList.add(localAppEntity2);
      }
      if (((paramInt2 & 0x2) != 0) && (byn.a(localPackageInfo)))
      {
        AppEntity localAppEntity1 = new AppEntity();
        a(localPackageInfo, localAppEntity1, paramInt1);
        localArrayList.add(localAppEntity1);
      }
    }
  }

  public final ArrayList<AppEntity> a(File paramFile, String[] paramArrayOfString, boolean paramBoolean, int paramInt)
  {
    return a(paramFile, paramArrayOfString, paramBoolean, paramInt, true);
  }

  public final ArrayList<AppEntity> a(File paramFile, String[] paramArrayOfString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    Object localObject;
    if (paramFile == null)
    {
      localObject = new ArrayList();
      return localObject;
    }
    ArrayList localArrayList1 = new ArrayList();
    int i;
    if (paramArrayOfString != null)
      i = paramArrayOfString.length;
    List localList;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        localList = btd.a(paramFile, localArrayList1, paramBoolean2);
        if (localList != null)
          break label88;
        localObject = new ArrayList();
        break;
      }
      localArrayList1.add(paramArrayOfString[j]);
    }
    label88: ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localList.iterator();
    label316: 
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localObject = localArrayList2;
        break;
      }
      String str1 = (String)localIterator.next();
      if ((str1 != null) && (!str1.equals("")))
      {
        AppEntity localAppEntity1 = new AppEntity();
        localAppEntity1.put("apkPath", str1);
        AppEntity localAppEntity2 = b(localAppEntity1, paramInt);
        AppEntity localAppEntity4;
        if ((localAppEntity2 == null) && (paramBoolean1))
        {
          localAppEntity4 = new AppEntity();
          File localFile = new File(str1);
          String str2 = localFile.getName();
          if ((str2 != null) && (!str2.equals("")))
            str2 = str2.substring(0, -4 + str2.length());
          localAppEntity4.put("appName", str2);
          localAppEntity4.put("size", Long.valueOf(localFile.length()));
          localAppEntity4.put("apkPath", str1);
          localAppEntity4.put("isApk", Boolean.valueOf(true));
        }
        for (AppEntity localAppEntity3 = localAppEntity4; ; localAppEntity3 = localAppEntity2)
        {
          if (localAppEntity3 == null)
            break label316;
          localArrayList2.add(localAppEntity3);
          break;
        }
      }
    }
  }

  public final boolean a(String paramString)
  {
    boolean bool = false;
    try
    {
      Intent localIntent = this.c.getLaunchIntentForPackage(paramString);
      bool = false;
      if (localIntent != null)
      {
        localIntent.setFlags(270532608);
        this.a.startActivity(localIntent);
        bool = true;
      }
      else
      {
        new StringBuilder(String.valueOf(paramString)).append(" is not a visualble application").toString();
        bool = false;
      }
    }
    catch (Exception localException)
    {
    }
    return bool;
  }

  public final AppEntity b(AppEntity paramAppEntity, int paramInt)
  {
    try
    {
      String str = (String)paramAppEntity.get("apkPath");
      PackageManager localPackageManager = this.c;
      int i = paramInt & 0x10;
      int j = 0;
      if (i != 0)
        j = 64;
      while (true)
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageArchiveInfo(str, j);
        List localList;
        if (localPackageInfo != null)
          if ((paramInt & 0x4) != 0)
            localList = a.a(this.a, str, true);
        while (true)
        {
          if ((paramInt & 0x1) != 0)
          {
            paramAppEntity.put("pkgName", localPackageInfo.packageName);
            paramAppEntity.put("isSystem", new Boolean(false));
            if ((localList != null) && (localList.size() > 0) && (localList.get(0) != null))
              paramAppEntity.put("appName", localList.get(0));
          }
          else
          {
            label143: if ((paramInt & 0x2) != 0)
            {
              paramAppEntity.put("pkgName", localPackageInfo.packageName);
              paramAppEntity.put("isSystem", new Boolean(false));
            }
            if ((paramInt & 0x4) != 0)
            {
              if ((localList == null) || (localList.size() <= 1) || (localList.get(1) == null))
                break label394;
              paramAppEntity.put("icon", localList.get(1));
            }
          }
          while (true)
          {
            if ((paramInt & 0x8) != 0)
            {
              paramAppEntity.put("version", localPackageInfo.versionName);
              paramAppEntity.put("versionCode", Integer.valueOf(localPackageInfo.versionCode));
              File localFile = new File(str);
              paramAppEntity.put("size", Long.valueOf(localFile.length()));
              paramAppEntity.put("lastModified", Long.valueOf(localFile.lastModified()));
            }
            if ((paramInt & 0x40) != 0)
            {
              paramAppEntity.put("apkPath", str);
              paramAppEntity.put("isApk", Boolean.valueOf(true));
            }
            if ((paramInt & 0x10) != 0)
              a(str, paramAppEntity);
            if ((paramInt & 0x20) == 0)
              break label444;
            paramAppEntity.put("permissions", localPackageInfo.requestedPermissions);
            break label444;
            if ((paramInt & 0x1) == 0)
              break label420;
            localList = a.a(this.a, str, false);
            break;
            paramAppEntity.put("appName", this.c.getApplicationLabel(localPackageInfo.applicationInfo));
            break label143;
            label394: paramAppEntity.put("icon", this.c.getApplicationIcon(localPackageInfo.applicationInfo));
          }
          paramAppEntity = null;
          break;
          label420: localList = null;
        }
        if ((paramInt & 0x20) != 0)
          j |= 4096;
      }
      label444: return paramAppEntity;
    }
    catch (Exception localException)
    {
      while (true)
        paramAppEntity = null;
    }
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.b = new byo();
    this.c = paramContext.getPackageManager();
    try
    {
      this.d = CertificateFactory.getInstance("X.509");
      return;
    }
    catch (CertificateException localCertificateException)
    {
      while (true)
        localCertificateException.getLocalizedMessage();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byp
 * JD-Core Version:    0.6.2
 */