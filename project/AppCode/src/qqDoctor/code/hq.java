import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import java.util.List;

public final class hq
  implements IContactDao<lf>
{
  private hs a;
  private ho b;
  private String c = "contactlist";
  private int d = 0;

  public hq(int paramInt)
  {
    this.d = paramInt;
    this.a = hs.a();
    this.b = ho.a();
  }

  public static String d(String paramString)
  {
    return paramString.substring(0, -2 + paramString.length());
  }

  private void e()
  {
    hp localhp = f.c();
    switch (this.d)
    {
    default:
      switch (this.d)
      {
      case 0:
      case 1:
      default:
      case 2:
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      localhp.c = hp.a(new hq(0));
      break;
      localhp.b = hp.a(new hq(1));
      break;
      localhp.d = hp.a(new hq(2));
      break;
      this.b.d(System.currentTimeMillis());
    }
  }

  public final long a(lf paramlf)
  {
    paramlf.b = this.d;
    ContentValues localContentValues = dy.a(paramlf);
    long l = this.a.a(this.c, "id", localContentValues);
    this.a.b();
    if (l > 0L)
      e();
    return l;
  }

  public final List<lf> a()
  {
    String str = "SELECT * FROM " + this.c + " WHERE type=" + this.d + " ORDER BY id DESC";
    List localList = dy.a(this.a.a(str));
    this.a.b();
    return localList;
  }

  public final lf a(int paramInt)
  {
    String str = "SELECT * FROM " + this.c + " WHERE id=" + paramInt;
    lf locallf = dy.b(this.a.a(str));
    this.a.b();
    return locallf;
  }

  public final lf a(String paramString)
  {
    String str = "SELECT * FROM " + this.c + " WHERE type=" + this.d + " AND number" + fu.g(paramString);
    lf locallf = dy.b(this.a.a(str));
    this.a.b();
    return locallf;
  }

  public final boolean b()
  {
    if (this.a.a("contactlist", "type=" + this.d, null) > 0);
    for (boolean bool = true; ; bool = false)
    {
      this.a.b();
      e();
      return bool;
    }
  }

  public final boolean b(String paramString)
  {
    return contains(paramString, 0);
  }

  public final boolean b(lf paramlf)
  {
    ContentValues localContentValues = dy.a(paramlf);
    if (this.a.a(this.c, localContentValues, "id=" + paramlf.id, null) > 0);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
        e();
      this.a.b();
      return bool;
    }
  }

  public final int c()
  {
    String str = "SELECT COUNT(*) FROM " + this.c + " WHERE type=" + this.d;
    Cursor localCursor = this.a.a(str);
    boolean bool = localCursor.moveToFirst();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    this.a.b();
    return i;
  }

  public final String c(String paramString)
  {
    hp localhp = f.c();
    int i = this.d;
    String str = null;
    switch (i)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return str;
      localhp.b();
      str = localhp.c.a(paramString);
      continue;
      localhp.b();
      str = localhp.b.a(paramString);
      continue;
      localhp.b();
      str = localhp.d.a(paramString);
    }
  }

  public final boolean c(lf paramlf)
  {
    int i = paramlf.id;
    boolean bool = true;
    if (this.a.a(this.c, "id=" + i, null) > 0)
      e();
    while (true)
    {
      this.a.b();
      return bool;
      bool = false;
    }
  }

  public final boolean contains(String paramString, int paramInt)
  {
    boolean bool1 = true;
    String str1 = c(paramString);
    if (str1 != null)
      if (this.d == 0)
      {
        if (paramInt != 0)
          break label86;
        int j = str1.length();
        boolean bool3 = str1.substring(j - 2, j).startsWith("0");
        String str3 = null;
        if (bool3)
          str3 = str1.substring(0, -2 + str1.length());
        if (str3 == null)
          break label81;
      }
    while (true)
    {
      return bool1;
      label81: bool1 = false;
      continue;
      label86: int i = str1.length();
      boolean bool2 = str1.substring(i - 2, i).endsWith("0");
      String str2 = null;
      if (bool2)
        str2 = str1.substring(0, -2 + str1.length());
      if (str2 == null)
      {
        bool1 = false;
        continue;
        bool1 = false;
      }
    }
  }

  public final int d()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hq
 * JD-Core Version:    0.6.2
 */