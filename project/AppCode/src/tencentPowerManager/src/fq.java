import android.graphics.drawable.Drawable;
import com.tencent.tmsecure.common.BaseEntity;
import java.util.HashMap;

public class fq extends BaseEntity
{
  public final HashMap<String, Object> a = new HashMap();

  public void a(int paramInt)
  {
    this.a.put("versionCode", Integer.valueOf(paramInt));
  }

  public final void a(long paramLong)
  {
    this.a.put("size", Long.valueOf(paramLong));
  }

  public final void a(Drawable paramDrawable)
  {
    this.a.put("icon", paramDrawable);
  }

  public final void a(String paramString, Object paramObject)
  {
    this.a.put(paramString, paramObject);
  }

  public final void a(boolean paramBoolean)
  {
    this.a.put("isSystem", Boolean.valueOf(paramBoolean));
  }

  public final void a(String[] paramArrayOfString)
  {
    this.a.put("permissions", paramArrayOfString);
  }

  public final Object b(String paramString)
  {
    return this.a.get(paramString);
  }

  public final void b(long paramLong)
  {
    this.a.put("lastModified", Long.valueOf(paramLong));
  }

  public final void b(boolean paramBoolean)
  {
    this.a.put("isApk", Boolean.valueOf(paramBoolean));
  }

  public final String c()
  {
    Object localObject = this.a.get("pkgName");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final void c(String paramString)
  {
    this.a.put("pkgName", paramString);
  }

  public final String d()
  {
    Object localObject = this.a.get("appName");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final void d(String paramString)
  {
    this.a.put("appName", paramString);
  }

  public final void e(String paramString)
  {
    this.a.put("version", paramString);
  }

  public final boolean e()
  {
    Object localObject = this.a.get("isSystem");
    if (localObject != null);
    for (boolean bool = ((Boolean)localObject).booleanValue(); ; bool = false)
      return bool;
  }

  public final Drawable f()
  {
    Object localObject = this.a.get("icon");
    if (localObject != null);
    for (Drawable localDrawable = (Drawable)localObject; ; localDrawable = null)
      return localDrawable;
  }

  public final void f(String paramString)
  {
    this.a.put("signatureCermMD5", paramString);
  }

  public final String g()
  {
    Object localObject = this.a.get("version");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final void g(String paramString)
  {
    this.a.put("signatureCompany", paramString);
  }

  public final int h()
  {
    Object localObject = this.a.get("versionCode");
    if (localObject != null);
    for (int i = ((Integer)localObject).intValue(); ; i = 0)
      return i;
  }

  public final void h(String paramString)
  {
    this.a.put("apkPath", paramString);
  }

  public final long i()
  {
    Object localObject = this.a.get("size");
    if (localObject != null);
    for (long l = ((Long)localObject).longValue(); ; l = 0L)
      return l;
  }

  public final long j()
  {
    Object localObject = this.a.get("lastModified");
    if (localObject != null);
    for (long l = ((Long)localObject).longValue(); ; l = 0L)
      return l;
  }

  public final String k()
  {
    Object localObject = this.a.get("signatureCermMD5");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final String l()
  {
    Object localObject = this.a.get("signatureCompany");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final String[] m()
  {
    Object localObject = this.a.get("permissions");
    if (localObject != null);
    for (String[] arrayOfString = (String[])localObject; ; arrayOfString = null)
      return arrayOfString;
  }

  public final String n()
  {
    Object localObject = this.a.get("apkPath");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public final boolean o()
  {
    Object localObject = this.a.get("isApk");
    if (localObject != null);
    for (boolean bool = ((Boolean)localObject).booleanValue(); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fq
 * JD-Core Version:    0.6.2
 */