import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build.VERSION;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.utils.Base64;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ho
{
  public static int a = 85;
  private static ho c = null;
  public boolean b = false;
  private Context d = null;
  private SharedPreferences e;
  private SharedPreferences.Editor f;
  private String g = "last_clear_icon_cache_time";
  private String h = "last_clear_ad_cache_time";
  private boolean i = false;

  private ho(Context paramContext)
  {
    this.d = paramContext;
    this.e = this.d.getSharedPreferences("SettingInfo", 0);
    this.f = this.e.edit();
  }

  private String P(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.getBytes("gbk");
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte1 != null)
        paramString = Base64.encodeToString(TccCryptor.encrypt(this.d, arrayOfByte1, null), 0);
      return paramString;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private String Q(String paramString)
  {
    byte[] arrayOfByte1 = Base64.decode(paramString, 0);
    try
    {
      byte[] arrayOfByte3 = TccCryptor.decrypt(this.d, arrayOfByte1, null);
      arrayOfByte2 = arrayOfByte3;
    }
    catch (Exception localException)
    {
      try
      {
        while (true)
        {
          String str1 = new String(arrayOfByte2, "gbk");
          str2 = str1;
          if (str2 != null)
            paramString = str2;
          return paramString;
          localException = localException;
          localException.printStackTrace();
          byte[] arrayOfByte2 = null;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          String str2 = null;
      }
    }
  }

  public static ho a()
  {
    if (c == null);
    try
    {
      if (c == null)
        c = new ho(QQPimApplication.a());
      return c;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String[] au()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = new hg().a;
    return arrayOfString;
  }

  private long dR()
  {
    try
    {
      long l = this.e.getLong("secure_service_time", 0L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String A()
  {
    return this.e.getString("secure_message_content", this.d.getResources().getString(2131428585));
  }

  public final void A(int paramInt)
  {
    this.f.putInt("PrivacyLoginPasswordType", paramInt).commit();
  }

  public final void A(long paramLong)
  {
    this.f.putLong("report_property_valid_end_time", paramLong).commit();
  }

  public final void A(String paramString)
  {
    this.f.putString("sim_card_info_province", paramString).commit();
  }

  public final void A(boolean paramBoolean)
  {
    this.f.putBoolean("notificationbar_remind", paramBoolean).commit();
  }

  public final String B()
  {
    return this.e.getString("secure_message_title", this.d.getResources().getString(2131428445));
  }

  public final void B(int paramInt)
  {
    this.f.putInt("desk_assistance_position_x", paramInt).commit();
  }

  public final void B(long paramLong)
  {
    this.f.putLong("last_ram_percent_after_accelerate", paramLong).commit();
  }

  public final void B(String paramString)
  {
    this.f.putString("sim_card_info_city", paramString).commit();
  }

  public final void B(boolean paramBoolean)
  {
    this.f.putInt("pickproof_qq_bind_guide", 3).commit();
    this.f.putBoolean("pickproof_new", paramBoolean).commit();
  }

  public final String C()
  {
    return this.e.getString("secure_call_notice_body", this.d.getResources().getString(2131428586));
  }

  public final void C(int paramInt)
  {
    if ((paramInt > 100) || (paramInt < 0));
    while (true)
    {
      return;
      this.f.putInt("desk_assistance_ram_useage_warning_percentage", paramInt).commit();
    }
  }

  public final void C(long paramLong)
  {
    this.f.putLong("ram_not_enough_twenty_percent_dialog_time", paramLong).commit();
  }

  public final void C(String paramString)
  {
    this.f.putString("sim_card_info_carry", paramString).commit();
  }

  public final void C(boolean paramBoolean)
  {
    this.f.putBoolean("pickproof_lock_new", paramBoolean).commit();
  }

  public final void D(int paramInt)
  {
    this.f.putInt("desk_assistance_position_y", paramInt).commit();
  }

  public final void D(long paramLong)
  {
    this.f.putLong("screen_on_report_time", paramLong).commit();
  }

  public final void D(String paramString)
  {
    this.f.putString("sim_card_info_brand", paramString).commit();
  }

  public final void D(boolean paramBoolean)
  {
    this.f.putBoolean("pickproof_sim_lock_new", paramBoolean).commit();
  }

  public final boolean D()
  {
    return this.e.getBoolean("secure_contact_add_guide_show", false);
  }

  public final void E()
  {
    this.f.putBoolean("secure_contact_add_guide_show", true).commit();
  }

  public final void E(int paramInt)
  {
    this.f.putInt("auto_report_intelligent_sms_max", paramInt).commit();
  }

  public final void E(long paramLong)
  {
    this.f.putLong("SCREEN_OFF_REPORT_TIME", paramLong).commit();
  }

  public final void E(String paramString)
  {
    this.f.putString("micro_blog_login_account", paramString).commit();
  }

  public final void E(boolean paramBoolean)
  {
    this.f.putBoolean("pickproof_urgent_contact_notify", paramBoolean).commit();
  }

  public final String F()
  {
    return this.e.getString("secure_call_notice_title", this.d.getResources().getString(2131428445));
  }

  public final void F(int paramInt)
  {
    this.f.putInt("auto_report_intelligent_sms_count", paramInt).commit();
  }

  public final void F(String paramString)
  {
    this.f.putString("not_warn_version", paramString).commit();
  }

  public final void F(boolean paramBoolean)
  {
    this.f.putBoolean("screen_service", paramBoolean).commit();
  }

  public final int G()
  {
    return this.e.getInt("unread_call_logs", 0);
  }

  public final void G(int paramInt)
  {
    if (paramInt > 0)
      this.f.putInt("report_property_single_report_size", paramInt).commit();
  }

  public final void G(String paramString)
  {
    this.f.putString("unique_device_id", paramString).commit();
  }

  public final void G(boolean paramBoolean)
  {
    this.f.putBoolean("screen_sound", paramBoolean).commit();
  }

  public final void H(int paramInt)
  {
    this.f.putInt("permission_init_ret", paramInt).commit();
  }

  public final void H(String paramString)
  {
    this.f.putString("qqphonebook_tips_info", paramString).commit();
  }

  public final void H(boolean paramBoolean)
  {
    this.f.putBoolean("PrivacyLockSwitch", paramBoolean).commit();
  }

  public final boolean H()
  {
    return this.e.getBoolean("first_block", true);
  }

  public final void I()
  {
    this.f.putBoolean("first_block", false).commit();
  }

  public final void I(int paramInt)
  {
    this.f.putInt("notication_block_init_ret", paramInt).commit();
  }

  public final void I(String paramString)
  {
    this.f.putString("qqphonebook_tips_title", paramString).commit();
  }

  public final void I(boolean paramBoolean)
  {
    this.f.putBoolean("desk_assis_window", paramBoolean).commit();
  }

  public final int J()
  {
    return this.e.getInt("last_intercept_type", 0);
  }

  public final void J(int paramInt)
  {
    this.f.putInt("last_ram_percent_before_accelerate", paramInt).commit();
  }

  public final void J(String paramString)
  {
    this.f.putString("qqphonebook_download_url", paramString).commit();
  }

  public final void J(boolean paramBoolean)
  {
    this.f.putBoolean("rocket_sound_open", paramBoolean).commit();
  }

  public final int K()
  {
    return this.e.getInt("month_sms_blocking_counter", 0);
  }

  public final void K(String paramString)
  {
    this.f.putString("auto_report_intelligent_sms_rules", paramString).commit();
  }

  public final void K(boolean paramBoolean)
  {
    this.f.putBoolean("face_verify_switch", paramBoolean).commit();
  }

  public final int L()
  {
    return this.e.getInt("month_call_blocking_counter", 0);
  }

  public final void L(String paramString)
  {
    if (paramString == null)
      paramString = "";
    this.f.putString("high_property_priority_keyword", paramString).commit();
  }

  public final void L(boolean paramBoolean)
  {
    this.f.putBoolean("is_show_seal", paramBoolean).commit();
  }

  public final int M()
  {
    return this.e.getInt("month_blocking_mark", -2147483648);
  }

  public final void M(String paramString)
  {
    SharedPreferences.Editor localEditor = this.d.getSharedPreferences("double_call_ignore_map", 0).edit();
    localEditor.putString(fu.f(fu.a(paramString)), "");
    localEditor.commit();
  }

  public final void M(boolean paramBoolean)
  {
    this.f.putBoolean("auto_report_intelligent_sms_flag", paramBoolean).commit();
  }

  public final int N()
  {
    return this.e.getInt("unread_secure_call_logs", 0);
  }

  public final void N(boolean paramBoolean)
  {
    this.f.putBoolean("auto_report_intelligent_sms_filter_content_flag", paramBoolean).commit();
  }

  public final boolean N(String paramString)
  {
    String str = this.d.getSharedPreferences("double_call_ignore_map", 0).getString(fu.f(fu.a(paramString)), null);
    boolean bool = false;
    if (str != null)
      bool = true;
    return bool;
  }

  public final void O(String paramString)
  {
    this.f.putString("SIM_ADPT_MOD", paramString).commit();
  }

  public final void O(boolean paramBoolean)
  {
    this.f.putBoolean("NotificationAdBlockServiceSwitch", paramBoolean).commit();
  }

  public final boolean O()
  {
    return this.e.getBoolean("service_icon_show", di.b().g());
  }

  public final void P(boolean paramBoolean)
  {
    this.f.putBoolean("website_check_open", paramBoolean).commit();
  }

  public final boolean P()
  {
    return this.e.getBoolean("must_update_version", false);
  }

  public final void Q()
  {
    this.f.putBoolean("must_update_version", false).commit();
  }

  public final void Q(boolean paramBoolean)
  {
    this.f.putBoolean("update_database_automatic_in_wifi", paramBoolean).commit();
  }

  public final int R()
  {
    di.b();
    return this.e.getInt("customize_filte_mode1", 127);
  }

  public final void R(boolean paramBoolean)
  {
    this.f.putBoolean("update_database_automatic_in_wifi_tips_need", paramBoolean).commit();
  }

  public final int S()
  {
    return this.e.getInt("app_code_version", -1);
  }

  public final void S(boolean paramBoolean)
  {
    this.f.putBoolean("startupappscanenable", paramBoolean).commit();
  }

  public final void T(boolean paramBoolean)
  {
    this.f.putBoolean("had_show_new_version_dialog", false).commit();
  }

  public final boolean T()
  {
    return this.e.getBoolean("is_adjedge_traffic", true);
  }

  public final void U()
  {
    this.f.putBoolean("is_adjedge_traffic", false).commit();
  }

  public final void U(boolean paramBoolean)
  {
    this.f.putBoolean("is_mobile_antithief_immediatly_open_withqq", paramBoolean).commit();
  }

  public final int V()
  {
    return this.e.getInt("app_code_old_version", -1);
  }

  public final void V(boolean paramBoolean)
  {
    this.f.putBoolean("is_mobile_antithief_have_no_qq_open_old", paramBoolean).commit();
  }

  public final void W(boolean paramBoolean)
  {
    this.f.putBoolean("file_safe_all_sdcards_update_finish", paramBoolean).commit();
  }

  public final boolean W()
  {
    return this.e.getBoolean("helper_tips_done", false);
  }

  public final void X()
  {
    this.f.putBoolean("helper_tips_done", true).commit();
  }

  public final int Y()
  {
    return this.e.getInt("last_date", -1);
  }

  public final int Z()
  {
    return this.e.getInt("toast_coordinate", -1);
  }

  public final void a(int paramInt)
  {
    this.f.putInt("FilterMod", paramInt).commit();
  }

  public final void a(long paramLong)
  {
    try
    {
      this.f.putLong("secure_service_open_time", paramLong).commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(ho.a parama)
  {
    this.f.putInt("desk_assistance_min_window_style", parama.ordinal()).commit();
  }

  public final void a(String paramString)
  {
    this.f.putString("autoReplyContent", paramString).commit();
  }

  public final void a(String paramString, int paramInt)
  {
    this.f.putInt(paramString, paramInt).commit();
  }

  public final void a(String paramString, long paramLong)
  {
    this.f.putLong(paramString, paramLong).commit();
  }

  public final void a(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.d.getSharedPreferences("qqwebsite", 0).edit();
    localEditor.putString("login_number", paramString1);
    localEditor.putString("login_key", paramString2);
    localEditor.commit();
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    this.f.putBoolean(paramString, paramBoolean).commit();
  }

  public final void a(ArrayList<String> paramArrayList)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramArrayList.iterator();
      String str3;
      for (String str1 = ""; localIterator.hasNext(); str1 = str3 + ";")
      {
        String str2 = (String)localIterator.next();
        str3 = str1 + str2;
      }
      str1.substring(0, -1 + str1.length());
      this.f.putString("hot_word_history", str1).commit();
    }
  }

  public final void a(List<String> paramList)
  {
    int j = paramList.size();
    Object localObject = "";
    int k = 0;
    if (k < j)
    {
      String str1 = (String)paramList.get(k);
      if (k == j - 1);
      for (String str2 = (String)localObject + str1; ; str2 = (String)localObject + str1 + ";")
      {
        k++;
        localObject = str2;
        break;
      }
    }
    this.f.putString("recycle_app_path", (String)localObject).commit();
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.f.putBoolean("OpenStatus", paramBoolean).commit();
      if (paramBoolean)
        if (h() == 0L)
          a(System.currentTimeMillis());
      while (true)
      {
        op.a().d();
        return;
        g();
        a(0L);
      }
    }
    finally
    {
    }
  }

  public final long aA()
  {
    return this.e.getLong("report_usage_info_time", 0L);
  }

  public final boolean aB()
  {
    return this.e.getBoolean("auto_cloud_scan", true);
  }

  public final boolean aC()
  {
    return this.e.getBoolean("install_app_cloud_scan", false);
  }

  public final boolean aD()
  {
    return this.i;
  }

  public final void aE()
  {
    this.i = true;
  }

  public final boolean aF()
  {
    return this.e.getBoolean("auto_report_sms", true);
  }

  public final boolean aG()
  {
    return this.e.getBoolean("wifi_approve_detect", true);
  }

  public final boolean aH()
  {
    return this.e.getBoolean("first_report_sms", true);
  }

  public final void aI()
  {
    this.f.putBoolean("first_report_sms", false).commit();
  }

  public final boolean aJ()
  {
    return this.e.getBoolean("first_report_calllog", true);
  }

  public final void aK()
  {
    this.f.putBoolean("first_report_calllog", false).commit();
  }

  public final long aL()
  {
    return this.e.getLong("get_last_get_tips_time", 0L);
  }

  public final long aM()
  {
    return this.e.getLong("update_database_automatic_in_wifi_tips_time", 0L);
  }

  public final boolean aN()
  {
    return this.e.getBoolean("get_tips_success", false);
  }

  public final long aO()
  {
    return this.e.getLong("next_get_tips_time", 0L);
  }

  public final void aP()
  {
    this.f.putBoolean("force_update_soft", true).commit();
  }

  public final boolean aQ()
  {
    return this.e.getBoolean("last_update_checked", false);
  }

  public final String aR()
  {
    return this.e.getString("last_update_soft_version", null);
  }

  public final String aS()
  {
    return this.e.getString("force_update_soft_version", null);
  }

  public final String aT()
  {
    return this.e.getString("force_update_soft_text", null);
  }

  public final void aU()
  {
    this.f.putBoolean("first_run_one_key_check", false).commit();
  }

  public final boolean aV()
  {
    return this.e.getBoolean("first_run_one_key_check", true);
  }

  public final void aW()
  {
    this.f.putBoolean("first_enter_sync_assistant", false).commit();
  }

  public final boolean aX()
  {
    return this.e.getBoolean("first_enter_sync_assistant", true);
  }

  public final boolean aY()
  {
    return this.e.getBoolean("second_enter_sync_assistant", false);
  }

  public final void aZ()
  {
    this.f.putBoolean("first_enter_sync_assistant_and_open_wifi", false).commit();
  }

  public final int aa()
  {
    return this.e.getInt("TrafficMonitoring_coordinate", -1);
  }

  public final int ab()
  {
    int j = 1;
    int k = this.e.getInt("style ui", -1);
    PackageManager localPackageManager;
    if (k == -1)
      localPackageManager = this.d.getPackageManager();
    while (true)
    {
      try
      {
        ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo("com.htc.launcher", 0);
        if (localApplicationInfo != null)
        {
          m = j;
          if (m != 0)
          {
            this.f.putInt("style ui", j).commit();
            return j;
          }
        }
        else
        {
          m = 0;
          continue;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        int m = 0;
        continue;
        j = 0;
        continue;
      }
      j = k;
    }
  }

  public final int ac()
  {
    return this.e.getInt("short_call", 0);
  }

  public final int ad()
  {
    return this.e.getInt("check_msg_log_count", 0);
  }

  public final boolean ae()
  {
    return this.e.getBoolean("show_block_icon", true);
  }

  public final boolean af()
  {
    return this.e.getBoolean("smslog_show_detail", false);
  }

  public final boolean ag()
  {
    return this.e.getBoolean("registered_in_server", false);
  }

  public final boolean ah()
  {
    return this.e.getBoolean("sync_backup_all_tips", true);
  }

  public final boolean ai()
  {
    return this.e.getBoolean("sync_backup_change_tips", true);
  }

  public final boolean aj()
  {
    return this.e.getBoolean("sync_restore_all_tips", true);
  }

  public final boolean ak()
  {
    return this.e.getBoolean("sync_restore_change_tips", true);
  }

  public final long al()
  {
    return this.e.getLong("sync_backup_contactlist_time", 0L);
  }

  public final boolean am()
  {
    return this.e.getBoolean("sync_backup_contactlist_tips", true);
  }

  public final boolean an()
  {
    return this.e.getBoolean("first_visit_secure_space", true);
  }

  public final void ao()
  {
    this.f.putBoolean("first_visit_secure_space", false).commit();
  }

  public final long ap()
  {
    return this.e.getLong("data_back_secure_sms_change_time", 0L);
  }

  public final long aq()
  {
    return this.e.getLong("data_back_secure_contact_change_time", 0L);
  }

  public final void ar()
  {
    this.f.putBoolean("show_about_dialog", false).commit();
  }

  public final boolean as()
  {
    return this.e.getBoolean("show_about_dialog", true);
  }

  public final String at()
  {
    return this.e.getString("ts_useroperated_app_list", "");
  }

  public final int av()
  {
    return this.e.getInt("secure_call_mode", 0);
  }

  public final int aw()
  {
    return this.e.getInt("secure_call_notice_mode_normal", 1);
  }

  public final int ax()
  {
    return this.e.getInt("secure_call_notice_mode_block", 2);
  }

  public final boolean ay()
  {
    return this.e.getBoolean("shortcut_installed", false);
  }

  public final void az()
  {
    this.f.putBoolean("shortcut_installed", true).commit();
  }

  public final int b()
  {
    return this.e.getInt("FilterMod", 0);
  }

  public final void b(int paramInt)
  {
    this.f.putInt("HoldOffMod", paramInt).commit();
  }

  public final void b(long paramLong)
  {
    this.f.putLong("sync_backup_contactlist_time", paramLong).commit();
  }

  public final void b(String paramString)
  {
    this.f.putString("after_secure_blocking_reply_sms", paramString).commit();
  }

  public final void b(boolean paramBoolean)
  {
    this.f.putBoolean("autoReplyStatus", paramBoolean).commit();
  }

  public final int bA()
  {
    return this.e.getInt("tip_over_time", 1);
  }

  public final int bB()
  {
    return this.e.getInt("operator_over_time", 0);
  }

  public final String bC()
  {
    return this.e.getString("ignore_auto_boot_list", "");
  }

  public final boolean bD()
  {
    return this.e.getBoolean("pickproof_new", false);
  }

  public final String bE()
  {
    String str1 = this.e.getString("pickproof_mobile_new", null);
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = Q(str1);
    }
  }

  public final String bF()
  {
    String str1 = this.e.getString("pickproof_pwd_new", null);
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = Q(str1);
    }
  }

  public final boolean bG()
  {
    return this.e.getBoolean("pickproof_lock_new", false);
  }

  public final boolean bH()
  {
    return this.e.getBoolean("pickproof_sim_lock_new", false);
  }

  public final boolean bI()
  {
    return this.e.getBoolean("pickproof_urgent_contact_notify", false);
  }

  public final String bJ()
  {
    return this.e.getString("pickproof_imsi_new", null);
  }

  public final boolean bK()
  {
    return this.e.getBoolean("screen_service", false);
  }

  public final boolean bL()
  {
    return this.e.getBoolean("screen_sound", true);
  }

  public final int bM()
  {
    return this.e.getInt("screen_style", 0);
  }

  public final String bN()
  {
    return this.e.getString("screen_save_location", dx.i);
  }

  public final String bO()
  {
    return this.e.getString("screen_last_location", "");
  }

  public final int bP()
  {
    return this.e.getInt("screen_format", 0);
  }

  public final int bQ()
  {
    return this.e.getInt("screen_quality", 0);
  }

  public final long bR()
  {
    return this.e.getLong(this.g, 0L);
  }

  public final long bS()
  {
    return this.e.getLong(this.h, 0L);
  }

  public final String bT()
  {
    String str1 = this.e.getString("pickproof_name_new", null);
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = Q(str1);
    }
  }

  public final String bU()
  {
    return this.e.getString("pickproof_safephone_name_new", null);
  }

  public final int bV()
  {
    return this.e.getInt("pickproof_qq_bind_guide", 0);
  }

  public final void bW()
  {
    this.f.putBoolean("show_data_clear_tips_dialog", false).commit();
  }

  public final boolean bX()
  {
    return this.e.getBoolean("show_data_clear_tips_dialog", true);
  }

  public final void bY()
  {
    this.f.putBoolean("show_software_move_tips_dialog", false).commit();
  }

  public final boolean bZ()
  {
    return this.e.getBoolean("show_software_move_tips_dialog", true);
  }

  public final boolean ba()
  {
    return this.e.getBoolean("first_enter_sync_assistant_and_open_wifi", true);
  }

  public final String bb()
  {
    return this.e.getString("private_space_name", this.d.getString(2131427988));
  }

  public final int bc()
  {
    return this.e.getInt("private_space_icon", 0);
  }

  public final boolean bd()
  {
    return this.e.getBoolean("private_space_call_notification", true);
  }

  public final String be()
  {
    return this.e.getString("private_space_fake_password", "");
  }

  public final int bf()
  {
    return this.e.getInt("sync_last_login_type", 0);
  }

  public final String bg()
  {
    return this.e.getString("sync_default_login_account", "");
  }

  public final boolean bh()
  {
    return this.d.getSharedPreferences("qqwebsite", 0).getBoolean("qqwebsite_auto_logout", false);
  }

  public final long bi()
  {
    return this.e.getLong("last_sync_backup_time", 0L);
  }

  public final long bj()
  {
    return this.e.getLong("last_show_sync_notification_time", 0L);
  }

  public final long bk()
  {
    return this.e.getLong("cache_category_time", 0L);
  }

  public final long bl()
  {
    return this.e.getLong("game_cache_category_time", 0L);
  }

  public final long bm()
  {
    return this.e.getLong("cache_special_category_time", 0L);
  }

  public final long bn()
  {
    return this.e.getLong("cache_special_category_time_from_server", 0L);
  }

  public final long bo()
  {
    return this.e.getLong("cache_mysoftware_update_time", 0L);
  }

  public final ArrayList<String> bp()
  {
    String str = this.e.getString("hot_word_history", null);
    Object localObject = null;
    if (str == null);
    while (true)
    {
      return localObject;
      String[] arrayOfString = str.split(";");
      localObject = new ArrayList();
      int j = arrayOfString.length;
      for (int k = 0; k < j; k++)
        ((ArrayList)localObject).add(arrayOfString[k]);
    }
  }

  public final long bq()
  {
    return this.e.getLong("cache_expiration_day", 86400000L);
  }

  public final long br()
  {
    return this.e.getLong("cache_day_choice_time", 0L);
  }

  public final long bs()
  {
    return this.e.getLong("cache_ranking_time", 0L);
  }

  public final boolean bt()
  {
    return this.e.getBoolean("first_to_handup_and_reply_new", true);
  }

  public final void bu()
  {
    this.f.putBoolean("first_to_handup_and_reply_new", false).commit();
  }

  public final boolean bv()
  {
    return this.e.getBoolean("show_get_root_dialog", true);
  }

  public final void bw()
  {
    this.f.putBoolean("show_get_root_dialog", false).commit();
  }

  public final List<String> bx()
  {
    String str = this.e.getString("recycle_app_path", "");
    ArrayList localArrayList = new ArrayList();
    if (str.equals(""));
    while (true)
    {
      return localArrayList;
      String[] arrayOfString = str.split(";");
      int j = arrayOfString.length;
      for (int k = 0; k < j; k++)
        localArrayList.add(arrayOfString[k]);
    }
  }

  public final boolean by()
  {
    return this.e.getBoolean("permission_monitor", false);
  }

  public final boolean bz()
  {
    return this.e.getBoolean("notificationbar_remind", true);
  }

  public final int c()
  {
    return this.e.getInt("HoldOffMod", 0);
  }

  public final void c(int paramInt)
  {
    this.f.putInt("secure_attention_mode", paramInt).commit();
  }

  public final void c(long paramLong)
  {
    this.f.putLong("data_back_secure_sms_change_time", paramLong).commit();
  }

  public final void c(String paramString)
  {
    this.f.putString("private_space_password", paramString).commit();
  }

  public final void c(boolean paramBoolean)
  {
    this.f.putBoolean("OutOrInCallShower", paramBoolean).commit();
  }

  public final boolean cA()
  {
    if (this.e.getInt("desk_assistance_ram_useage_warning_percentage", -1) < 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int cB()
  {
    return this.e.getInt("desk_assistance_position_y", gw.b / 5);
  }

  public final long cC()
  {
    return this.e.getLong("time_one_key_analysis", 0L);
  }

  public final String cD()
  {
    return this.e.getString("not_warn_version", null);
  }

  public final boolean cE()
  {
    return this.e.getBoolean("first_show_face_verify_introduce", true);
  }

  public final void cF()
  {
    this.f.putBoolean("first_show_face_verify_introduce", false).commit();
  }

  public final void cG()
  {
    this.f.putBoolean("first_show_privacy_introduce", false).commit();
  }

  public final boolean cH()
  {
    return this.e.getBoolean("face_verify_switch", false);
  }

  public final String cI()
  {
    return this.e.getString("unique_device_id", "");
  }

  public final boolean cJ()
  {
    int j = 1 + this.e.getInt("optimize_white_list_tips_request_time", 0);
    this.f.putInt("optimize_white_list_tips_request_time", j).commit();
    int k = this.e.getInt("optimize_white_list_tips_request_time", 0);
    boolean bool = false;
    if (k == 2);
    while (true)
    {
      return bool;
      bool = true;
    }
  }

  public final void cK()
  {
    this.f.putBoolean("optimize_white_list_setting_tips", true).commit();
  }

  public final boolean cL()
  {
    return this.e.getBoolean("not_push_qqphonebook", true);
  }

  public final void cM()
  {
    this.f.putBoolean("not_push_qqphonebook", false).commit();
  }

  public final boolean cN()
  {
    return this.e.getBoolean("is_show_seal", true);
  }

  public final String cO()
  {
    return this.e.getString("qqphonebook_tips_info", "");
  }

  public final String cP()
  {
    return this.e.getString("qqphonebook_tips_title", "");
  }

  public final String cQ()
  {
    return this.e.getString("qqphonebook_download_url", "");
  }

  public final long cR()
  {
    return this.e.getLong("softmaket_hotword_last_refresh_timev2", 0L);
  }

  public final long cS()
  {
    return this.e.getLong("time_software_update_last_notify", 0L);
  }

  public final void cT()
  {
    this.f.putLong("time_software_update_last_notify", System.currentTimeMillis()).commit();
  }

  public final boolean cU()
  {
    return this.e.getBoolean("auto_report_intelligent_sms_flag", false);
  }

  public final String cV()
  {
    return this.e.getString("auto_report_intelligent_sms_rules", "");
  }

  public final int cW()
  {
    return this.e.getInt("auto_report_intelligent_sms_max", 10);
  }

  public final long cX()
  {
    return this.e.getLong("auto_report_intelligent_sms_TIME", 0L);
  }

  public final long cY()
  {
    return this.e.getLong("last_wifi_connected_time", 0L);
  }

  public final int cZ()
  {
    return this.e.getInt("auto_report_intelligent_sms_count", 0);
  }

  public final long ca()
  {
    return this.e.getLong("first_run_time", 0L);
  }

  public final boolean cb()
  {
    return this.e.getBoolean("software_traffic_ranking_initialized", false);
  }

  public final void cc()
  {
    this.f.putBoolean("software_traffic_ranking_initialized", true).commit();
  }

  public final String cd()
  {
    return this.e.getString("FileSafePassword", "");
  }

  public final boolean ce()
  {
    return this.e.getBoolean("PrivacySafeQQFirstSet", true);
  }

  public final void cf()
  {
    this.f.putBoolean("PrivacySafeQQFirstSet", false).commit();
  }

  public final boolean cg()
  {
    return this.e.getBoolean("PrivacySafeQQFloatingWindowFirstShow", true);
  }

  public final void ch()
  {
    this.f.putBoolean("PrivacySafeQQFloatingWindowFirstShow", false).commit();
  }

  public final String ci()
  {
    return this.e.getString("PrivacySafeQQ", "");
  }

  public final int cj()
  {
    return this.e.getInt("PrivacyLoginPasswordType", 0);
  }

  public final void ck()
  {
    this.f.putInt("PrivacyPasswordType", 0).commit();
  }

  public final int cl()
  {
    return this.e.getInt("PrivacyPasswordType", 1);
  }

  public final boolean cm()
  {
    return this.e.getBoolean("PrivacyPasswordStealthPattern", false);
  }

  public final boolean cn()
  {
    return this.e.getBoolean("PrivacyPasswordInputVibrate", false);
  }

  public final boolean co()
  {
    return this.e.getBoolean("PrivacyLockSwitch", true);
  }

  public final void cp()
  {
    this.f.putBoolean("FirstClosePrivacyLock", false).commit();
  }

  public final boolean cq()
  {
    return this.e.getBoolean("FirstClosePrivacyLock", true);
  }

  public final String cr()
  {
    return this.e.getString("sim_card_info_province", null);
  }

  public final String cs()
  {
    return this.e.getString("sim_card_info_city", null);
  }

  public final String ct()
  {
    return this.e.getString("sim_card_info_carry", null);
  }

  public final String cu()
  {
    return this.e.getString("sim_card_info_brand", null);
  }

  public final boolean cv()
  {
    return this.e.getBoolean("desk_assis_window", di.b().h());
  }

  public final boolean cw()
  {
    return this.e.getBoolean("rocket_sound_open", true);
  }

  public final String cx()
  {
    return this.e.getString("micro_blog_login_account", null);
  }

  public final int cy()
  {
    return this.e.getInt("desk_assistance_position_x", gw.a);
  }

  public final int cz()
  {
    int j = this.e.getInt("desk_assistance_ram_useage_warning_percentage", -1);
    if (j < 0)
      j = a;
    return j;
  }

  public final void d(int paramInt)
  {
    this.f.putInt("unread_call_logs", paramInt).commit();
    if (paramInt > 0)
      this.f.putInt("last_intercept_type", 2).commit();
  }

  public final void d(long paramLong)
  {
    this.f.putLong("data_back_secure_contact_change_time", paramLong).commit();
  }

  public final void d(String paramString)
  {
    this.f.putString("secure_message_content", paramString).commit();
  }

  public final void d(boolean paramBoolean)
  {
    this.f.putBoolean("private_secure", paramBoolean).commit();
  }

  public final boolean d()
  {
    return this.e.getBoolean("first_set_custom_mod", true);
  }

  public final ho.a dA()
  {
    int j = this.e.getInt("desk_assistance_min_window_style", ho.a.a.ordinal());
    return ho.a.values()[j];
  }

  public final int dB()
  {
    return this.e.getInt("last_ram_percent_before_accelerate", -1);
  }

  public final long dC()
  {
    return this.e.getLong("last_ram_percent_after_accelerate", -1L);
  }

  public final void dD()
  {
    this.f.putLong("last_ram_percent_after_accelerate", -1L).commit();
  }

  public final boolean dE()
  {
    return this.e.getBoolean("is_mobile_antithief_immediatly_open_withqq", false);
  }

  public final boolean dF()
  {
    return this.e.getBoolean("is_mobile_antithief_have_no_qq_open_old", false);
  }

  public final boolean dG()
  {
    int j = Build.VERSION.SDK_INT;
    if (this.e.getInt("last_running_sdk_version", -1) != j)
    {
      this.f.putInt("last_running_sdk_version", j);
      this.f.putBoolean("file_safe_all_sdcards_update_finish", false).commit();
    }
    return this.e.getBoolean("file_safe_all_sdcards_update_finish", false);
  }

  public final void dH()
  {
    this.f.putBoolean("used_clean_running_software_white_list", true).commit();
  }

  public final boolean dI()
  {
    return this.e.getBoolean("used_clean_running_software_white_list", false);
  }

  public final void dJ()
  {
    this.f.putBoolean("IS_FIRST_TIME_SHOW_CONNECT_COMPUTER_MENU", false).commit();
  }

  public final boolean dK()
  {
    return this.e.getBoolean("IS_FIRST_TIME_SHOW_CONNECT_COMPUTER_MENU", true);
  }

  public final void dL()
  {
    this.f.putBoolean("is_month_update_getdata_sucess", true).commit();
  }

  public final long dM()
  {
    return this.e.getLong("ram_not_enough_twenty_percent_dialog_time", 0L);
  }

  public final long dN()
  {
    return this.e.getLong("screen_on_report_time", 0L);
  }

  public final long dO()
  {
    return this.e.getLong("SCREEN_OFF_REPORT_TIME", 0L);
  }

  public final void dP()
  {
    this.f.putBoolean("is_click_benchmark", true).commit();
  }

  public final boolean dQ()
  {
    return this.e.getBoolean("is_click_benchmark", false);
  }

  public final boolean da()
  {
    return this.e.getBoolean("auto_report_intelligent_sms_filter_content_flag", false);
  }

  public final ArrayList<String> db()
  {
    String str = this.e.getString("high_property_priority_keyword", "");
    ArrayList localArrayList = new ArrayList();
    if ((str != null) && (!"".equals(str)))
    {
      String[] arrayOfString = str.split("\\|");
      int j = arrayOfString.length;
      for (int k = 0; k < j; k++)
        localArrayList.add(arrayOfString[k]);
    }
    return localArrayList;
  }

  public final int dc()
  {
    return this.e.getInt("report_property_single_report_size", 10);
  }

  public final long dd()
  {
    return this.e.getLong("report_property_valid_end_time", 0L);
  }

  public final boolean de()
  {
    return this.e.getBoolean("use_rocket_speed_up_flag", false);
  }

  public final void df()
  {
    this.f.putBoolean("use_rocket_speed_up_flag", true).commit();
  }

  public final boolean dg()
  {
    return this.e.getBoolean("showed_change_setting_pandel_flag", false);
  }

  public final void dh()
  {
    this.f.putBoolean("showed_change_setting_pandel_flag", true).commit();
  }

  public final boolean di()
  {
    return this.e.getBoolean("NotificationAdBlockServiceSwitch", true);
  }

  public final boolean dj()
  {
    return this.e.getBoolean("UserBlockNoticationFirstTime", true);
  }

  public final void dk()
  {
    this.f.putBoolean("UserBlockNoticationFirstTime", false).commit();
  }

  public final boolean dl()
  {
    return this.e.getBoolean("ShowNoticationNewEnterTag", false);
  }

  public final void dm()
  {
    this.f.putBoolean("ShowNoticationNewEnterTag", false).commit();
  }

  public final void dn()
  {
    this.f.putBoolean("updatepermitabfornotication", true).commit();
  }

  public final boolean jdMethod_do()
  {
    return this.e.getBoolean("updatepermitabfornotication", false);
  }

  public final boolean dp()
  {
    return this.e.getBoolean("website_check_open", true);
  }

  public final boolean dq()
  {
    return this.e.getBoolean("update_database_automatic_in_wifi", true);
  }

  public final boolean dr()
  {
    return this.e.getBoolean("update_database_automatic_in_wifi_tips_need", false);
  }

  public final boolean ds()
  {
    return this.e.getBoolean("startupappscanenable", true);
  }

  public final boolean dt()
  {
    return this.e.getBoolean("color_egg_weibo", true);
  }

  public final void du()
  {
    this.f.putBoolean("color_egg_weibo", false).commit();
  }

  public final void dv()
  {
    this.f.putBoolean("IS_DUAL", true).commit();
  }

  public final void dw()
  {
    this.f.putBoolean("DUAL_MOD", true).commit();
  }

  public final String dx()
  {
    return this.e.getString("SIM_ADPT_MOD", null);
  }

  public final int dy()
  {
    return this.e.getInt("permission_init_ret", -100);
  }

  public final int dz()
  {
    return this.e.getInt("notication_block_init_ret", -100);
  }

  public final void e()
  {
    this.f.putBoolean("first_set_custom_mod", false).commit();
  }

  public final void e(int paramInt)
  {
    this.f.putInt("month_sms_blocking_counter", paramInt).commit();
    if (paramInt > 0)
      this.f.putInt("last_intercept_type", 1).commit();
  }

  public final void e(long paramLong)
  {
    this.f.putLong("data_back_secure_sms_backup_time", paramLong).commit();
  }

  public final void e(String paramString)
  {
    this.f.putString("secure_message_title", paramString).commit();
  }

  public final void e(boolean paramBoolean)
  {
    this.f.putBoolean("double_call_status", paramBoolean).commit();
  }

  public final void f(int paramInt)
  {
    this.f.putInt("month_call_blocking_counter", paramInt).commit();
  }

  public final void f(long paramLong)
  {
    this.f.putLong("data_back_secure_contact_backup_time", paramLong).commit();
  }

  public final void f(String paramString)
  {
    this.f.putString("secure_call_notice_body", paramString).commit();
  }

  public final void f(boolean paramBoolean)
  {
    this.f.putBoolean("OneRingStatus", paramBoolean).commit();
  }

  public final boolean f()
  {
    return this.e.getBoolean("OpenStatus", true);
  }

  public final void g()
  {
    try
    {
      long l1 = h();
      if (l1 != 0L)
      {
        long l2 = dR();
        long l3 = System.currentTimeMillis() - l1;
        if (l3 > 0L)
          this.f.putLong("secure_service_time", l3 + l2).commit();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void g(int paramInt)
  {
    this.f.putInt("month_blocking_mark", paramInt).commit();
  }

  public final void g(long paramLong)
  {
    this.f.putLong("report_usage_info_time", paramLong).commit();
  }

  public final void g(String paramString)
  {
    this.f.putString("secure_call_notice_title", paramString).commit();
  }

  public final void g(boolean paramBoolean)
  {
    this.f.putBoolean("service_icon_show", paramBoolean).commit();
  }

  public final long h()
  {
    try
    {
      long l = this.e.getLong("secure_service_open_time", 0L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void h(int paramInt)
  {
    this.f.putInt("unread_secure_call_logs", paramInt).commit();
  }

  public final void h(long paramLong)
  {
    this.f.putLong("get_last_get_tips_time", paramLong).commit();
  }

  public final void h(String paramString)
  {
    this.f.putString("ts_useroperated_app_list", paramString).commit();
  }

  public final void h(boolean paramBoolean)
  {
    this.f.putBoolean("show_block_icon", paramBoolean).commit();
  }

  public final String i()
  {
    return this.e.getString("autoReplyContent", this.d.getResources().getString(2131428584));
  }

  public final void i(int paramInt)
  {
    this.f.putInt("customize_filte_mode1", paramInt).commit();
  }

  public final void i(long paramLong)
  {
    this.f.putLong("update_database_automatic_in_wifi_tips_time", paramLong).commit();
  }

  public final void i(String paramString)
  {
    this.f.putString("last_update_soft_version", paramString).commit();
  }

  public final void i(boolean paramBoolean)
  {
    this.f.putBoolean("registered_in_server", paramBoolean).commit();
  }

  public final String j()
  {
    return this.e.getString("after_secure_blocking_reply_sms", this.d.getResources().getString(2131428584));
  }

  public final void j(int paramInt)
  {
    this.f.putInt("app_code_version", paramInt).commit();
  }

  public final void j(long paramLong)
  {
    this.f.putLong("next_get_tips_time", paramLong).commit();
  }

  public final void j(String paramString)
  {
    this.f.putString("force_update_soft_version", paramString).commit();
  }

  public final void j(boolean paramBoolean)
  {
    this.f.putBoolean("sync_backup_all_tips", paramBoolean).commit();
  }

  public final void k(int paramInt)
  {
    this.f.putInt("app_code_old_version", paramInt).commit();
  }

  public final void k(long paramLong)
  {
    this.f.putLong("last_show_sync_notification_time", paramLong).commit();
  }

  public final void k(String paramString)
  {
    this.f.putString("force_update_soft_title", paramString).commit();
  }

  public final void k(boolean paramBoolean)
  {
    this.f.putBoolean("sync_backup_change_tips", paramBoolean).commit();
  }

  public final boolean k()
  {
    return this.e.getBoolean("autoReplyStatus", false);
  }

  public final long l()
  {
    return this.e.getLong("lastUpdateTime", 0L);
  }

  public final void l(int paramInt)
  {
    this.f.putInt("last_date", paramInt).commit();
  }

  public final void l(long paramLong)
  {
    this.f.putLong("last_sync_backup_time", paramLong).commit();
  }

  public final void l(String paramString)
  {
    this.f.putString("force_update_soft_text", paramString).commit();
  }

  public final void l(boolean paramBoolean)
  {
    this.f.putBoolean("sync_restore_all_tips", paramBoolean).commit();
  }

  public final void m()
  {
    this.f.putLong("lastUpdateTime", new Date().getTime()).commit();
  }

  public final void m(int paramInt)
  {
    this.f.putInt("toast_coordinate", paramInt).commit();
  }

  public final void m(long paramLong)
  {
    this.f.putLong("cache_category_time", paramLong).commit();
  }

  public final void m(String paramString)
  {
    this.f.putString("sync_default_login_account", paramString).commit();
  }

  public final void m(boolean paramBoolean)
  {
    this.f.putBoolean("sync_restore_change_tips", paramBoolean).commit();
  }

  public final String n()
  {
    return this.e.getString("private_space_password", "");
  }

  public final void n(int paramInt)
  {
    this.f.putInt("TrafficMonitoring_coordinate", paramInt).commit();
  }

  public final void n(long paramLong)
  {
    this.f.putLong("game_cache_category_time", paramLong).commit();
  }

  public final void n(String paramString)
  {
    this.f.putString("ignore_auto_boot_list", paramString).commit();
  }

  public final void n(boolean paramBoolean)
  {
    this.f.putBoolean("sync_backup_contactlist_tips", paramBoolean).commit();
  }

  public final void o(int paramInt)
  {
    this.f.putInt("short_call", paramInt).commit();
  }

  public final void o(long paramLong)
  {
    this.f.putLong("cache_special_category_time", paramLong).commit();
  }

  public final void o(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      String str = P(paramString);
      this.f.putString("pickproof_mobile_new", str).commit();
    }
  }

  public final void o(boolean paramBoolean)
  {
    this.f.putBoolean("install_app_cloud_scan", paramBoolean).commit();
  }

  public final boolean o()
  {
    return this.e.getBoolean("OutOrInCallShower", di.b().i());
  }

  public final void p(int paramInt)
  {
    this.f.putInt("check_msg_log_count", paramInt).commit();
  }

  public final void p(long paramLong)
  {
    this.f.putLong("cache_special_category_time_from_server", paramLong).commit();
  }

  public final void p(String paramString)
  {
    this.f.putString("pickproof_imsi_new", paramString).commit();
  }

  public final void p(boolean paramBoolean)
  {
    this.f.putBoolean("auto_cloud_scan", paramBoolean).commit();
  }

  public final boolean p()
  {
    return this.e.getBoolean("EavesdropSwitch", true);
  }

  public final int q()
  {
    return this.e.getInt("secure_attention_mode", 5);
  }

  public final void q(int paramInt)
  {
    this.f.putInt("secure_call_mode", paramInt).commit();
  }

  public final void q(long paramLong)
  {
    this.f.putLong("cache_mysoftware_update_time", paramLong).commit();
  }

  public final void q(boolean paramBoolean)
  {
    this.f.putBoolean("auto_report_sms", paramBoolean).commit();
  }

  public final boolean q(String paramString)
  {
    boolean bool1 = false;
    if (paramString == null);
    while (true)
    {
      return bool1;
      String str = this.e.getString("pickproof_cg_sms_send_imsi", null);
      bool1 = false;
      if (str != null)
      {
        int j = str.length();
        bool1 = false;
        if (j > 0)
        {
          boolean bool2 = paramString.equals(str);
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
      }
    }
  }

  public final void r(int paramInt)
  {
    this.f.putInt("secure_call_notice_mode_normal", paramInt).commit();
  }

  public final void r(long paramLong)
  {
    this.f.putLong("cache_day_choice_time", paramLong).commit();
  }

  public final void r(String paramString)
  {
    this.f.putString("pickproof_cg_sms_send_imsi", paramString).commit();
  }

  public final void r(boolean paramBoolean)
  {
    this.f.putBoolean("wifi_approve_detect", paramBoolean).commit();
  }

  public final boolean r()
  {
    return this.e.getBoolean("OneRingStatus", true);
  }

  public final void s()
  {
    this.f.putBoolean("EavesdropSwitch", true).commit();
  }

  public final void s(int paramInt)
  {
    this.f.putInt("secure_call_notice_mode_block", paramInt).commit();
  }

  public final void s(long paramLong)
  {
    this.f.putLong("cache_ranking_time", paramLong).commit();
  }

  public final void s(String paramString)
  {
    this.f.putString("screen_last_location", paramString).commit();
  }

  public final void s(boolean paramBoolean)
  {
    this.f.putBoolean("get_tips_success", paramBoolean).commit();
  }

  public final void t()
  {
    this.f.putBoolean("file_safe_first_init", false).commit();
  }

  public final void t(int paramInt)
  {
    this.f.putInt("sync_last_login_type", paramInt).commit();
  }

  public final void t(long paramLong)
  {
    this.f.putLong(this.g, paramLong).commit();
  }

  public final void t(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      String str = P(paramString);
      this.f.putString("pickproof_name_new", str).commit();
    }
  }

  public final void t(boolean paramBoolean)
  {
    this.f.putBoolean("last_update_checked", paramBoolean).commit();
  }

  public final void u(int paramInt)
  {
    this.f.putInt("tip_over_time", paramInt).commit();
  }

  public final void u(long paramLong)
  {
    this.f.putLong(this.h, paramLong).commit();
  }

  public final void u(String paramString)
  {
    this.f.putString("pickproof_safephone_name_new", paramString).commit();
  }

  public final void u(boolean paramBoolean)
  {
    this.f.putBoolean("second_enter_sync_assistant", paramBoolean).commit();
  }

  public final boolean u()
  {
    return this.e.getBoolean("file_safe_first_init", true);
  }

  public final int v(String paramString)
  {
    return this.e.getInt(paramString, 0);
  }

  public final void v()
  {
    this.f.putBoolean("file_safe_has_restore", true).commit();
  }

  public final void v(int paramInt)
  {
    this.f.putInt("operator_over_time", paramInt).commit();
  }

  public final void v(long paramLong)
  {
    this.f.putLong("first_run_time", paramLong).commit();
  }

  public final void v(boolean paramBoolean)
  {
    this.f.putBoolean("show_notification_bar_icon", paramBoolean).commit();
  }

  public final long w(String paramString)
  {
    return this.e.getLong(paramString, 0L);
  }

  public final void w(int paramInt)
  {
    this.f.putInt("screen_style", paramInt).commit();
  }

  public final void w(long paramLong)
  {
    this.f.putLong("time_one_key_analysis", paramLong).commit();
  }

  public final void w(boolean paramBoolean)
  {
    this.f.putBoolean("private_space_call_notification", paramBoolean).commit();
  }

  public final boolean w()
  {
    return this.e.getBoolean("file_safe_has_restore", false);
  }

  public final void x()
  {
    this.f.putBoolean("privacy_lock_first_use", false).commit();
  }

  public final void x(int paramInt)
  {
    this.f.putInt("screen_format", paramInt).commit();
  }

  public final void x(long paramLong)
  {
    this.f.putLong("softmaket_hotword_last_refresh_timev2", paramLong).commit();
  }

  public final void x(boolean paramBoolean)
  {
    this.f.putBoolean("private_quick_entry_display_info", paramBoolean).commit();
  }

  public final boolean x(String paramString)
  {
    return this.e.getBoolean(paramString, true);
  }

  public final void y(int paramInt)
  {
    this.f.putInt("screen_quality", paramInt).commit();
  }

  public final void y(long paramLong)
  {
    this.f.putLong("auto_report_intelligent_sms_TIME", paramLong).commit();
  }

  public final void y(String paramString)
  {
    this.f.putString("FileSafePassword", paramString).commit();
  }

  public final void y(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.d.getSharedPreferences("qqwebsite", 0).edit();
    localEditor.putBoolean("qqwebsite_auto_logout", paramBoolean);
    localEditor.commit();
  }

  public final boolean y()
  {
    return this.e.getBoolean("privacy_lock_first_use", true);
  }

  public final void z(int paramInt)
  {
    this.f.putInt("pickproof_qq_bind_guide", paramInt).commit();
  }

  public final void z(long paramLong)
  {
    this.f.putLong("last_wifi_connected_time", paramLong).commit();
  }

  public final void z(String paramString)
  {
    this.f.putString("PrivacySafeQQ", paramString).commit();
  }

  public final void z(boolean paramBoolean)
  {
    this.f.putBoolean("permission_monitor", paramBoolean).commit();
  }

  public final boolean z()
  {
    return this.e.getBoolean("double_call_status", true);
  }

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[2];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ho
 * JD-Core Version:    0.6.2
 */