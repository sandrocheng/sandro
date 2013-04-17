import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class jb
{
  private static jb b;
  public Set<String> a = new HashSet();
  private Context c;
  private hs d;
  private SharedPreferences e;
  private ki f;
  private hq g;
  private hq h;
  private Map<String, Integer> i = new HashMap();
  private Map<Integer, String> j;
  private Map<String, String> k = new HashMap();

  private jb(Context paramContext)
  {
    this.c = paramContext;
    this.d = hs.a();
    this.e = this.c.getSharedPreferences("communicate_log_cache", 0);
    this.f = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.g = new hq(1);
    this.h = new hq(0);
    b();
  }

  public static jb a()
  {
    try
    {
      if (b == null)
        b = new jb(QQPimApplication.a());
      jb localjb = b;
      return localjb;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void b()
  {
    int m = 0;
    String str1 = this.e.getString("suggested_mark_log", "");
    if (!"".equals(str1))
    {
      String[] arrayOfString = str1.split("\\|");
      for (int i1 = 0; i1 < arrayOfString.length; i1++)
        this.a.add(arrayOfString[i1]);
    }
    Cursor localCursor = this.d.a("select * from numbermark order by id desc".toString());
    localCursor.moveToFirst();
    if (m < localCursor.getCount())
    {
      String str2 = localCursor.getString(localCursor.getColumnIndex("phone_number"));
      int n = localCursor.getInt(localCursor.getColumnIndex("mark_id"));
      String str3 = localCursor.getString(localCursor.getColumnIndex("mark_name"));
      if (n > 0)
        this.i.put(str2, Integer.valueOf(n));
      while (true)
      {
        localCursor.moveToNext();
        m++;
        break;
        if (n < 0)
          this.k.put(str2, str3);
      }
    }
    localCursor.close();
    this.d.b();
  }

  private void b(String paramString)
  {
    try
    {
      this.a.add(paramString);
      String str1 = this.e.getString("suggested_mark_log", "");
      if ("".equals(str1));
      while (true)
      {
        this.e.edit().putString("suggested_mark_log", paramString).commit();
        return;
        String str2 = str1 + "|" + paramString;
        paramString = str2;
      }
    }
    finally
    {
    }
  }

  public final int a(String paramString)
  {
    String str1 = fu.e(paramString);
    String str2;
    int m;
    if (str1 != null)
    {
      str2 = fu.f(str1);
      Integer localInteger = (Integer)this.i.get(str2);
      if (localInteger != null)
        m = localInteger.intValue();
    }
    while (true)
    {
      return m;
      if (this.k.containsKey(str2))
      {
        m = -1;
      }
      else
      {
        m = 0;
        continue;
        m = 0;
      }
    }
  }

  public final String a(String paramString, int paramInt)
  {
    String str;
    if (this.h.b(paramString))
      str = this.c.getString(2131427430);
    while (true)
    {
      return str;
      if (paramInt > 0)
      {
        if (this.j == null)
        {
          this.j = new HashMap();
          String[] arrayOfString1 = this.c.getResources().getStringArray(2131165229);
          for (int m = 0; m < arrayOfString1.length; m++)
          {
            String[] arrayOfString2 = arrayOfString1[m].split(",");
            this.j.put(Integer.valueOf(arrayOfString2[0]), arrayOfString2[1]);
          }
        }
        str = (String)this.j.get(Integer.valueOf(paramInt));
      }
      else if (paramInt < 0)
      {
        str = (String)this.k.get(paramString);
      }
      else
      {
        str = null;
      }
    }
  }

  public final void a(CallLogEntity paramCallLogEntity)
  {
    if (paramCallLogEntity != null);
    try
    {
      String str1 = fu.e(paramCallLogEntity.phonenum);
      String str2;
      if (str1 != null)
      {
        str2 = fu.e(paramCallLogEntity.phonenum);
        if (str2 == null)
          break label102;
      }
      label102: for (boolean bool = this.a.contains(fu.f(str2)); ; bool = false)
      {
        if ((!bool) && (!this.g.b(paramCallLogEntity.phonenum)) && (!this.h.b(paramCallLogEntity.phonenum)) && (!this.f.contains(paramCallLogEntity.phonenum)))
          b(fu.f(str1));
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void b(String paramString, int paramInt)
  {
    String str1 = fu.e(paramString);
    String str2;
    if (str1 != null)
    {
      str2 = fu.f(str1);
      if (paramInt == 0)
      {
        this.d.a("numbermark", "phone_number='" + paramString + "'", null);
        this.d.b();
        this.i.remove(str2);
      }
    }
    else
    {
      return;
    }
    if (paramInt > 0)
    {
      if ((!this.i.containsKey(str2)) && (!this.k.containsKey(str2)))
        break label207;
      ContentValues localContentValues1 = new ContentValues();
      localContentValues1.put("phone_number", str2);
      localContentValues1.put("mark_id", Integer.valueOf(paramInt));
      localContentValues1.put("mark_name", "");
      this.d.a("numbermark", localContentValues1, "phone_number='" + paramString + "'", null);
      this.d.b();
    }
    while (true)
    {
      this.i.put(str2, Integer.valueOf(paramInt));
      break;
      break;
      label207: ContentValues localContentValues2 = new ContentValues();
      localContentValues2.put("phone_number", str2);
      localContentValues2.put("mark_id", Integer.valueOf(paramInt));
      localContentValues2.put("mark_name", "");
      this.d.a("numbermark", localContentValues2);
      this.d.b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jb
 * JD-Core Version:    0.6.2
 */