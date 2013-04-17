import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.net.Uri;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.ArrayList;

public class r
{
  private static r a;
  private Context b;
  private SharedPreferences c;
  private SharedPreferences.Editor d;

  private r(Context paramContext)
  {
    this.b = paramContext;
    this.c = this.b.getSharedPreferences("setting_battery_manager", 0);
    this.d = this.c.edit();
  }

  protected static r a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new r(PowerManagerApplication.a());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void d(boolean paramBoolean)
  {
    ContentResolver.setMasterSyncAutomatically(paramBoolean);
  }

  public static void e(int paramInt)
  {
    new bi();
    float[] arrayOfFloat = bi.a();
    if (arrayOfFloat == null);
    while (true)
    {
      return;
      if ((arrayOfFloat != null) && (arrayOfFloat.length > 0))
        arrayOfFloat[0] = (paramInt % 10);
      if ((arrayOfFloat != null) && (arrayOfFloat.length >= 2))
        arrayOfFloat[1] = (paramInt / 10 % 10);
      bi.a(arrayOfFloat);
    }
  }

  public static int j()
  {
    int i = 2;
    new bi();
    float[] arrayOfFloat = bi.a();
    if ((arrayOfFloat == null) || (arrayOfFloat.length <= 0))
      i = 0;
    while (true)
    {
      return i;
      if (arrayOfFloat.length >= i)
      {
        if ((arrayOfFloat[0] < 1.0F) || (arrayOfFloat[1] < 1.0F))
          if ((arrayOfFloat[0] <= 0.0F) && (arrayOfFloat[1] <= 0.0F))
            i = 0;
      }
      else
        i = 1;
    }
  }

  public static boolean m()
  {
    return ContentResolver.getMasterSyncAutomatically();
  }

  public final boolean A()
  {
    return this.c.getBoolean("battery_is_first_run", true);
  }

  public final void B()
  {
    this.d.putBoolean("battery_is_first_run", false).commit();
  }

  public final void a(int paramInt)
  {
    this.d.putInt("battery_save_mode", paramInt).commit();
  }

  public final void a(long paramLong)
  {
    this.d.putLong("last_charge_time", paramLong).commit();
  }

  public final void a(String paramString)
  {
    this.d.putString("battery_save_mode_name", paramString).commit();
  }

