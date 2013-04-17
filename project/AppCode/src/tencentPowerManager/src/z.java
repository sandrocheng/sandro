import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.powermanager.PowerManagerApplication;

public final class z
{
  private static String a = "setting_config";
  private static z b;
  private static String f = "force_update_soft_text";
  private static String g = "force_update_soft_version";
  private static String h = "last_check_update_time";
  private static String i = "no_warn_again_version";
  private static String j = "registered_in_server";
  private static String k = "report_usage_info_time";
  private static String l = "is_first_time_into_powermanager";
  private static String m = "show_read_type_soft_light_notification_time";
  private Context c;
  private SharedPreferences d;
  private SharedPreferences.Editor e;

  private z(Context paramContext)
  {
    this.c = paramContext;
    this.d = this.c.getSharedPreferences(a, 0);
    this.e = this.d.edit();
  }

  protected static z a()
  {
    if (b == null);
    try
    {
      if (b == null)
        b = new z(PowerManagerApplication.a());
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(String paramString)
  {
    return this.d.getInt(paramString, 0);
  }

  public final void a(long paramLong)
  {
    this.e.putLong(h, paramLong).commit();
  }

  public final void a(String paramString, int paramInt)
  {
    this.e.putInt(paramString, paramInt).commit();
  }

  public final void a(String paramString, long paramLong)
  {
    this.e.putLong(paramString, paramLong).commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.e.putBoolean(j, paramBoolean).commit();
  }

  public final long b(String paramString)
  {
    return this.d.getLong(paramString, 0L);
  }

  public final String b()
  {
    return this.d.getString(f, null);
  }

  public final void b(long paramLong)
  {
    this.e.putLong(k, paramLong).commit();
  }

  public final String c()
  {
    return this.d.getString(g, null);
  }

  public final void c(long paramLong)
  {
    this.e.putLong(m, paramLong).commit();
  }

  public final boolean c(String paramString)
  {
    return this.d.getBoolean(paramString, true);
  }

  public final long d()
  {
    return this.d.getLong(h, 0L);
  }

  public final void d(String paramString)
  {
    this.e.putString(f, paramString).commit();
  }

  public final String e()
  {
    return this.d.getString(i, null);
  }

  public final void e(String paramString)
  {
    this.e.putString(g, paramString).commit();
  }

  public final void f(String paramString)
  {
    this.e.putString(i, paramString).commit();
  }

  public final boolean f()
  {
    return this.d.getBoolean(j, false);
  }

  public final long g()
  {
    return this.d.getLong(k, 0L);
  }

  public final boolean h()
  {
    return this.d.getBoolean(l, true);
  }

  public final void i()
  {
    this.e.putBoolean(l, false).commit();
  }

  public final long j()
  {
    return this.d.getLong(m, -1L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     z
 * JD-Core Version:    0.6.2
 */