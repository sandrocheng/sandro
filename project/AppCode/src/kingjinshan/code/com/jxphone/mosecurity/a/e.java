package com.jxphone.mosecurity.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

public final class e
{
  private static final String a = "public_preference_show_system_app";
  private static final String b = "public_preference_show_systen_process";
  private static final String c = "public_preference_confirm_kill_all";
  private static final String d = "public_preference_show_system_risk_app";

  private static void a(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean("public_preference_show_system_app", paramBoolean);
    localEditor.commit();
  }

  private static boolean a(Context paramContext)
  {
    return t.b(paramContext).getBoolean("public_preference_show_system_app", false);
  }

  private static void b(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean("public_preference_show_systen_process", paramBoolean);
    localEditor.commit();
  }

  private static boolean b(Context paramContext)
  {
    return t.b(paramContext).getBoolean("public_preference_show_systen_process", false);
  }

  private static void c(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean("public_preference_confirm_kill_all", paramBoolean);
    localEditor.commit();
  }

  private static boolean c(Context paramContext)
  {
    return t.b(paramContext).getBoolean("public_preference_confirm_kill_all", false);
  }

  private static void d(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean("public_preference_show_system_risk_app", paramBoolean);
    localEditor.commit();
  }

  private static boolean d(Context paramContext)
  {
    return t.b(paramContext).getBoolean("public_preference_show_system_risk_app", false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.a.e
 * JD-Core Version:    0.6.2
 */