package com.tencent.tmsecure.module.software;

import android.graphics.drawable.Drawable;
import com.tencent.tmsecure.common.BaseEntity;
import java.util.HashMap;

public class AppEntity extends BaseEntity
{
  public static final int FLAG_APK = 64;
  public static final int FLAG_APP_INFO = 1;
  public static final int FLAG_APP_INFO_SIMPLE = 2;
  public static final int FLAG_ICON = 4;
  public static final int FLAG_PERMISSIONS = 32;
  public static final int FLAG_SIGNATURE = 16;
  public static final int FLAG_VERSION = 8;
  public static final String KEY_APK_PATH_STR = "apkPath";
  public static final String KEY_APP_NAME_STR = "appName";
  public static final String KEY_ICON_DRAWABLE = "icon";
  public static final String KEY_IS_APK_BOOL = "isApk";
  public static final String KEY_IS_SYSTEM_BOOL = "isSystem";
  public static final String KEY_LAST_MODIFIED_LONG = "lastModified";
  public static final String KEY_PERMISSION_STR_ARRAY = "permissions";
  public static final String KEY_PKG_NAME_STR = "pkgName";
  public static final String KEY_SIGNATURE_COMPANY_STR = "signatureCompany";
  public static final String KEY_SIGNATURE_MD5_STR = "signatureCermMD5";
  public static final String KEY_SIZE_LONG = "size";
  public static final String KEY_VERSION_CODE_INT = "versionCode";
  public static final String KEY_VERSION_STR = "version";
  private final HashMap<String, Object> a = new HashMap();

  public Object get(String paramString)
  {
    return this.a.get(paramString);
  }

  public String getApkPath()
  {
    Object localObject = this.a.get("apkPath");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public String getAppName()
  {
    Object localObject = this.a.get("appName");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public String getCertMD5()
  {
    Object localObject = this.a.get("signatureCermMD5");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public String getCompany()
  {
    Object localObject = this.a.get("signatureCompany");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public Drawable getIcon()
  {
    Object localObject = this.a.get("icon");
    if (localObject != null);
    for (Drawable localDrawable = (Drawable)localObject; ; localDrawable = null)
      return localDrawable;
  }

  public long getLastModifiedTime()
  {
    Object localObject = this.a.get("lastModified");
    if (localObject != null);
    for (long l = ((Long)localObject).longValue(); ; l = 0L)
      return l;
  }

  public String getPackageName()
  {
    Object localObject = this.a.get("pkgName");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public String[] getPermissions()
  {
    Object localObject = this.a.get("permissions");
    if (localObject != null);
    for (String[] arrayOfString = (String[])localObject; ; arrayOfString = null)
      return arrayOfString;
  }

  public long getSize()
  {
    Object localObject = this.a.get("size");
    if (localObject != null);
    for (long l = ((Long)localObject).longValue(); ; l = 0L)
      return l;
  }

  public String getVersion()
  {
    Object localObject = this.a.get("version");
    if (localObject != null);
    for (String str = (String)localObject; ; str = null)
      return str;
  }

  public int getVersionCode()
  {
    Object localObject = this.a.get("versionCode");
    if (localObject != null);
    for (int i = ((Integer)localObject).intValue(); ; i = 0)
      return i;
  }

  public boolean isApk()
  {
    Object localObject = this.a.get("isApk");
    if (localObject != null);
    for (boolean bool = ((Boolean)localObject).booleanValue(); ; bool = false)
      return bool;
  }

  public boolean isSystemApp()
  {
    Object localObject = this.a.get("isSystem");
    if (localObject != null);
    for (boolean bool = ((Boolean)localObject).booleanValue(); ; bool = false)
      return bool;
  }

  public void put(String paramString, Object paramObject)
  {
    this.a.put(paramString, paramObject);
  }

  public void setApkFlag(boolean paramBoolean)
  {
    this.a.put("isApk", Boolean.valueOf(paramBoolean));
  }

  public void setApkPath(String paramString)
  {
    this.a.put("apkPath", paramString);
  }

  public void setAppName(String paramString)
  {
    this.a.put("appName", paramString);
  }

  public void setCertMD5(String paramString)
  {
    this.a.put("signatureCermMD5", paramString);
  }

  public void setCompany(String paramString)
  {
    this.a.put("signatureCompany", paramString);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.a.put("icon", paramDrawable);
  }

  public void setLastModifiedTime(long paramLong)
  {
    this.a.put("lastModified", Long.valueOf(paramLong));
  }

  public void setPackageName(String paramString)
  {
    this.a.put("pkgName", paramString);
  }

  public void setPermissions(String[] paramArrayOfString)
  {
    this.a.put("permissions", paramArrayOfString);
  }

  public void setSize(long paramLong)
  {
    this.a.put("size", Long.valueOf(paramLong));
  }

  public void setSystemFlag(boolean paramBoolean)
  {
    this.a.put("isSystem", Boolean.valueOf(paramBoolean));
  }

  public void setVersion(String paramString)
  {
    this.a.put("version", paramString);
  }

  public void setVersionCode(int paramInt)
  {
    this.a.put("versionCode", Integer.valueOf(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.software.AppEntity
 * JD-Core Version:    0.6.2
 */