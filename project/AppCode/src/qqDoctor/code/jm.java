import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class jm
{
  public static jm b;
  public HashMap<Long, jm.a> a;
  private hs c = hs.a();
  private String d = "report_sms_call";
  private HashMap<Long, jm.a> e;

  private static List<mh> a(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndexOrThrow("id");
    int j = paramCursor.getColumnIndexOrThrow("type");
    int k = paramCursor.getColumnIndexOrThrow("date");
    int m = paramCursor.getColumnIndexOrThrow("address");
    int n = paramCursor.getColumnIndexOrThrow("hashcode");
    int i1 = paramCursor.getColumnIndexOrThrow("smsbody");
    int i2 = paramCursor.getColumnIndexOrThrow("completephonenum");
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      mh localmh = new mh();
      paramCursor.getInt(i);
      localmh.a = paramCursor.getInt(j);
      localmh.b = paramCursor.getInt(m);
      localmh.c = paramCursor.getLong(k);
      localmh.d = paramCursor.getInt(n);
      localmh.e = paramCursor.getString(i1);
      localmh.f = paramCursor.getString(i2);
      localArrayList.add(localmh);
      paramCursor.moveToNext();
    }
    paramCursor.close();
    return localArrayList;
  }

  private HashMap<Long, jm.a> b(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndexOrThrow("type");
    int j = paramCursor.getColumnIndexOrThrow("date");
    int k = paramCursor.getColumnIndexOrThrow("address");
    int m = paramCursor.getColumnIndexOrThrow("hashcode");
    HashMap localHashMap = new HashMap();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      mh localmh = new mh();
      localmh.a = paramCursor.getInt(i);
      localmh.b = paramCursor.getInt(k);
      localmh.c = paramCursor.getLong(j);
      localmh.d = paramCursor.getInt(m);
      jm.a locala = new jm.a();
      locala.b = localmh.d;
      locala.a = localmh.b;
      localHashMap.put(Long.valueOf(localmh.c), locala);
      paramCursor.moveToNext();
    }
    paramCursor.close();
    return localHashMap;
  }

  public final List<mh> a(int paramInt)
  {
    String str = "SELECT * FROM " + this.d + " where  ( type=" + paramInt + " and realreport=0" + " )  ORDER BY id ASC";
    Cursor localCursor = this.c.a(str);
    localCursor.moveToFirst();
    List localList = a(localCursor);
    if (localCursor != null)
      localCursor.close();
    this.c.b();
    return localList;
  }

  public final void a(mh parammh)
  {
    hs localhs = this.c;
    String str = this.d;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("type", Integer.valueOf(parammh.a));
    localContentValues.put("address", Integer.valueOf(parammh.b));
    localContentValues.put("date", Long.valueOf(parammh.c));
    localContentValues.put("hashcode", Integer.valueOf(parammh.d));
    localhs.a(str, localContentValues);
    this.c.b();
  }

  public final boolean a(mk parammk)
  {
    if (this.e == null)
      this.e = d(0);
    if (parammk.body == null)
      parammk.body = "";
    if (parammk.phonenum == null)
      parammk.phonenum = "";
    long l = parammk.date;
    int i = parammk.body.hashCode();
    int j = fu.f(fu.a(parammk.phonenum)).hashCode();
    jm.a locala = (jm.a)this.e.get(Long.valueOf(l));
    if ((locala != null) && (locala.a == j) && (locala.b == i));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int b(int paramInt)
  {
    int i = 0;
    String str = "SELECT * FROM " + this.d + " where type=" + paramInt + " ORDER BY id ASC";
    Cursor localCursor = this.c.a(str);
    while (localCursor.moveToNext())
      i++;
    if (localCursor != null)
      localCursor.close();
    this.c.b();
    return i;
  }

  public final void c(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      if (this.e != null)
        this.e.clear();
      this.e = null;
      continue;
      if (this.a != null)
        this.a.clear();
      this.a = null;
    }
  }

  public final HashMap<Long, jm.a> d(int paramInt)
  {
    String str = "SELECT * FROM " + this.d + " where type=" + paramInt + " ORDER BY id ASC";
    Cursor localCursor = this.c.a(str);
    localCursor.moveToFirst();
    HashMap localHashMap = b(localCursor);
    if (localCursor != null)
      localCursor.close();
    this.c.b();
    return localHashMap;
  }

  public final class a
  {
    public int a;
    public int b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jm
 * JD-Core Version:    0.6.2
 */