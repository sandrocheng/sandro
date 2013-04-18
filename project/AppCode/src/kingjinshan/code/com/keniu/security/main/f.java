package com.keniu.security.main;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.hoi.widget.q;

public final class f
{
  private Context a;
  private q b;
  private boolean c = false;
  private SharedPreferences d;
  private boolean e = false;
  private String f = null;
  private final int g = 1;
  private final int h = 2;
  private final int i = 3;
  private final int j = 4;
  private final int k = 5;
  private final int l = 6;
  private final int m = 7;
  private Handler n = new g(this);

  public f(Context paramContext)
  {
    this.a = paramContext;
    this.d = this.a.getSharedPreferences("db_preferences", 0);
    this.b = q.a(this.a, 2131428116);
    this.b.a(-1, "隐藏窗口", new h(this));
    this.b.a(-2, "取消安装", new i(this));
    this.b.setCancelable(false);
    this.b.show();
    this.b.b("正在下载，请稍候...");
    this.b.a(false);
    new j(this).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.f
 * JD-Core Version:    0.6.2
 */