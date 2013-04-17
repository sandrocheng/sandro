import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.powermanager.PowerManagerApplication;

public class y
{
  private static y a;
  private Context b;
  private SharedPreferences c;
  private SharedPreferences.Editor d;

  private y(Context paramContext)
  {
    this.b = paramContext;
    this.c = this.b.getSharedPreferences("battery_setting_record", 0);
    this.d = this.c.edit();
  }

  protected static y a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new y(PowerManagerApplication.a());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int A()
  {
    return this.c.getInt("low_power_animation_record", 2);
  }

  public final boolean B()
  {
    return this.c.getBoolean("low_power_vibrate_record", true);
  }

  public final void C()
  {
    this.d.putBoolean("low_power_auto_sync_record", false).commit();
  }

  public final boolean D()
  {
    return this.c.getBoolean("low_power_auto_sync_record", false);
  }

  public final boolean E()
  {
    return this.c.getBoolean("low_power_haptic_feedback_record", true);
  }

  public final void a(int paramInt)
  {
    this.d.putInt("bright_record", paramInt).commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.d.putBoolean("blue_tooth_record", paramBoolean).commit();
  }

  public final void b(int paramInt)
  {
    this.d.putInt("screen_time_record", paramInt).commit();
  }

  public final void b(boolean paramBoolean)
  {
    this.d.putBoolean("wifi_record", paramBoolean).commit();
  }

  public final boolean b()
  {
    return this.c.getBoolean("blue_tooth_record", false);
  }

  public final void c(int paramInt)
  {
    this.d.putInt("animation_record", paramInt).commit();
  }

  public final void c(boolean paramBoolean)
  {
    this.d.putBoolean("gprs_record", paramBoolean).commit();
  }

  public final boolean c()
  {
    return this.c.getBoolean("wifi_record", true);
  }

  public final void d(int paramInt)
  {
    this.d.putInt("low_power_bright_record", paramInt).commit();
  }

  public final void d(boolean paramBoolean)
  {
    this.d.putBoolean("vibrate_record", paramBoolean).commit();
  }

  public final boolean d()
  {
    return this.c.getBoolean("gprs_record", true);
  }

  public final int e()
  {
    return this.c.getInt("bright_record", -1);
  }

  public final void e(int paramInt)
  {
    this.d.putInt("low_power_screen_time_record", paramInt).commit();
  }

  public final void e(boolean paramBoolean)
  {
    this.d.putBoolean("auto_sync_record", paramBoolean).commit();
  }

  public final int f()
  {
    return this.c.getInt("screen_time_record", 30000);
  }

  public final void f(int paramInt)
  {
    this.d.putInt("low_power_animation_record", paramInt).commit();
  }

  public final void f(boolean paramBoolean)
  {
    this.d.putBoolean("haptic_feedback_record", paramBoolean).commit();
  }

  public final int g()
  {
    return this.c.getInt("animation_record", 2);
  }

  public final void g(boolean paramBoolean)
  {
    this.d.putBoolean("is_air_mode_record", paramBoolean).commit();
  }

  public final void h(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("common_mode_wifi_record", i).commit();
      return;
    }
  }

  public final boolean h()
  {
    return this.c.getBoolean("vibrate_record", true);
  }

  public final void i(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("common_mode_gprs_record", i).commit();
      return;
    }
  }

  public final boolean i()
  {
    return this.c.getBoolean("auto_sync_record", false);
  }

  public final void j(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("common_mode_vibrate_record", i).commit();
      return;
    }
  }

  public final boolean j()
  {
    return this.c.getBoolean("haptic_feedback_record", true);
  }

  public final void k(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("common_mode_haptic_feedback_record", i).commit();
      return;
    }
  }

  public final boolean k()
  {
    return this.c.getBoolean("is_save_record", false);
  }

  public final void l()
  {
    this.d.putBoolean("is_save_record", true).commit();
  }

  public final void l(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("strong_mode_gprs_record", i).commit();
      return;
    }
  }

  public final void m(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("strong_mode_vibrate_record", i).commit();
      return;
    }
  }

  public final boolean m()
  {
    return this.c.getBoolean("is_air_mode_record", false);
  }

  public final int n()
  {
    return this.c.getInt("common_mode_wifi_record", -1);
  }

  public final void n(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      localEditor.putInt("extream_mode_vibrate_record", i).commit();
      return;
    }
  }

  public final int o()
  {
    return this.c.getInt("common_mode_gprs_record", -1);
  }

  public final void o(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_has_save_record", paramBoolean).commit();
  }

  public final int p()
  {
    return this.c.getInt("common_mode_vibrate_record", -1);
  }

  public final void p(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_blue_tooth_record", paramBoolean).commit();
  }

  public final int q()
  {
    return this.c.getInt("common_mode_haptic_feedback_record", -1);
  }

  public final void q(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_wifi_record", paramBoolean).commit();
  }

  public final int r()
  {
    return this.c.getInt("strong_mode_gprs_record", -1);
  }

  public final void r(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_gprs_record", paramBoolean).commit();
  }

  public final int s()
  {
    return this.c.getInt("extream_mode_vibrate_record", -1);
  }

  public final void s(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_vibrate_record", paramBoolean).commit();
  }

  public final int t()
  {
    return this.c.getInt("strong_mode_vibrate_record", -1);
  }

  public final void t(boolean paramBoolean)
  {
    this.d.putBoolean("low_power_haptic_feedback_record", paramBoolean).commit();
  }

  public final boolean u()
  {
    return this.c.getBoolean("low_power_has_save_record", false);
  }

  public final boolean v()
  {
    return this.c.getBoolean("low_power_blue_tooth_record", false);
  }

  public final boolean w()
  {
    return this.c.getBoolean("low_power_wifi_record", true);
  }

  public final boolean x()
  {
    return this.c.getBoolean("low_power_gprs_record", true);
  }

  public final int y()
  {
    return this.c.getInt("low_power_bright_record", -1);
  }

  public final int z()
  {
    return this.c.getInt("low_power_screen_time_record", 30000);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     y
 * JD-Core Version:    0.6.2
 */