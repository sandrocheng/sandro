import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class hi
  implements ICallLogDao<ky>
{
  private hs a;
  private int b;
  private String c = "pimcalllog";
  private ki d;

  public hi(int paramInt)
  {
    this.b = paramInt;
    this.a = hs.a();
    this.d = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
  }

  public final int a(long paramLong1, long paramLong2)
  {
    String str = "SELECT count(*) FROM " + this.c + " WHERE privateflag=" + this.b + " AND date>=" + paramLong1 + " AND date<" + paramLong2;
    Cursor localCursor = this.a.a(str);
    boolean bool = localCursor.moveToFirst();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    this.a.b();
    return i;
  }

  public final long a(ky paramky)
  {
    ContentValues localContentValues = f.a(paramky, this.b, false);
    long l = this.a.a(this.c, "id", localContentValues);
    this.a.b();
    return l;
  }

  public final List<ky> a(String paramString)
  {
    Object localObject;
    if (paramString.indexOf('*') < 0)
    {
      String str = "SELECT * FROM " + this.c + " WHERE privateflag=" + this.b + " AND number" + fu.g(paramString) + " ORDER BY id DESC";
      localObject = f.a(this.a.a(str));
      this.a.b();
    }
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
    }
  }

  public final ky a(int paramInt)
  {
    int i = 1;
    String str = "SELECT * FROM " + this.c + " WHERE id=" + paramInt;
    Cursor localCursor = this.a.a(str);
    ky localky2;
    if (localCursor.moveToFirst())
    {
      int j = localCursor.getColumnIndex("id");
      int k = localCursor.getColumnIndex("privateflag");
      int m = localCursor.getColumnIndex("number");
      int n = localCursor.getColumnIndex("date");
      int i1 = localCursor.getColumnIndex("duration");
      int i2 = localCursor.getColumnIndex("type");
      int i3 = localCursor.getColumnIndex("numbertype");
      int i4 = localCursor.getColumnIndex("tagnew");
      int i5 = localCursor.getColumnIndex("name");
      int i6 = localCursor.getColumnIndex("numberlabel");
      localky2 = new ky();
      localky2.id = localCursor.getInt(j);
      localky2.phonenum = localCursor.getString(m);
      localky2.date = localCursor.getLong(n);
      localky2.duration = localCursor.getInt(i1);
      localky2.type = localCursor.getInt(i2);
      localky2.b = localCursor.getInt(i3);
      localky2.a = localCursor.getInt(i4);
      localky2.c = localCursor.getString(i6);
      localky2.name = localCursor.getString(i5);
      if (localCursor.getInt(k) == i)
        localky2.d = i;
    }
    for (ky localky1 = localky2; ; localky1 = null)
    {
      localCursor.close();
      this.a.b();
      return localky1;
      i = 0;
      break;
    }
  }

  public final boolean a()
  {
    this.a.a(this.c, "privateflag=" + this.b, null);
    this.a.b();
    return true;
  }

  public final boolean a(List<ky> paramList)
  {
    boolean bool;
    if (paramList.size() > 0)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("id IN (");
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        ky localky = (ky)localIterator.next();
        localStringBuffer.append(localky.id + ",");
      }
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(")");
      if (this.a.a(this.c, localStringBuffer.toString(), null) > 0)
      {
        bool = true;
        this.a.b();
      }
    }
    while (true)
    {
      return bool;
      bool = false;
      break;
      bool = true;
    }
  }

  public final List<ky> b()
  {
    String str = "SELECT * FROM " + this.c + " WHERE privateflag=" + this.b + " ORDER BY date DESC";
    List localList = f.a(this.a.a(str));
    this.a.b();
    return localList;
  }

  public final boolean b(String paramString)
  {
    List localList = a(paramString);
    if ((this.d.b(localList)) && (a(localList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b(List<ky> paramList)
  {
    this.a.a(new hj(this, paramList));
    return true;
  }

  public final boolean b(ky paramky)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramky);
    return c(localArrayList);
  }

  public final int c()
  {
    String str = "SELECT count(*) FROM " + this.c + " WHERE privateflag=" + this.b;
    Cursor localCursor = this.a.a(str);
    boolean bool = localCursor.moveToFirst();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    this.a.b();
    return i;
  }

  public final boolean c(List<ky> paramList)
  {
    if ((this.d.b(paramList)) && (a(paramList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean c(ky paramky)
  {
    int i = paramky.id;
    int j = this.a.a(this.c, "id=" + i, null);
    this.a.b();
    if (j > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hi
 * JD-Core Version:    0.6.2
 */