package com.jxphone.mosecurity.activity.friend;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.TabHost.TabSpec;
import android.widget.Toast;
import com.keniu.security.a;
import com.keniu.security.commui.CustomTabHost;
import com.keniu.security.h.b;
import com.keniu.security.util.aq;

public class FriendTabActivity extends BaseTabActivity
{
  public static final int e = 0;
  public static final int f = 1;
  public static final int g = 2;
  public static final int h = 3;
  private RadioGroup i;
  private Intent j;
  private boolean k = false;

  private void b()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b("修改私密空间名称和图标可以更好地保护您的隐私");
    localaq.a("立即修改", new az(this));
    localaq.b("暂不修改", null);
    localaq.d();
  }

  protected final void a()
  {
    setContentView(2130903112);
  }

  public final void a(int paramInt)
  {
    super.a(paramInt);
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
      this.i.check(2131231032);
      a = 0;
      continue;
      this.i.check(2131231033);
      a = 1;
      continue;
      this.i.check(2131231041);
      a = 2;
      continue;
      this.i.check(2131231061);
      a = 3;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    d = (Button)findViewById(2131230728);
    this.j = getIntent();
    if (this.j != null)
      this.k = this.j.getBooleanExtra("isDummy", false);
    this.i = ((RadioGroup)findViewById(2131231031));
    this.c = ((CustomTabHost)getTabHost());
    if (b.a)
      Toast.makeText(this, 2131427828, 0).show();
    this.j = new Intent().setClass(this, FriendSmsActivity.class);
    TabHost.TabSpec localTabSpec1 = this.c.newTabSpec("sms").setIndicator(getString(2131428973)).setContent(this.j);
    this.c.addTab(localTabSpec1);
    this.j = new Intent().setClass(this, FriendCallLogActivity.class);
    TabHost.TabSpec localTabSpec2 = this.c.newTabSpec("call").setIndicator(getString(2131428972)).setContent(this.j);
    this.c.addTab(localTabSpec2);
    this.j = new Intent().setClass(this, FriendActivity.class);
    TabHost.TabSpec localTabSpec3 = this.c.newTabSpec("friend").setIndicator(getString(2131428999)).setContent(this.j);
    this.c.addTab(localTabSpec3);
    if (this.k)
      findViewById(2131231061).setVisibility(8);
    while (true)
    {
      this.i.setOnCheckedChangeListener(new ay(this));
      this.b = this.c.a();
      this.c.a(0);
      this.c.a(1);
      this.c.a(2);
      a(a);
      a locala = a.a(this);
      if (locala.o())
      {
        locala.p();
        aq localaq = new aq(this, (byte)0);
        localaq.a(2131427865);
        localaq.b("修改私密空间名称和图标可以更好地保护您的隐私");
        localaq.a("立即修改", new az(this));
        localaq.b("暂不修改", null);
        localaq.d();
      }
      return;
      this.j = new Intent().setClass(this, FriendSettingActivity.class);
      TabHost.TabSpec localTabSpec4 = this.c.newTabSpec("setting").setIndicator(getString(2131428974)).setContent(this.j);
      this.c.addTab(localTabSpec4);
    }
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendTabActivity
 * JD-Core Version:    0.6.2
 */