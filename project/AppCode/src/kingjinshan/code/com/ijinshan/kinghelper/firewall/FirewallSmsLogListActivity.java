package com.ijinshan.kinghelper.firewall;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.hoi.widget.o;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.common.PickListActivity;
import com.ijinshan.kinghelper.firewall.core.h;
import com.keniu.security.b.r;
import com.keniu.security.main.MainActivity;
import com.keniu.security.service.RubbishSMSScanServiceCtrl;
import com.keniu.security.service.f;
import com.keniu.security.util.af;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class FirewallSmsLogListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener, f
{
  private static final String d = "FirewallSmsLogListActivity";
  private static final boolean e = true;
  public boolean a = false;
  Handler b = new bn(this);
  private bw c;
  private com.keniu.security.a f;
  private Dialog g;
  private LinearLayout h;
  private Cursor i;
  private TextView j;
  private TextView k;
  private RubbishSMSScanServiceCtrl l = null;
  private ServiceConnection m = new bh(this);
  private boolean n = false;
  private PopupWindow o = null;
  private long p = 0L;
  private DialogInterface.OnClickListener q = new bc(this);
  private DialogInterface.OnClickListener r = new bd(this);
  private o s = null;

  private Dialog a(boolean paramBoolean)
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903096, null);
    TextView localTextView = (TextView)localView.findViewById(2131231002);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231001);
    localCheckBox.setChecked(true);
    localTextView.setText(2131427938);
    localTextView.setOnClickListener(new bs(this));
    if (paramBoolean)
      localaq.a(localView);
    while (true)
    {
      localaq.a(2131427865);
      localaq.a(2131427882, new bt(this, localCheckBox));
      localaq.b(2131427883, new bu(this));
      com.jxphone.mosecurity.a.a.g(this, "1");
      return localaq.c();
      localaq.b(2131427701);
    }
  }

  public static String a(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    Date localDate = new Date(paramLong);
    String str;
    if ((1900 + localDate.getYear() == localCalendar.get(1)) && (localDate.getMonth() == localCalendar.get(2)) && (localDate.getDate() == localCalendar.get(5)))
      if (localDate.getHours() >= 13)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(localDate.getHours() - 12);
        arrayOfObject3[1] = Integer.valueOf(localDate.getMinutes());
        str = String.format("下午 %02d:%02d", arrayOfObject3);
      }
    while (true)
    {
      return str;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(localDate.getHours());
      arrayOfObject2[1] = Integer.valueOf(localDate.getMinutes());
      str = String.format("上午 %02d:%02d", arrayOfObject2);
      continue;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(1 + localDate.getMonth());
      arrayOfObject1[1] = Integer.valueOf(localDate.getDate());
      str = String.format("%02d/%02d", arrayOfObject1);
    }
  }

  private void a(int paramInt, long paramLong, String paramString)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131427519);
      localaq.b(getString(2131427520, new Object[] { "" }));
      localaq.b(2131427542, null);
      localaq.a(2131427541, new br(this, paramLong));
      localaq.d();
      continue;
      if (!TextUtils.isEmpty(paramString))
        af.a(this, paramString);
      com.jxphone.mosecurity.a.a.i(this, "opwappushurl");
    }
  }

  private void a(int paramInt, long paramLong, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString1);
    switch (paramInt)
    {
    default:
    case 3:
    case 4:
    case 2:
    case 5:
    case 6:
    case 7:
    case 1:
      while (true)
      {
        return;
        Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + paramString1));
        try
        {
          startActivity(localIntent2);
        }
        catch (Exception localException)
        {
          Toast.makeText(this, getString(2131427403), 0).show();
        }
        continue;
        af.f(this, paramString2);
        continue;
        af.e(this, paramString1);
        continue;
        if (com.keniu.security.b.e.e(this).a(paramString1) != null)
        {
          Toast.makeText(this, 2131427622, 1).show();
        }
        else
        {
          Intent localIntent1 = new Intent("android.intent.action.INSERT");
          localIntent1.setType("vnd.android.cursor.dir/person");
          localIntent1.setType("vnd.android.cursor.dir/contact");
          localIntent1.setType("vnd.android.cursor.dir/raw_contact");
          localIntent1.putExtra("phone", paramString1);
          startActivity(localIntent1);
          continue;
          PickListActivity.a(this, localArrayList, 1, 1, "PickListActivity1_white_action");
          continue;
          PickListActivity.a(this, localArrayList, 2, 1, "_PickListActivity1_black_action");
          continue;
          dd.a(this);
          aq localaq = new aq(this, (byte)0);
          View localView = LayoutInflater.from(this).inflate(2130903097, null);
          ((TextView)localView.findViewById(2131231003)).setText(2131427712);
          localaq.a(localView);
          localaq.a(2131427865);
          localaq.b(2131427654, new bo(this));
          localaq.a(2131427653, new bp(this, paramLong));
          ap localap = localaq.c();
          localap.setOnDismissListener(new bq(this, paramLong, paramString1));
          localap.show();
        }
      }
    case 0:
    }
    com.ijinshan.kinghelper.firewall.a.a.a(this);
    int i1 = com.ijinshan.kinghelper.firewall.a.a.a((int)paramLong);
    this.c.getCursor().requery();
    this.c.notifyDataSetChanged();
    if (i1 > 0);
    for (int i2 = 2131427621; ; i2 = 2131427623)
    {
      Toast.makeText(this, i2, 0).show();
      break;
    }
  }

  private void a(long paramLong, String paramString)
  {
    dd.a(this);
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427712);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.b(2131427654, new bo(this));
    localaq.a(2131427653, new bp(this, paramLong));
    ap localap = localaq.c();
    localap.setOnDismissListener(new bq(this, paramLong, paramString));
    localap.show();
  }

  public static void b()
  {
  }

  private void b(int paramInt)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    String str;
    if (paramInt >= 0)
      if (paramInt > 0)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        str = getString(2131427691, arrayOfObject);
        localaq.b(str);
        label57: if (paramInt <= 0)
          break label112;
      }
    label112: for (int i1 = 2131427864; ; i1 = 2131428298)
    {
      localaq.b(i1, new bb(this));
      localaq.c().show();
      return;
      str = getString(2131427692);
      break;
      localaq.b(2131427693);
      break label57;
    }
  }

  private void b(long paramLong)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    localaq.b(getString(2131427520, new Object[] { "" }));
    localaq.b(2131427542, null);
    localaq.a(2131427541, new br(this, paramLong));
    localaq.d();
  }

  private void b(long paramLong, String paramString)
  {
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    String str = i.a(paramString);
    if (TextUtils.isEmpty(str))
      return;
    int i1 = com.ijinshan.kinghelper.firewall.a.a.f((int)paramLong);
    com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
    if ((!com.ijinshan.kinghelper.firewall.a.e.a(str, 1)) && (!com.ijinshan.kinghelper.firewall.a.e.a(str, 2)))
      com.ijinshan.kinghelper.firewall.a.e.a(1, str, "", 1);
    if (i1 > 0);
    for (int i2 = 2131427624; ; i2 = 2131427626)
    {
      Toast.makeText(this, i2, 0).show();
      this.c.getCursor().requery();
      this.c.notifyDataSetChanged();
      break;
    }
  }

  private void d()
  {
    Intent localIntent = new Intent(getApplicationContext(), RubbishSMSScanServiceCtrl.class);
    startService(localIntent);
    getApplicationContext().bindService(localIntent, this.m, 1);
  }

  private void e()
  {
    dd.a(this);
    if ((getIntent().getBooleanExtra("FirewallLogTabActivity_force_rubbish_scan", false)) && (!dd.v()))
      h();
    while (true)
    {
      return;
      if ((this.f.j()) && (!dd.j()))
      {
        aq localaq = new aq(this, (byte)0);
        View localView = LayoutInflater.from(this).inflate(2130903097, null);
        ((TextView)localView.findViewById(2131231003)).setText(2131427639);
        TextView localTextView = (TextView)localView.findViewById(2131231004);
        localTextView.setText(2131427937);
        localTextView.setVisibility(0);
        localTextView.setOnClickListener(new bj(this));
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
        localaq.a(localView);
        localaq.a(2131427865);
        localaq.a(2131427888, new bk(this));
        localaq.b(2131427889, new bl(this, localCheckBox));
        localaq.c().show();
      }
      int i1 = getIntent().getIntExtra("FirewallLogTabActivity_rubbish_scan_res", 0);
      if (i1 > 0)
        b(i1);
    }
  }

  private void f()
  {
    if (this.c.getCursor().getCount() > 0)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131427519);
      localaq.b(getString(2131427613));
      localaq.b(2131427542, null);
      localaq.a(2131427541, new ax(this));
      localaq.c().show();
    }
    while (true)
    {
      return;
      Toast.makeText(this, 2131427506, 0).show();
    }
  }

  private void g()
  {
    Intent localIntent = new Intent(this, PickListActivity.class);
    localIntent.setType("vnd.android.cursor.dir/sms");
    localIntent.removeExtra("PickListActivity1_action_type");
    localIntent.putExtra("PickListActivity1_action_type", "PickListActivity1_report_action");
    startActivity(localIntent);
  }

  private void h()
  {
    if (this.s != null);
    while (true)
    {
      return;
      if (this.l != null)
      {
        this.s = new o(this, (byte)0);
        o localo = this.s;
        localo.setTitle(2131427676);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(0);
        localo.a(getString(2131427684, arrayOfObject));
        localo.b();
        localo.a(false);
        localo.setCancelable(false);
        localo.a(0);
        localo.b(0);
        localo.a(-1, getString(2131427931), this.q);
        localo.a(-3, getString(2131427932), this.r);
        localo.setOnDismissListener(new be(this));
        localo.show();
        if (!this.l.c())
        {
          dd.w();
          dd.x();
          this.l.a();
        }
      }
    }
  }

  private Dialog i()
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427639);
    TextView localTextView = (TextView)localView.findViewById(2131231004);
    localTextView.setText(2131427937);
    localTextView.setVisibility(0);
    localTextView.setOnClickListener(new bj(this));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.a(2131427888, new bk(this));
    localaq.b(2131427889, new bl(this, localCheckBox));
    return localaq.c();
  }

  private void j()
  {
    this.i = com.ijinshan.kinghelper.firewall.a.a.a(null, null, "date DESC");
    startManagingCursor(this.i);
  }

  private void k()
  {
    new bm(this).start();
  }

  private void l()
  {
    findViewById(2131230861).setVisibility(8);
  }

  final void a()
  {
    findViewById(2131230874).setVisibility(0);
  }

  public final void a(int paramInt)
  {
    runOnUiThread(new bi(this, paramInt));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    runOnUiThread(new bg(this, paramInt2, paramInt1));
  }

  public final void c()
  {
    runOnUiThread(new bf(this));
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.h != null)
      this.h.setVisibility(8);
    if ((this.o != null) && (this.o.isShowing()))
    {
      this.o.dismiss();
      this.o = null;
      this.p = System.currentTimeMillis();
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230874:
    case 2131230873:
    }
    while (true)
    {
      return;
      if (200L + this.p <= System.currentTimeMillis())
        if (this.o != null)
        {
          this.o.dismiss();
          this.o = null;
        }
        else
        {
          View localView = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903252, null);
          this.o = new PopupWindow(localView, -2, -2);
          this.o.setTouchable(true);
          this.o.showAsDropDown(paramView, 0, 5);
          localView.findViewById(2131231506).setOnClickListener(new ay(this));
          localView.findViewById(2131231508).setOnClickListener(new az(this));
          localView.findViewById(2131231510).setOnClickListener(new ba(this));
          this.p = 0L;
          continue;
          if (!dd.d())
          {
            dd.a(true);
            String str = getString(2131427413);
            this.k.setText(str + dd.g().a());
            Toast.makeText(this, getString(2131427415), 0).show();
            this.k.setTextColor(-10175726);
          }
        }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    dd.a(this);
    requestWindowFeature(1);
    setContentView(2130903062);
    this.f = com.keniu.security.a.a(this);
    getListView().setOnItemLongClickListener(new au(this));
    findViewById(2131230874).setOnClickListener(this);
    long l1 = System.currentTimeMillis();
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    new bm(this).start();
    Log.e("FirewallSmsLogListActivity", "query sms cost:" + (System.currentTimeMillis() - l1) + "MS");
    if (paramBundle == null)
      com.jxphone.mosecurity.a.a.i(this, "smsman_log");
    a();
    getListView().setOnItemClickListener(this);
    getListView().setSelector(2130837790);
    this.j = ((TextView)findViewById(2131230797));
    this.j.setVisibility(0);
    this.j.setText(2131427507);
    this.h = ((LinearLayout)findViewById(2131230879));
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.c != null)
    {
      Cursor localCursor = this.c.getCursor();
      stopManagingCursor(localCursor);
      localCursor.close();
    }
    if (this.l != null)
    {
      getApplicationContext().unbindService(this.m);
      this.l.b(this);
      this.l = null;
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this, FirewallLogDetailActivity.class);
    localIntent.putExtra("FirewallLogDetailActivity_LOG_TYPE", "FirewallLogDetailActivity_LOG_TYPE_SMS");
    Cursor localCursor = (Cursor)this.c.getItem(paramInt);
    localIntent.putExtra("FirewallLogDetailActivity_LOG_ID", localCursor.getInt(localCursor.getColumnIndex("_id")));
    startActivity(localIntent);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.h != null)
        this.h.setVisibility(8);
      if (this.o != null)
      {
        this.o.dismiss();
        this.o = null;
      }
    }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
    {
      return bool;
      startActivity(new Intent(this, MainActivity.class));
      finish();
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (this.h != null)
      this.h.setVisibility(8);
    if ((this.o != null) && (this.o.isShowing()))
    {
      this.o.dismiss();
      this.o = null;
    }
    h.b(this);
  }

  protected void onResume()
  {
    super.onResume();
    dd.a(this);
    this.k = ((TextView)findViewById(2131230873));
    if (dd.d())
    {
      String str2 = getString(2131427413);
      this.k.setText(str2 + dd.g().a());
      this.k.setTextColor(-10175726);
      h.b(this);
      if (this.c != null)
      {
        this.c.getCursor().requery();
        a();
        if ((this.h != null) && (this.f != null))
        {
          if ((this.c == null) || (this.c.getCount() <= 0))
            break label217;
          if (this.f.R())
          {
            this.f.S();
            this.h.setVisibility(0);
            ((TextView)this.h.findViewById(2131230880)).setText(2131427509);
          }
        }
      }
    }
    while (true)
    {
      return;
      String str1 = getString(2131427414);
      this.k.setText(str1);
      this.k.setTextColor(-1857494);
      this.k.setOnClickListener(this);
      break;
      label217: if (this.f.P())
      {
        this.f.Q();
        this.h.setVisibility(0);
        ((TextView)this.h.findViewById(2131230880)).setText(2131427510);
      }
    }
  }

  protected void onStart()
  {
    System.out.println(">>>>>>>>>>>>>>>.onStart");
    super.onStart();
    if (!this.n)
    {
      Intent localIntent = new Intent(getApplicationContext(), RubbishSMSScanServiceCtrl.class);
      startService(localIntent);
      getApplicationContext().bindService(localIntent, this.m, 1);
      dd.a(this);
      if ((!getIntent().getBooleanExtra("FirewallLogTabActivity_force_rubbish_scan", false)) || (dd.v()))
        break label89;
      h();
    }
    while (true)
    {
      this.n = true;
      return;
      label89: if ((this.f.j()) && (!dd.j()))
      {
        aq localaq = new aq(this, (byte)0);
        View localView = LayoutInflater.from(this).inflate(2130903097, null);
        ((TextView)localView.findViewById(2131231003)).setText(2131427639);
        TextView localTextView = (TextView)localView.findViewById(2131231004);
        localTextView.setText(2131427937);
        localTextView.setVisibility(0);
        localTextView.setOnClickListener(new bj(this));
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
        localaq.a(localView);
        localaq.a(2131427865);
        localaq.a(2131427888, new bk(this));
        localaq.b(2131427889, new bl(this, localCheckBox));
        localaq.c().show();
      }
      int i1 = getIntent().getIntExtra("FirewallLogTabActivity_rubbish_scan_res", 0);
      if (i1 > 0)
        b(i1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSmsLogListActivity
 * JD-Core Version:    0.6.2
 */