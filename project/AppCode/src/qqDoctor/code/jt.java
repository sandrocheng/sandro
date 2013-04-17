import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class jt
{
  public hs a = hs.a();
  public String b = "sw_cache_daychoice_1";
  public String c = "sw_cache_cty_1";
  public String d = "sw_cache_cty_2";
  String e = "sw_cache_cty_week";
  String f = "sw_cache_specialsubject_1";
  public String g = "sw_cache_specialsubject_2";
  public String h = "sw_cache_apkmanager_other_1";
  public String i = "sw_cache_mysoftware_1";
  public String j = "sw_cache_mysoftware_update_1";
  public String k = "sw_game_cache_cty_1";
  public String l = "sw_game_cache_cty_2";
  public String m = "sw_cache_ranking";
  private String n = "sw_cache_apkmanager_download_1";

  static ContentValues a(ContentValues paramContentValues, kw paramkw)
  {
    paramContentValues.clear();
    paramContentValues.put("pkgName", paramkw.getPackageName());
    paramContentValues.put("appName", paramkw.getAppName());
    paramContentValues.put("version", paramkw.getVersion());
    paramContentValues.put("versionCode", paramkw.getVersionCode());
    paramContentValues.put("versionType", paramkw.n());
    paramContentValues.put("versionLabel", paramkw.j());
    paramContentValues.put("needUpdate", paramkw.i());
    paramContentValues.put("appPath", paramkw.getApkPath());
    paramContentValues.put("size", paramkw.getSize());
    paramContentValues.put("certMD5", paramkw.getCertMD5());
    paramContentValues.put("isSysApp", paramkw.isSystemApp());
    paramContentValues.put("newVersion", paramkw.d());
    paramContentValues.put("softwareStyle", paramkw.f());
    paramContentValues.put("fileUrl", paramkw.k());
    paramContentValues.put("logoUrl", paramkw.h());
    paramContentValues.put("isApk", paramkw.isApk());
    paramContentValues.put("isFree", paramkw.s());
    paramContentValues.put("itemType", paramkw.o());
    paramContentValues.put("describe", paramkw.p());
    paramContentValues.put("score", paramkw.l());
    paramContentValues.put("ctyName", paramkw.q());
    paramContentValues.put("expirationTime", paramkw.r());
    paramContentValues.put("newVersionCode", Integer.valueOf(paramkw.D()));
    paramContentValues.put("browserUrl", paramkw.N());
    paramContentValues.put("softwareSource", paramkw.Q());
    paramContentValues.put("softwareSourceUrl", paramkw.R());
    return paramContentValues;
  }

  public final String a(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.a(paramString1, null, "ctyName=?", new String[] { paramString2 }, null, null, null);
    String str = "";
    if (localCursor == null)
      str = "0";
    while (true)
    {
      if (localCursor != null)
        localCursor.close();
      this.a.b();
      return str;
      if (!localCursor.moveToFirst())
      {
        str = "0";
      }
      else if (localCursor.moveToFirst())
      {
        str = localCursor.getString(localCursor.getColumnIndex("expirationTime"));
        if (str == null)
          str = "0";
      }
    }
  }

  public final List<kw> a()
  {
    return a(this.j, null, null, "id ASC");
  }

  public final List<kw> a(int paramInt)
  {
    Object localObject;
    if (paramInt == 2)
      localObject = a(this.i, null, null, "id ASC");
    while (true)
    {
      return localObject;
      String str = "";
      if (paramInt == 1)
        str = "true";
      while (true)
      {
        if (str.equals(""))
          break label81;
        localObject = a(this.i, "isSysApp=?", new String[] { str }, "id ASC");
        break;
        if (paramInt == 0)
          str = "false";
      }
      label81: localObject = new ArrayList();
    }
  }

  public final List<kw> a(String paramString)
  {
    if (paramString == null);
    for (Object localObject = new ArrayList(); ; localObject = a(this.g, "ctyName=?", new String[] { paramString }, "id ASC"))
      return localObject;
  }

  public final List<kw> a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    ArrayList localArrayList = new ArrayList();
    if ((localCursor != null) && (localCursor.moveToNext()))
    {
      kw localkw = new kw();
      localkw.setPackageName(localCursor.getString(localCursor.getColumnIndex("pkgName")));
      localkw.setAppName(localCursor.getString(localCursor.getColumnIndex("appName")));
      localkw.setVersion(localCursor.getString(localCursor.getColumnIndex("version")));
      localkw.setVersionCode(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("versionCode"))));
      localkw.e(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("versionType"))));
      localkw.c(localCursor.getString(localCursor.getColumnIndex("versionLabel")));
      localkw.d(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("needUpdate"))));
      localkw.setApkPath(localCursor.getString(localCursor.getColumnIndex("appPath")));
      localkw.setSize(Long.parseLong(localCursor.getString(localCursor.getColumnIndex("size"))));
      localkw.setCertMD5(localCursor.getString(localCursor.getColumnIndex("certMD5")));
      localkw.setSystemFlag(Boolean.parseBoolean(localCursor.getString(localCursor.getColumnIndex("isSysApp"))));
      localkw.a(localCursor.getString(localCursor.getColumnIndex("newVersion")));
      localkw.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("softwareStyle"))));
      localkw.d(localCursor.getString(localCursor.getColumnIndex("fileUrl")));
      localkw.b(localCursor.getString(localCursor.getColumnIndex("logoUrl")));
      localkw.setApkFlag(Boolean.parseBoolean(localCursor.getString(localCursor.getColumnIndex("isApk"))));
      if (localCursor.getString(localCursor.getColumnIndex("isFree")).equals("true"));
      for (boolean bool = true; ; bool = false)
      {
        localkw.b(bool);
        localkw.f(localCursor.getInt(localCursor.getColumnIndex("itemType")));
        localkw.e(localCursor.getString(localCursor.getColumnIndex("describe")));
        localkw.a(localCursor.getFloat(localCursor.getColumnIndex("score")));
        localkw.f(localCursor.getString(localCursor.getColumnIndex("ctyName")));
        localkw.g(localCursor.getString(localCursor.getColumnIndex("expirationTime")));
        localkw.i(localCursor.getInt(localCursor.getColumnIndex("newVersionCode")));
        localkw.m(localCursor.getString(localCursor.getColumnIndex("browserUrl")));
        localkw.q(localCursor.getString(localCursor.getColumnIndex("softwareSourceUrl")));
        localkw.p(localCursor.getString(localCursor.getColumnIndex("softwareSource")));
        localArrayList.add(localkw);
        break;
      }
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final void a(String paramString, kw paramkw)
  {
    ContentValues localContentValues = new ContentValues();
    a(localContentValues, paramkw);
    this.a.a(paramString, null, localContentValues);
    this.a.b();
  }

  public final boolean a(List<la> paramList)
  {
    List localList = b();
    for (int i1 = -1 + paramList.size(); i1 >= 0; i1--)
      localList.add(0, paramList.get(i1));
    while (localList.size() > 5)
      localList.remove(-1 + localList.size());
    return this.a.a(new jw(this, localList));
  }

  public final List<la> b()
  {
    Cursor localCursor = this.a.a(this.e, null, null, null, null, null, "ctyTime DESC");
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      la localla = new la();
      localla.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("ctyId"))));
      localla.b(localCursor.getString(localCursor.getColumnIndex("ctyName")));
      localla.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("ctyCount"))));
      localla.a(localCursor.getString(localCursor.getColumnIndex("ctyIcon")));
      localla.c(localCursor.getString(localCursor.getColumnIndex("ctyContent")));
      localla.a(localCursor.getLong(localCursor.getColumnIndex("ctyTime")));
      localla.e(localCursor.getInt(localCursor.getColumnIndex("ctyType")));
      localArrayList.add(localla);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final List<kw> b(int paramInt)
  {
    String str = "";
    if (paramInt == 0)
      str = this.n;
    while (true)
    {
      return a(str, null, null, "id ASC");
      if (paramInt == 1)
        str = this.h;
    }
  }

  public final List<kw> b(String paramString)
  {
    Cursor localCursor = this.a.a(this.d, null, "ctyName=?", new String[] { paramString }, null, null, "id ASC");
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      kw localkw = new kw();
      localkw.setPackageName(localCursor.getString(localCursor.getColumnIndex("pkgName")));
      localkw.setAppName(localCursor.getString(localCursor.getColumnIndex("appName")));
      localkw.setVersion(localCursor.getString(localCursor.getColumnIndex("version")));
      localkw.setVersionCode(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("versionCode"))));
      localkw.setSize(Long.parseLong(localCursor.getString(localCursor.getColumnIndex("size"))));
      localkw.setCertMD5(localCursor.getString(localCursor.getColumnIndex("certMD5")));
      localkw.setApkPath(localCursor.getString(localCursor.getColumnIndex("appPath")));
      localkw.b(localCursor.getString(localCursor.getColumnIndex("logoUrl")));
      localkw.f(localCursor.getString(localCursor.getColumnIndex("ctyName")));
      localkw.g(localCursor.getString(localCursor.getColumnIndex("expirationTime")));
      localkw.a(localCursor.getFloat(localCursor.getColumnIndex("score")));
      localkw.d(localCursor.getString(localCursor.getColumnIndex("fileUrl")));
      localkw.c(localCursor.getInt(localCursor.getColumnIndex("downloadCount")));
      localkw.l(localCursor.getInt(localCursor.getColumnIndex("safeType")));
      localkw.n(localCursor.getString(localCursor.getColumnIndex("recPicUrl")));
      localkw.l(localCursor.getString(localCursor.getColumnIndex("recInfo")));
      localArrayList.add(localkw);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final boolean b(List<la> paramList)
  {
    List localList = c();
    int i1 = 0;
    la localla;
    int i4;
    label41: int i3;
    if (i1 < paramList.size())
    {
      localla = (la)paramList.get(i1);
      if (localla.i() != 2)
      {
        i4 = 0;
        if (i4 < localList.size())
          if (((la)localList.get(i4)).b() == localla.b())
          {
            localList.remove(i4);
            i3 = 1;
          }
      }
    }
    while (true)
    {
      if ((localla.i() == 0) || (i3 == 0))
        localList.add(localla);
      i1++;
      break;
      i4++;
      break label41;
      i3 = 0;
      continue;
      int i2 = 0;
      while (true)
        if (i2 < localList.size())
        {
          if (((la)localList.get(i2)).b() == localla.b())
          {
            localList.set(i2, localla);
            i3 = 1;
            break;
          }
          i2++;
          continue;
          return this.a.a(new jx(this, localList));
        }
      i3 = 0;
    }
  }

  public final List<la> c()
  {
    Cursor localCursor = this.a.a(this.f, null, null, null, null, null, null);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      la localla = new la();
      localla.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("ctyId"))));
      localla.b(localCursor.getString(localCursor.getColumnIndex("ctyName")));
      localla.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("ctyCount"))));
      localla.a(localCursor.getString(localCursor.getColumnIndex("ctyIcon")));
      localla.c(localCursor.getString(localCursor.getColumnIndex("ctyContent")));
      localla.d(localCursor.getString(localCursor.getColumnIndex("ctyDescript")));
      localla.c(localCursor.getInt(localCursor.getColumnIndex("ctySign")));
      localla.d(localCursor.getInt(localCursor.getColumnIndex("ctyState")));
      localla.a(localCursor.getLong(localCursor.getColumnIndex("ctyTime")));
      localla.e(localCursor.getInt(localCursor.getColumnIndex("ctyType")));
      localla.f(localCursor.getInt(localCursor.getColumnIndex("ctyRank")));
      new StringBuilder().append(localla.c()).append(" getCacheSpecialSubject1Info appInfo.getPushType() ").append(localla.k()).toString();
      localArrayList.add(localla);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jt
 * JD-Core Version:    0.6.2
 */