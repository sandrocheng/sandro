import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import com.tencent.tmsecure.common.BaseManager;
import java.io.File;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;

public final class fs extends BaseManager
{
  private ft a;

  public final fq a(String paramString, int paramInt)
  {
    boolean bool1 = true;
    Object localObject;
    if (isExpired())
    {
      localObject = new fq();
      return localObject;
    }
    ft localft = this.a;
    fq localfq = new fq();
    localfq.a("pkgName", paramString);
    String str1 = (String)localfq.b("pkgName");
    if ((paramInt & 0x10) != 0);
    for (int i = 64; ; i = 0)
    {
      if ((paramInt & 0x20) != 0)
        i |= 4096;
      PackageInfo localPackageInfo = localft.a(str1, i);
      localObject = null;
      if (localPackageInfo == null)
        break;
      if (localPackageInfo == null)
      {
        localObject = localfq;
        break;
      }
      boolean bool2;
      if ((paramInt & 0x1) != 0)
      {
        localfq.a("pkgName", localPackageInfo.applicationInfo.packageName);
        localfq.a("appName", localPackageInfo.applicationInfo.loadLabel(localft.a));
        if ((0x1 & localPackageInfo.applicationInfo.flags) != 0)
        {
          bool2 = bool1;
          label169: localfq.a("isSystem", Boolean.valueOf(bool2));
        }
      }
      else
      {
        if ((paramInt & 0x2) != 0)
        {
          localfq.a("pkgName", localPackageInfo.applicationInfo.packageName);
          if ((0x1 & localPackageInfo.applicationInfo.flags) == 0)
            break label423;
          label215: localfq.a("isSystem", Boolean.valueOf(bool1));
        }
        if ((paramInt & 0x4) != 0)
          localfq.a("icon", localPackageInfo.applicationInfo.loadIcon(localft.a));
        if ((paramInt & 0x8) != 0)
        {
          localfq.a("version", localPackageInfo.versionName);
          localfq.a("versionCode", Integer.valueOf(localPackageInfo.versionCode));
          File localFile = new File(localPackageInfo.applicationInfo.sourceDir);
          localfq.a("size", Long.valueOf(localFile.length()));
          localfq.a("lastModified", Long.valueOf(localFile.lastModified()));
        }
        if (((paramInt & 0x10) != 0) && (localPackageInfo != null) && (localPackageInfo.signatures != null) && (localPackageInfo.signatures.length > 0))
          break label428;
      }
      while (true)
      {
        if ((paramInt & 0x20) != 0)
          localfq.a("permissions", localPackageInfo.requestedPermissions);
        if ((paramInt & 0x40) == 0)
          break;
        localfq.a("apkPath", localPackageInfo.applicationInfo.sourceDir);
        localfq.a("isApk", Boolean.valueOf(false));
        break;
        bool2 = false;
        break label169;
        label423: bool1 = false;
        break label215;
        label428: X509Certificate localX509Certificate = (X509Certificate)localft.a(localPackageInfo.signatures[0]);
        if (localX509Certificate != null)
          try
          {
            String str3 = ew.a(localX509Certificate.getEncoded());
            str2 = str3;
            localfq.a("signatureCermMD5", str2);
          }
          catch (CertificateEncodingException localCertificateEncodingException)
          {
            while (true)
            {
              localCertificateEncodingException.printStackTrace();
              String str2 = null;
            }
          }
      }
    }
  }

  public final void a(File paramFile)
  {
    if (isExpired());
    while (true)
    {
      return;
      ft localft = this.a;
      if ((paramFile == null) || (!paramFile.exists()))
        break;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
      localft.b.startActivity(localIntent);
    }
    throw new RuntimeException("the apkfile dosn't exist.");
  }

  public final boolean a(String paramString)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      PackageInfo localPackageInfo = this.a.a(paramString, 0);
      bool2 = false;
      if (localPackageInfo != null)
        bool2 = true;
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new ft();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fs
 * JD-Core Version:    0.6.2
 */