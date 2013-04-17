import QQPIM.stBindPhoneInfo;
import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.Iterator;

public final class jh
{
  public static String a = "imei";
  public static String b = "status";
  public static String c = "phonenum";
  public static String d = "memo";
  public static String e = "uin";
  public static String f = "changesim";
  public static String g = "chsimtime";
  public static String h = "changephone";
  public static String i = "subplatform";
  public static String j = "bindtime";
  public static String k = "ua";
  public static String l = "useragent";
  public static String m = "urgentphone";
  private hs n = hs.a();

  public final ArrayList<stBindPhoneInfo> a()
  {
    Cursor localCursor = this.n.a("SELECT * FROM bind_phone_info");
    int i1 = localCursor.getColumnIndexOrThrow(a);
    int i2 = localCursor.getColumnIndexOrThrow(b);
    int i3 = localCursor.getColumnIndexOrThrow(c);
    int i4 = localCursor.getColumnIndexOrThrow(d);
    int i5 = localCursor.getColumnIndexOrThrow(e);
    int i6 = localCursor.getColumnIndexOrThrow(f);
    int i7 = localCursor.getColumnIndexOrThrow(g);
    int i8 = localCursor.getColumnIndexOrThrow(h);
    int i9 = localCursor.getColumnIndexOrThrow(i);
    int i10 = localCursor.getColumnIndexOrThrow(j);
    int i11 = localCursor.getColumnIndexOrThrow(k);
    int i12 = localCursor.getColumnIndexOrThrow(l);
    int i13 = localCursor.getColumnIndexOrThrow(m);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      stBindPhoneInfo localstBindPhoneInfo = new stBindPhoneInfo();
      localstBindPhoneInfo.setImei(localCursor.getString(i1));
      localstBindPhoneInfo.setStatus((short)localCursor.getInt(i2));
      localstBindPhoneInfo.setPhonenum(localCursor.getString(i3));
      localstBindPhoneInfo.setMemo(localCursor.getString(i4));
      localstBindPhoneInfo.setUin(localCursor.getLong(i5));
      localstBindPhoneInfo.setChangesim((short)localCursor.getInt(i6));
      localstBindPhoneInfo.setChsimtime(localCursor.getInt(i7));
      localstBindPhoneInfo.setChangephone(localCursor.getString(i8));
      localstBindPhoneInfo.setSubplatform((short)localCursor.getInt(i9));
      localstBindPhoneInfo.setBindtime(localCursor.getInt(i10));
      localstBindPhoneInfo.setUa(localCursor.getString(i11));
      localstBindPhoneInfo.setUseragent(localCursor.getString(i12));
      localstBindPhoneInfo.setUrgentphone(localCursor.getString(i13));
      localArrayList.add(localstBindPhoneInfo);
    }
    localCursor.close();
    return localArrayList;
  }

  public final void a(ArrayList<stBindPhoneInfo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.n.c("bind_phone_info");
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        stBindPhoneInfo localstBindPhoneInfo = (stBindPhoneInfo)localIterator.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.clear();
        localContentValues.put(a, localstBindPhoneInfo.getImei());
        localContentValues.put(b, Integer.valueOf(localstBindPhoneInfo.getStatus()));
        localContentValues.put(c, localstBindPhoneInfo.getPhonenum());
        localContentValues.put(d, localstBindPhoneInfo.getMemo());
        localContentValues.put(e, Long.valueOf(localstBindPhoneInfo.getUin()));
        localContentValues.put(f, Integer.valueOf(localstBindPhoneInfo.getChangesim()));
        localContentValues.put(g, Integer.valueOf(localstBindPhoneInfo.getChsimtime()));
        localContentValues.put(h, localstBindPhoneInfo.getChangephone());
        localContentValues.put(i, Integer.valueOf(localstBindPhoneInfo.getSubplatform()));
        localContentValues.put(j, Integer.valueOf(localstBindPhoneInfo.getBindtime()));
        localContentValues.put(k, localstBindPhoneInfo.getUa());
        localContentValues.put(l, localstBindPhoneInfo.getUseragent());
        localContentValues.put(m, localstBindPhoneInfo.getUrgentphone());
        this.n.a("bind_phone_info", a, localContentValues);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jh
 * JD-Core Version:    0.6.2
 */