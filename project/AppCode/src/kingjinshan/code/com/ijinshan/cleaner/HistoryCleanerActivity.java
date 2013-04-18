package com.ijinshan.cleaner;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hoi.widget.o;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.List;

public class HistoryCleanerActivity extends Activity
  implements View.OnClickListener
{
  public static final String a = "com.google.android.gm";
  public static final String b = "com.google.android.apps.maps";
  public static final String c = "com.android.vending";
  public static final String d = "浏览器记录";
  public static final String e = "谷歌地图搜索记录";
  public static final String f = "Gmail搜索记录";
  public static final String g = "谷歌Market记录";
  public static final String h = "剪贴板记录";
  public static final int i = 1;
  public static final int j = 2;
  public static final int k = 3;
  public static final int l = 4;
  public static final int m = 5;
  public static final int n = 6;
  public static final int o = 7;
  public static final int p = 8;
  Handler q = new y(this);
  private LinearLayout r;
  private LinearLayout s;
  private LinearLayout t;
  private LinearLayout u;
  private LinearLayout v;
  private Button w;
  private com.keniu.security.a x;
  private List y;
  private o z;

  private void a()
  {
    this.y = new ArrayList();
    this.w = ((Button)findViewById(2131230961));
    this.r = ((LinearLayout)findViewById(2131230964));
    this.s = ((LinearLayout)findViewById(2131230968));
    this.t = ((LinearLayout)findViewById(2131230970));
    this.u = ((LinearLayout)findViewById(2131230972));
    this.v = ((LinearLayout)findViewById(2131230974));
    this.w.setOnClickListener(this);
  }

  private void a(int paramInt1, int paramInt2)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt1;
    localMessage.arg1 = paramInt2;
    this.q.sendMessage(localMessage);
  }

  private void b()
  {
    if (c(1))
      this.y.add(Integer.valueOf(1));
    if (c(2))
      this.y.add(Integer.valueOf(2));
    if (c(3))
      this.y.add(Integer.valueOf(3));
    if (c(4))
      this.y.add(Integer.valueOf(4));
    if (c(5))
      this.y.add(Integer.valueOf(5));
  }

  private void c()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    if (this.y.size() == 0)
    {
      localaq.b(getString(2131427977));
      localaq.b(2131427541, null);
    }
    while (true)
    {
      localaq.c().show();
      return;
      View localView = LayoutInflater.from(this).inflate(2130903097, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
      localCheckBox.setChecked(false);
      ((TextView)localView.findViewById(2131231003)).setText(2131427974);
      localaq.a(localView);
      localaq.b(2131427542, new v(this, localCheckBox));
      localaq.a(2131427541, new w(this, localCheckBox));
    }
  }

  private boolean c(int paramInt)
  {
    boolean bool;
    int i1;
    switch (paramInt)
    {
    default:
      bool = false;
      return bool;
    case 1:
      i1 = 2131230967;
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      bool = ((CheckBox)findViewById(i1)).isChecked();
      break;
      i1 = 2131230969;
      continue;
      i1 = 2131230971;
      continue;
      i1 = 2131230973;
      continue;
      i1 = 2131230975;
    }
  }

  private static String d(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default:
      str = "";
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return str;
      str = "Gmail搜索记录";
      continue;
      str = "谷歌地图搜索记录";
      continue;
      str = "谷歌Market记录";
      continue;
      str = "浏览器记录";
      continue;
      str = "剪贴板记录";
    }
  }

  private void d()
  {
    new x(this).start();
  }

  private void e()
  {
    this.z = new o(this, (byte)0);
    this.z.setTitle(getString(2131427951));
    this.z.b();
    this.z.a(0);
    this.z.b(this.y.size());
    this.z.show();
  }

  public final void a(int paramInt)
  {
    n localn = new n(this);
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return;
      localn.e();
      continue;
      localn.f();
      continue;
      localn.g();
      continue;
      localn.c();
      continue;
      localn.a();
    }
  }

  public void onClick(View paramView)
  {
    com.jxphone.mosecurity.a.a.i(this, "mg_rub_history_clean");
    this.y.clear();
    if (c(1))
      this.y.add(Integer.valueOf(1));
    if (c(2))
      this.y.add(Integer.valueOf(2));
    if (c(3))
      this.y.add(Integer.valueOf(3));
    if (c(4))
      this.y.add(Integer.valueOf(4));
    if (c(5))
      this.y.add(Integer.valueOf(5));
    if ((!this.x.d()) && (this.y.size() != 0))
    {
      com.jxphone.mosecurity.a.a.i(this, "mg_rub_history_clean_success");
      d();
      return;
    }
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    if (this.y.size() == 0)
    {
      localaq.b(getString(2131427977));
      localaq.b(2131427541, null);
    }
    while (true)
    {
      localaq.c().show();
      break;
      View localView = LayoutInflater.from(this).inflate(2130903097, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
      localCheckBox.setChecked(false);
      ((TextView)localView.findViewById(2131231003)).setText(2131427974);
      localaq.a(localView);
      localaq.b(2131427542, new v(this, localCheckBox));
      localaq.a(2131427541, new w(this, localCheckBox));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    this.x = com.keniu.security.a.a(this);
    this.y = new ArrayList();
    this.w = ((Button)findViewById(2131230961));
    this.r = ((LinearLayout)findViewById(2131230964));
    this.s = ((LinearLayout)findViewById(2131230968));
    this.t = ((LinearLayout)findViewById(2131230970));
    this.u = ((LinearLayout)findViewById(2131230972));
    this.v = ((LinearLayout)findViewById(2131230974));
    this.w.setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.HistoryCleanerActivity
 * JD-Core Version:    0.6.2
 */