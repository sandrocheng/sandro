import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.tccdb.TccCryptor;
import java.util.ArrayList;
import java.util.List;

public class wq
{
  public static String a = "com.tencent.qqpimsecure.operating.activities.refresh";
  public static String b = "id";
  public static String c = "name";
  public static String d = "tips_id";
  public static String e = "url";
  public static String f = "start_time";
  public static String g = "end_time";
  public static String h = "new_flag";
  private static wq i;
  private Context j;
  private hs k;
  private boolean l = false;
  private boolean m = false;

  private wq(Context paramContext)
  {
    this.j = paramContext;
    this.k = hs.a();
  }

  private List<wq.a> a(Cursor paramCursor)
  {
    int n = paramCursor.getColumnIndexOrThrow(c);
    int i1 = paramCursor.getColumnIndexOrThrow(d);
    int i2 = paramCursor.getColumnIndexOrThrow(e);
    int i3 = paramCursor.getColumnIndexOrThrow(f);
    int i4 = paramCursor.getColumnIndexOrThrow(g);
    int i5 = paramCursor.getColumnIndexOrThrow(h);
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    if (!paramCursor.isAfterLast())
    {
      wq.a locala = new wq.a();
      locala.a = paramCursor.getString(n);
      locala.b = paramCursor.getString(i1);
      locala.c = paramCursor.getString(i2);
      locala.d = paramCursor.getInt(i3);
      locala.e = paramCursor.getInt(i4);
      if (paramCursor.getInt(i5) == 1);
      for (boolean bool = true; ; bool = false)
      {
        locala.f = bool;
        localArrayList.add(locala);
        paramCursor.moveToNext();
        break;
      }
    }
    if (paramCursor != null)
      paramCursor.close();
    return localArrayList;
  }

  public static wq a()
  {
    if (i == null);
    try
    {
      if (i == null)
        i = new wq(QQPimApplication.a());
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static ContentValues c(wq.a parama)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(c, parama.a);
    localContentValues.put(d, parama.b);
    localContentValues.put(e, parama.c);
    localContentValues.put(f, Long.valueOf(parama.d));
    localContentValues.put(g, Long.valueOf(parama.e));
    String str = h;
    if (parama.f);
    for (int n = 1; ; n = 0)
    {
      localContentValues.put(str, Integer.valueOf(n));
      return localContentValues;
    }
  }

  public final boolean a(wq.a parama)
  {
    boolean bool1 = true;
    String str = "SELECT count(*) FROM operating_activities where " + d + "='" + parama.b + "'";
    Cursor localCursor = this.k.a(str);
    if ((localCursor.moveToFirst()) && (localCursor.getInt(0) == 0));
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      if (localCursor != null)
        localCursor.close();
      if (bool2)
      {
        if (parama.d <= 0L)
          parama.d = -9223372036854775808L;
        if (parama.e <= 0L)
          parama.e = 9223372036854775807L;
        long l2 = this.k.a("operating_activities", c(parama));
        if (l2 > 0L)
        {
          this.l = bool1;
          this.m = bool1;
          Intent localIntent2 = new Intent();
          localIntent2.setAction(a);
          this.j.sendBroadcast(localIntent2);
        }
        if (l2 <= 0L);
      }
      while (true)
      {
        return bool1;
        bool1 = false;
        continue;
        if (parama.d <= 0L)
          parama.d = -9223372036854775808L;
        if (parama.e <= 0L)
          parama.e = 9223372036854775807L;
        long l1 = this.k.a("operating_activities", c(parama), d + "='" + parama.b + "'", null);
        if (l1 > 0L)
        {
          Intent localIntent1 = new Intent();
          localIntent1.setAction(a);
          this.j.sendBroadcast(localIntent1);
        }
        if (l1 <= 0L)
          bool1 = false;
      }
    }
  }

  public final List<wq.a> b()
  {
    long l1 = System.currentTimeMillis();
    String str = "SELECT * FROM operating_activities where " + f + "<" + l1 + " and " + g + ">" + l1;
    Cursor localCursor = this.k.a(str);
    localCursor.moveToFirst();
    List localList = a(localCursor);
    if (localList.size() > 5)
      localList = localList.subList(0, 5);
    return localList;
  }

  public final void b(wq.a parama)
  {
    String str1 = parama.c;
    String[] arrayOfString1;
    if (!"".equals(str1))
    {
      arrayOfString1 = str1.split("\\|");
      if (arrayOfString1.length >= 3)
        break label79;
      Intent localIntent1 = new Intent();
      localIntent1.addFlags(268435456);
      localIntent1.setClass(this.j, WebUIActivity.class);
      localIntent1.putExtra("extra_url", arrayOfString1[0]);
      this.j.startActivity(localIntent1);
    }
    while (true)
    {
      return;
      label79: String[] arrayOfString2 = arrayOfString1[1].split(",");
      StringBuffer localStringBuffer1 = new StringBuffer();
      int n = 0;
      if (n < arrayOfString2.length)
      {
        StringBuffer localStringBuffer2 = localStringBuffer1.append(arrayOfString2[n]).append("=");
        String str5 = arrayOfString2[n];
        String str6 = "";
        if ("imei".equals(str5))
          str6 = ft.a(this.j);
        while (true)
        {
          localStringBuffer2.append(str6);
          if (n != -1 + arrayOfString2.length)
            localStringBuffer1.append("&");
          n++;
          break;
          if (!"qq".equals(str5))
            if ("soft".equals(str5))
              str6 = "s";
            else if ((!"uuid".equals(str5)) && (!"no".equals(str5)))
              if ("ver".equals(str5))
                str6 = qx.a().f();
              else if (!"appid".equals(str5))
                if ("p".equals(str5))
                  str6 = String.valueOf(qx.a().g());
                else if ("subp".equals(str5))
                  str6 = String.valueOf(qx.a().g());
        }
      }
      String str2 = k.b(TccCryptor.encrypt(this.j, localStringBuffer1.toString().getBytes(), arrayOfString1[2].getBytes()));
      arrayOfString1[0] = arrayOfString1[0].replaceAll("\\$id", str2);
      String str3 = cw.d().e();
      String str4 = arrayOfString1[0];
      if (str3 == null)
        str3 = "";
      arrayOfString1[0] = str4.replaceAll("\\$lk", str3);
      Intent localIntent2 = new Intent();
      localIntent2.addFlags(268435456);
      localIntent2.setClass(this.j, WebUIActivity.class);
      localIntent2.putExtra("extra_url", arrayOfString1[0]);
      this.j.startActivity(localIntent2);
    }
  }

  public final boolean c()
  {
    return this.l;
  }

  public final void d()
  {
    this.l = false;
  }

  public final boolean e()
  {
    return this.m;
  }

  public final void f()
  {
    this.m = false;
  }

  public final class a
  {
    public String a;
    public String b;
    public String c;
    public long d;
    public long e;
    public boolean f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wq
 * JD-Core Version:    0.6.2
 */