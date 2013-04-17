import android.content.ContentValues;
import android.content.Context;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.List;

public final class s
{
  public static final String a = PowerManagerApplication.a().getString(2131099673);
  public static final String b = PowerManagerApplication.a().getString(2131099674);
  public static final String c = PowerManagerApplication.a().getString(2131099675);
  public static final String d = PowerManagerApplication.a().getString(2131099676);
  private static s e;
  private aa f = new aa();

  private static ContentValues a(bf parambf)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", Integer.valueOf(parambf.a));
    localContentValues.put("mode_name", parambf.b);
    localContentValues.put("brightness", Integer.valueOf(parambf.c));
    localContentValues.put("screen_time", Integer.valueOf(parambf.d));
    localContentValues.put("animation", Integer.valueOf(parambf.e));
    localContentValues.put("wifi_state", Boolean.valueOf(parambf.f));
    localContentValues.put("network_state", Boolean.valueOf(parambf.g));
    localContentValues.put("bluetooth_state", Boolean.valueOf(parambf.h));
    localContentValues.put("auto_sync", Boolean.valueOf(parambf.i));
    localContentValues.put("vibrate", Boolean.valueOf(parambf.j));
    localContentValues.put("haptic_feedback", Boolean.valueOf(parambf.k));
    localContentValues.put("airplane_state", Integer.valueOf(parambf.l));
    return localContentValues;
  }

  public static s a()
  {
    if (e == null)
      e = new s();
    return e;
  }

  public final void a(bf parambf, s.a parama)
  {
    ContentValues localContentValues = a(parambf);
    aa.a("savemode_table", localContentValues, new v(parama));
  }

  public final void a(String paramString, s.a parama)
  {
    String[] arrayOfString1 = { "mode_name" };
    String[] arrayOfString2 = { paramString };
    aa.a("savemode_table", arrayOfString1, "mode_name=?", arrayOfString2, new u(paramString, parama));
  }

  public final void a(s.a parama)
  {
    aa.a("SELECT * FROM savemode_table", 0, new t(this, parama));
  }

  public final void b(bf parambf, s.a parama)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = parambf.a;
    aa.a("savemode_table", "_id=?", arrayOfString, new w(parama));
  }

  public final void c(bf parambf, s.a parama)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = parambf.a;
    ContentValues localContentValues = a(parambf);
    aa.a("savemode_table", localContentValues, "_id=?", arrayOfString, new x(parama));
  }

  public static abstract class a
  {
    public static r d()
    {
      return r.a();
    }

    public static y e()
    {
      return y.a();
    }

    public static fg f()
    {
      try
      {
        fg localfg = new fg();
        return localfg;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public static z g()
    {
      return z.a();
    }

    public void a()
    {
    }

    public void a(List<bf> paramList)
    {
    }

    public void a(boolean paramBoolean)
    {
    }

    public void b()
    {
    }

    public void c()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     s
 * JD-Core Version:    0.6.2
 */