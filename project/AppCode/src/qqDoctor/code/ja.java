import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import java.util.ArrayList;
import java.util.List;

public final class ja
{
  public hs a;

  public ja()
  {
    QQPimApplication.a();
    this.a = hs.a();
  }

  public static ContentValues a(mb.a parama)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("pkg", parama.i.a);
    localContentValues.put("title", parama.b);
    localContentValues.put("content", parama.a);
    localContentValues.put("date", parama.c);
    localContentValues.put("timestamp", Integer.valueOf(parama.d));
    localContentValues.put("NotificationID", Long.valueOf(parama.f));
    String str = parama.g;
    if (str == null)
      str = "";
    localContentValues.put("url", str);
    localContentValues.put("msg_flag", Integer.valueOf(parama.e));
    return localContentValues;
  }

  public static ContentValues a(mb parammb)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("pkg", parammb.a);
    localContentValues.put("setting", Integer.valueOf(parammb.c));
    localContentValues.put("app_name", parammb.b);
    if (parammb.d);
    for (int i = 1; ; i = 0)
    {
      localContentValues.put("ad_like", Integer.valueOf(i));
      localContentValues.put("flag", Integer.valueOf(parammb.e));
      return localContentValues;
    }
  }

  public static List<mb> a(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndexOrThrow("pkg");
    int j = paramCursor.getColumnIndexOrThrow("setting");
    int k = paramCursor.getColumnIndexOrThrow("ad_like");
    int m = paramCursor.getColumnIndexOrThrow("app_name");
    int n = paramCursor.getColumnIndexOrThrow("flag");
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    if (!paramCursor.isAfterLast())
    {
      mb localmb = new mb(paramCursor.getString(i));
      localmb.b = paramCursor.getString(m);
      localmb.c = paramCursor.getInt(j);
      if (paramCursor.getInt(k) != 0);
      for (boolean bool = true; ; bool = false)
      {
        localmb.d = bool;
        localmb.e = paramCursor.getInt(n);
        localArrayList.add(localmb);
        paramCursor.moveToNext();
        break;
      }
    }
    paramCursor.close();
    return localArrayList;
  }

  private static List<mb.a> a(Cursor paramCursor, mb parammb)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramCursor.getColumnIndexOrThrow("title");
    int j = paramCursor.getColumnIndexOrThrow("content");
    int k = paramCursor.getColumnIndexOrThrow("date");
    int m = paramCursor.getColumnIndexOrThrow("timestamp");
    int n = paramCursor.getColumnIndexOrThrow("msg_flag");
    int i1 = paramCursor.getColumnIndexOrThrow("NotificationID");
    int i2 = paramCursor.getColumnIndexOrThrow("id");
    int i3 = paramCursor.getColumnIndexOrThrow("url");
    paramCursor.moveToFirst();
    if (!paramCursor.isAfterLast())
    {
      mb.a locala = new mb.a(parammb, paramCursor.getString(i), paramCursor.getString(j), paramCursor.getString(i3));
      String str = paramCursor.getString(k);
      if (str == null);
      for (locala.c = ""; ; locala.c = str)
      {
        locala.d = paramCursor.getInt(m);
        locala.e = paramCursor.getInt(n);
        locala.f = paramCursor.getInt(i1);
        locala.g = paramCursor.getString(i3);
        locala.h = paramCursor.getLong(i2);
        localArrayList.add(locala);
        paramCursor.moveToNext();
        break;
      }
    }
    paramCursor.close();
    return localArrayList;
  }

  public static void a(kx paramkx, int paramInt)
  {
    int i = paramkx.e.length;
    int j = 0;
    if (j < i)
    {
      if (j == 12)
        paramkx.e[j] = ((byte)paramInt);
      while (true)
      {
        j++;
        break;
        paramkx.e[j] = -1;
      }
    }
  }

  public static void c(mb parammb)
  {
    jf localjf = new jf();
    boolean bool = ho.a().by();
    kx localkx = localjf.a(parammb.a);
    PermissionManager localPermissionManager;
    if (localkx != null)
    {
      localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
      if (localPermissionManager.isFinishInit());
    }
    else
    {
      return;
    }
    if (!bool)
      a(localkx, 2);
    while (true)
    {
      localPermissionManager.updatePermissionTable(xf.a(localkx.a, localkx.e, localkx.b));
      break;
      localkx.e[12] = 2;
    }
  }

  public final List<mb> a(boolean paramBoolean)
  {
    Cursor localCursor = this.a.a("SELECT * FROM notification_app");
    localCursor.moveToFirst();
    List localList = a(localCursor);
    if ((localList != null) && (paramBoolean))
    {
      int i = localList.size();
      for (int j = 0; j < i; j++)
      {
        mb localmb = (mb)localList.get(j);
        if (localmb != null)
          localmb.f = d(localmb);
      }
    }
    localCursor.close();
    this.a.b();
    return localList;
  }

  public final mb a(String paramString)
  {
    String str = "SELECT * FROM notification_app WHERE pkg = '" + paramString + "'";
    Cursor localCursor = this.a.a(str);
    localCursor.moveToFirst();
    List localList = a(localCursor);
    localCursor.close();
    this.a.b();
    if ((localList != null) && (localList.size() > 0));
    for (mb localmb = (mb)localList.get(0); ; localmb = null)
      return localmb;
  }

  public final boolean b(mb parammb)
  {
    ContentValues localContentValues = a(parammb);
    long l = this.a.a("notification_app", localContentValues, "pkg='" + parammb.a + "'", null);
    this.a.b();
    if (l > 0L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final List<mb.a> d(mb parammb)
  {
    String str = "SELECT * FROM notification_msg WHERE pkg='" + parammb.a + "'";
    Cursor localCursor = this.a.a(str);
    localCursor.moveToFirst();
    List localList = a(localCursor, parammb);
    localCursor.close();
    this.a.b();
    return localList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ja
 * JD-Core Version:    0.6.2
 */