  public final void a(String paramString, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.d.putString("battery_charge_speed_record_usb", paramString).commit();
      continue;
      this.d.putString("battery_charge_speed_record_ac", paramString).commit();
    }
  }

  public final void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    if (Settings.System.getInt(this.b.getContentResolver(), "airplane_mode_on", 0) == bool1);
    for (boolean bool2 = bool1; bool2 == paramBoolean; bool2 = false)
      return;
    ContentResolver localContentResolver = this.b.getContentResolver();
    if (paramBoolean);
    while (true)
    {
      Settings.System.putInt(localContentResolver, "airplane_mode_on", bool1);
      Intent localIntent = new Intent("android.intent.action.AIRPLANE_MODE");
      localIntent.putExtra("state", paramBoolean);
      this.b.sendBroadcast(localIntent);
      break;
      bool1 = false;
    }
  }

  public final String b()
  {
    String str = this.c.getString("battery_save_mode_name", null);
    if (str == null)
      switch (this.c.getInt("battery_save_mode", 4))
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    while (true)
    {
      return str;
      str = s.b;
      continue;
      str = s.c;
      continue;
      str = s.d;
      continue;
      str = s.a;
    }
  }

  public final void b(int paramInt)
  {
    this.d.putInt("low_power_savemode_record", paramInt).commit();
  }

  public final void b(long paramLong)
  {
    this.d.putLong("battery_charge_speed", paramLong).commit();
  }

  public final void b(String paramString)
  {
    this.d.putString("low_power_modename_record", paramString).commit();
  }

  public final void b(boolean paramBoolean)
  {
    ContentResolver localContentResolver = this.b.getContentResolver();
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      Settings.System.putInt(localContentResolver, "haptic_feedback_enabled", i);
      return;
    }
  }

  public final int c()
  {
    return this.c.getInt("battery_save_mode", 4);
  }

  public final void c(int paramInt)
  {
    Settings.System.putInt(this.b.getContentResolver(), "screen_off_timeout", paramInt);
    Uri localUri = Settings.System.getUriFor("screen_off_timeout");
    this.b.getContentResolver().notifyChange(localUri, null);
  }

  public final void c(long paramLong)
  {
    String str1 = this.c.getString("battery_power_record", null);
    int i = this.c.getInt("battery_power_record_index", 0);
    Object localObject;
    int m;
    if (str1 == null)
    {
      localObject = String.valueOf(paramLong);
      m = i;
      this.d.putInt("battery_power_record_index", m).commit();
      this.d.putString("battery_power_record", (String)localObject).commit();
    }
    String[] arrayOfString;
    while (true)
    {
      return;
      arrayOfString = str1.split(",");
      if (arrayOfString.length >= 10)
        break;
      String str5 = str1 + ",";
      String str6 = str5 + paramLong;
      int n = (i + 1) % 10;
      this.d.putInt("battery_power_record_index", n).commit();
      this.d.putString("battery_power_record", str6).commit();
    }
    String str2;
    if (arrayOfString.length < 30)
    {
      String str4 = str1 + ",";
      str2 = str4 + paramLong;
    }
    while (true)
    {
      int k = (i + 1) % 30;
      localObject = str2;
      m = k;
      break;
      arrayOfString[i] = String.valueOf(paramLong);
      str2 = arrayOfString[0];
      for (int j = 1; j < arrayOfString.length; j++)
      {
        String str3 = str2 + ",";
        str2 = str3 + arrayOfString[j];
      }
    }
  }

  public final void c(String paramString)
  {
    this.d.putString("cpu_governor", paramString).commit();
  }

  public final void c(boolean paramBoolean)
  {
    int i = 1;
    AudioManager localAudioManager = (AudioManager)this.b.getSystemService("audio");
    int j = localAudioManager.getRingerMode();
    if (paramBoolean)
    {
      if (j == 0)
        localAudioManager.setRingerMode(i);
      if (!paramBoolean)
        break label60;
    }
    while (true)
    {
      localAudioManager.setVibrateSetting(0, i);
      return;
      if (j != i)
        break;
      localAudioManager.setRingerMode(0);
      break;
      label60: i = 0;
    }
  }

  public final int d()
  {
    return this.c.getInt("low_power_savemode_record", 4);
  }

  public final void d(int paramInt)
  {
    this.d.putInt("last_charge_level", paramInt).commit();
  }

  public final String e()
  {
    return this.c.getString("low_power_modename_record", null);
  }

  public final void e(boolean paramBoolean)
  {
    this.d.putBoolean("battery_notify_switch", paramBoolean).commit();
  }

  public final int f()
  {
    try
    {
      int j = Settings.System.getInt(this.b.getContentResolver(), "screen_off_timeout");
      i = j;
      return i;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      while (true)
      {
        localSettingNotFoundException.printStackTrace();
        int i = 0;
      }
    }
  }

  public final void f(int paramInt)
  {
    AudioManager localAudioManager = (AudioManager)this.b.getSystemService("audio");
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      localAudioManager.setRingerMode(2);
      localAudioManager.setVibrateSetting(0, 1);
      continue;
      localAudioManager.setRingerMode(2);
      localAudioManager.setVibrateSetting(0, 0);
      continue;
      localAudioManager.setRingerMode(1);
      localAudioManager.setVibrateSetting(0, 1);
      continue;
      localAudioManager.setRingerMode(0);
      localAudioManager.setVibrateSetting(0, 0);
    }
  }

  public final void f(boolean paramBoolean)
  {
    this.d.putBoolean("battery_full_warn", paramBoolean).commit();
  }

  public final String g(int paramInt)
  {
    String str = null;
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return str;
      str = this.c.getString("battery_charge_speed_record_usb", null);
      continue;
      str = this.c.getString("battery_charge_speed_record_ac", null);
    }
  }

  public final void g(boolean paramBoolean)
  {
    this.d.putBoolean("battery_deep_save", paramBoolean).commit();
    af.b();
  }

  public final boolean g()
  {
    int i = 1;
    if (Settings.System.getInt(this.b.getContentResolver(), "airplane_mode_on", 0) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final double h()
  {
    if (this.c.getBoolean("battery_deep_save", false));
    for (double d1 = 1.05D; ; d1 = 1.0D)
    {
      if (((TelephonyManager)this.b.getSystemService("phone")).getSimState() != 1);
      for (int i = 1; ; i = 0)
      {
        if (i == 0)
          d1 *= 1.5D;
        return d1;
      }
    }
  }

  public final void h(int paramInt)
  {
    this.d.putInt("battery_icon_type", paramInt).commit();
  }

  public final void h(boolean paramBoolean)
  {
    this.d.putBoolean("battery_limit_tips_open", paramBoolean).commit();
  }

  public final void i(int paramInt)
  {
    String str1 = this.c.getString("battery_charge_record", null);
    if (str1 == null);
    String str2;
    for (String str3 = String.valueOf(paramInt); ; str3 = str2 + paramInt)
    {
      this.d.putString("battery_charge_record", str3).commit();
      return;
      str2 = str1 + ",";
    }
  }

  public final void i(boolean paramBoolean)
  {
    this.d.putBoolean("battery_charging_window", paramBoolean).commit();
  }

  public final boolean i()
  {
    int i = 1;
    if (Settings.System.getInt(this.b.getContentResolver(), "haptic_feedback_enabled", 0) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final void j(boolean paramBoolean)
  {
    this.d.putBoolean("battery_limit_tips_has_shown", paramBoolean).commit();
  }

  public final boolean k()
  {
    if (((AudioManager)this.b.getSystemService("audio")).getVibrateSetting(0) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int l()
  {
    AudioManager localAudioManager = (AudioManager)this.b.getSystemService("audio");
    int i = localAudioManager.getRingerMode();
    int j = localAudioManager.getVibrateSetting(0);
    int k;
    if ((i == 0) || (i == 1))
      if (j == 0)
        k = 3;
    while (true)
    {
      return k;
      if ((i == 0) && (j == 1))
      {
        k = 3;
      }
      else if (j == 1)
      {
        k = 2;
      }
      else if (j == 2)
      {
        k = 2;
        continue;
        if (i == 2)
        {
          if (j == 0)
          {
            k = 1;
            continue;
          }
          if (j == 1)
          {
            k = 0;
            continue;
          }
          if (j == 2)
            k = 1;
        }
      }
      else
      {
        k = -1;
      }
    }
  }

  public final long n()
  {
    return this.c.getLong("battery_charge_speed", 0L);
  }

  public final int o()
  {
    return this.c.getInt("battery_icon_type", 2);
  }

  public final boolean p()
  {
    return this.c.getBoolean("battery_notify_switch", true);
  }

  public final boolean q()
  {
    return this.c.getBoolean("battery_full_warn", true);
  }

  public final boolean r()
  {
    return this.c.getBoolean("battery_deep_save", false);
  }

  public final String s()
  {
    return this.c.getString("cpu_governor", null);
  }

  public final boolean t()
  {
    return this.c.getBoolean("battery_limit_tips_open", true);
  }

  public final boolean u()
  {
    return this.c.getBoolean("battery_charging_window", true);
  }

  public final boolean v()
  {
    return this.c.getBoolean("battery_limit_tips_has_shown", false);
  }

  public final int[] w()
  {
    String str = this.c.getString("battery_charge_record", null);
    if (str == null);
    int[] arrayOfInt;
    for (Object localObject = new int[0]; ; localObject = arrayOfInt)
    {
      return localObject;
      String[] arrayOfString = str.split(",");
      ArrayList localArrayList = new ArrayList(arrayOfString.length);
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(Integer.valueOf(Integer.parseInt(arrayOfString[j])));
      arrayOfInt = new int[localArrayList.size()];
      for (int k = 0; k < localArrayList.size(); k++)
        arrayOfInt[k] = ((Integer)localArrayList.get(k)).intValue();
    }
  }

  public final void x()
  {
    this.d.putString("battery_charge_record", null).commit();
  }

  public final int y()
  {
    String str = this.c.getString("battery_power_record", null);
    int i = 0;
    if (str == null);
    while (true)
    {
      return i;
      String[] arrayOfString = str.split(",");
      int j = arrayOfString.length;
      for (int k = 0; k < j; k++)
        if (!arrayOfString[k].equals("0.0"))
          i++;
    }
  }

  public final long z()
  {
    int i = 0;
    String str = this.c.getString("battery_power_record", null);
    if (str == null);
    Long localLong;
    for (long l = 0L; ; l = localLong.longValue() / i)
    {
      return l;
      int j = this.c.getInt("battery_power_record_index", 0);
      String[] arrayOfString = str.split(",");
      localLong = Long.valueOf(0L);
      for (int k = 30; k != 30 - arrayOfString.length; k--)
      {
        localLong = Long.valueOf(localLong.longValue() + Long.parseLong(arrayOfString[j]) * k);
        j = (j + 29) % 30;
        i += k;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     r
 * JD-Core Version:    0.6.2
 */