package com.keniu.security.commumgr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

public final class e
{
  public static final boolean a = true;
  public static final boolean b = true;
  public static final boolean c;
  private Context d;
  private String e;
  private String f;
  private String g;

  public e(Context paramContext)
  {
    this.d = paramContext;
    this.e = paramContext.getString(2131428443);
    this.f = paramContext.getString(2131428444);
    this.g = paramContext.getString(2131428442);
  }

  private boolean a(String paramString, boolean paramBoolean)
  {
    return t.b(this.d).getBoolean(paramString, paramBoolean);
  }

  private void b(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(this.d).edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }

  private void b(boolean paramBoolean)
  {
    b(this.e, paramBoolean);
  }

  public final void a(boolean paramBoolean)
  {
    b(this.f, paramBoolean);
  }

  public final boolean a()
  {
    return a(this.e, false);
  }

  public final boolean b()
  {
    return a(this.f, true);
  }

  public final boolean c()
  {
    return a(this.g, true);
  }

  public final void d()
  {
    b(this.g, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.e
 * JD-Core Version:    0.6.2
 */