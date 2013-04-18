package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.activity.TabContactActivity;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.a;
import com.keniu.security.e.e;
import com.keniu.security.util.af;
import com.keniu.security.util.aq;
import com.keniu.security.util.av;
import com.keniu.security.util.i;
import com.keniu.security.util.k;

public final class PeopleSmsLogActivity extends TabContactActivity
{
  private static final int m;
  private static l[] n;
  private static b o;
  EditText l;
  private ListView p;
  private boolean q = false;
  private boolean r = false;
  private ImageButton s;
  private int t = -1;
  private final Handler u = new bi(this);
  private final e v = new e(this.u);
  private j w;
  private l x;
  private boolean y = false;

  private void a(boolean paramBoolean)
  {
    if ((paramBoolean) || (n == null))
      n = this.w.a(o);
    int i = this.p.getSelectedItemPosition();
    this.p.setAdapter(new com.jxphone.mosecurity.activity.a.c(this, o, n));
    this.p.setSelection(Math.max(n.length - 1, i));
    m();
  }

  private void q()
  {
    ((Integer)getIntent().getExtras().getSerializable("id")).intValue();
    String str = getIntent().getExtras().getString("address");
    b localb1 = h.c(this, this.i).a(str, true);
    o = localb1;
    if (localb1 == null)
    {
      b localb2 = new b();
      o = localb2;
      localb2.a(str);
      o.b(str);
      o.a(com.jxphone.mosecurity.c.c.b);
    }
    this.w = h.a(this, this.i);
    this.s = ((ImageButton)findViewById(2131231496));
    this.w.a(this.v);
    this.p = ((ListView)findViewById(2131231497));
    this.p.setDividerHeight(0);
    this.p.setOnItemLongClickListener(new bj(this));
  }

  private void r()
  {
    this.s.setOnClickListener(new bk(this));
    this.x = this.w.b(o.c());
    String str = this.x.c();
    ImageButton localImageButton = this.s;
    if ((str != null) && (str.length() != 0));
    for (boolean bool = true; ; bool = false)
    {
      localImageButton.setEnabled(bool);
      this.l.setText(this.x.c());
      this.l.addTextChangedListener(new bl(this));
      return;
    }
  }

  private Dialog s()
  {
    return k.a(this, 2131428982, new bo(this)).c();
  }

  private void t()
  {
    if (!a.a(this).aH());
    while (true)
    {
      return;
      String[][] arrayOfString; = new String[4][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "uuid";
      arrayOfString1[1] = av.a(this);
      arrayOfString;[1] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "dt";
      arrayOfString2[1] = i.c(System.currentTimeMillis());
      arrayOfString;[2] = arrayOfString2;
      arrayOfString;[3] = { "actionname", "sms" };
      a(arrayOfString;);
    }
  }

  protected final void a(byte paramByte)
  {
    a(paramByte, false);
  }

  public final void a(l paraml)
  {
    String str3;
    Object localObject1;
    Object localObject2;
    switch (paraml.f())
    {
    default:
      str3 = getString(2131428920);
      switch (paraml.g())
      {
      default:
        localObject1 = str3;
        localObject2 = null;
      case -2:
      case -1:
      case 0:
      case 1:
      case 2:
      }
      break;
    case 1:
    }
    while (true)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131428916);
      localaq.b((String)localObject1 + paraml.b() + "\n类型：文字短信" + "\n时间：" + i.a(paraml.d()) + "\n状态：" + (String)localObject2);
      localaq.a(2131427869, null);
      localaq.d();
      return;
      String str1 = getString(2131428921);
      String str2 = getString(2131428923);
      localObject1 = str1;
      localObject2 = str2;
      continue;
      String str8 = getString(2131429014);
      localObject1 = str3;
      localObject2 = str8;
      continue;
      String str7 = getString(2131428924);
      localObject1 = str3;
      localObject2 = str7;
      continue;
      String str6 = getString(2131428925);
      localObject1 = str3;
      localObject2 = str6;
      continue;
      String str5 = getString(2131428926);
      localObject1 = str3;
      localObject2 = str5;
      continue;
      String str4 = getString(2131428927);
      localObject1 = str3;
      localObject2 = str4;
    }
  }

  protected final int b()
  {
    return 2131492864;
  }

  public final Bundle c()
  {
    this.r = true;
    return super.c();
  }

  protected final void f()
  {
    super.f();
    ((Integer)getIntent().getExtras().getSerializable("id")).intValue();
    String str1 = getIntent().getExtras().getString("address");
    b localb1 = h.c(this, this.i).a(str1, true);
    o = localb1;
    if (localb1 == null)
    {
      b localb2 = new b();
      o = localb2;
      localb2.a(str1);
      o.b(str1);
      o.a(com.jxphone.mosecurity.c.c.b);
    }
    this.w = h.a(this, this.i);
    this.s = ((ImageButton)findViewById(2131231496));
    this.w.a(this.v);
    this.p = ((ListView)findViewById(2131231497));
    this.p.setDividerHeight(0);
    this.p.setOnItemLongClickListener(new bj(this));
    a(false);
    this.s.setOnClickListener(new bk(this));
    this.x = this.w.b(o.c());
    String str2 = this.x.c();
    ImageButton localImageButton = this.s;
    if ((str2 != null) && (str2.length() != 0));
    for (boolean bool = true; ; bool = false)
    {
      localImageButton.setEnabled(bool);
      this.l.setText(this.x.c());
      this.l.addTextChangedListener(new bl(this));
      return;
    }
  }

  protected final int j()
  {
    return 2130903247;
  }

  protected final int n()
  {
    return 2131428953;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.l = ((EditText)findViewById(2131231495));
    this.l.setText(" ");
    ((TextView)findViewById(2131230727)).setText(2131428894);
    Object localObject = getIntent().getExtras().get("need_check_pwd");
    if ((localObject != null) && (((Boolean)localObject).booleanValue()))
      this.q = true;
    if (this.q)
      g();
    while (true)
    {
      return;
      f();
    }
  }

  protected final Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = super.onCreateDialog(paramInt);
    case 2131165209:
    case 0:
    }
    while (true)
    {
      return localObject;
      localObject = new aq(this, (byte)0).a(getString(2131428622)).d(2131165209, new bm(this)).c();
      continue;
      localObject = k.a(this, 2131428982, new bo(this)).c();
    }
  }

  protected final void onDestroy()
  {
    super.onDestroy();
    if (this.x != null)
      this.w.c(this.x);
    if (!this.r)
      n = null;
    if (this.w != null)
      this.w.b(this.v);
    b[] arrayOfb = new b[1];
    arrayOfb[0] = o;
    b.a(arrayOfb);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
      af.b(this, o.c());
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231766:
    }
    while (true)
    {
      return true;
      showDialog(0);
    }
  }

  protected final void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
  }

  protected final void onResume()
  {
    super.onResume();
    if ((this.p != null) && (!this.a))
      this.p.requestFocus();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.PeopleSmsLogActivity
 * JD-Core Version:    0.6.2
 */