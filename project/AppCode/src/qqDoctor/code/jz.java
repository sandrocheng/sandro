import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class jz
  implements dv
{
  public jz(jt paramjt, String paramString, List paramList, long paramLong)
  {
  }

  public final void a(Object paramObject)
  {
    hs localhs = this.d.a;
    String str = this.d.l;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localhs.a(str, "ctyName=?", arrayOfString);
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("pkgName", localkw.getPackageName());
      localContentValues.put("appName", localkw.getAppName());
      localContentValues.put("version", localkw.getVersion());
      localContentValues.put("versionCode", localkw.getVersionCode());
      localContentValues.put("appPath", localkw.getApkPath());
      localContentValues.put("size", localkw.getSize());
      localContentValues.put("certMD5", localkw.getCertMD5());
      localContentValues.put("logoUrl", localkw.h());
      localContentValues.put("ctyName", this.a);
      localContentValues.put("expirationTime", this.c);
      localContentValues.put("score", localkw.l());
      this.d.a.a(this.d.l, "id", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jz
 * JD-Core Version:    0.6.2
 */