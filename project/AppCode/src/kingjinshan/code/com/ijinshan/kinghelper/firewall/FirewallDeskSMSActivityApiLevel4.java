package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.SmsManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.hoi.widget.ScrollLayout;
import com.hoi.widget.ah;
import com.ijinshan.kinghelper.firewall.core.h;
import com.jxphone.mosecurity.c.b;
import com.keniu.security.b.r;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.at;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class FirewallDeskSMSActivityApiLevel4 extends Activity
  implements View.OnClickListener, ah
{
  public static String a = "newsmsuri";
  private static final SimpleDateFormat b = new SimpleDateFormat("HH:mm MM/dd");
  private ArrayList c = new ArrayList();
  private TextView d = null;
  private TextView e = null;
  private TextView f = null;
  private TextView g = null;
  private ImageView h = null;
  private ImageView i = null;
  private ImageView j = null;
  private ImageView k = null;
  private EditText l = null;
  private String m = null;
  private TextView n = null;
  private LayoutInflater o = null;
  private LinearLayout p = null;
  private LinearLayout q = null;
  private y r = null;
  private ScrollLayout s = null;
  private b t = null;
  private Button u = null;
  private BroadcastRecSms v = new BroadcastRecSms();
  private SharedPreferences.OnSharedPreferenceChangeListener w = null;
  private SharedPreferences x = null;
  private Handler y = new Handler();

  private void a()
  {
    this.w = new t(this);
  }

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.i.setImageResource(2130837558);
      this.p.setBackgroundDrawable(getResources().getDrawable(2130837584));
      this.q.setBackgroundDrawable(getResources().getDrawable(2130837550));
      this.u.setBackgroundDrawable(getResources().getDrawable(2130837568));
      continue;
      this.i.setImageResource(2130837561);
      this.p.setBackgroundDrawable(getResources().getDrawable(2130837585));
      this.q.setBackgroundDrawable(getResources().getDrawable(2130837551));
      this.u.setBackgroundDrawable(getResources().getDrawable(2130837571));
      continue;
      this.i.setImageResource(2130837564);
      this.p.setBackgroundDrawable(getResources().getDrawable(2130837586));
      this.q.setBackgroundDrawable(getResources().getDrawable(2130837552));
      this.u.setBackgroundDrawable(getResources().getDrawable(2130837574));
    }
  }

  private void a(x paramx)
  {
    if (this.t != null);
    for (String str = this.t.b(); ; str = paramx.d)
    {
      h.a(this, str, paramx.b, paramx.i);
      return;
    }
  }

  private void a(String paramString1, String paramString2)
  {
    SmsManager localSmsManager = SmsManager.getDefault();
    ContentValues localContentValues = new ContentValues();
    Long localLong = Long.valueOf(Calendar.getInstance().getTime().getTime());
    localContentValues.put("address", paramString1);
    localContentValues.put("body", paramString2.toString());
    localContentValues.put("protocol", "0");
    localContentValues.put("date", localLong);
    localContentValues.put("status", Integer.toString(0));
    localContentValues.put("type", "2");
    localContentValues.put("read", "1");
    try
    {
      Uri localUri = getContentResolver().insert(android.a.w.a, localContentValues);
      Intent localIntent1 = new Intent("sms_send_action");
      localIntent1.putExtra("uri", localUri);
      Intent localIntent2 = new Intent("sms_delivered_action");
      PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this, 0, localIntent1, 134217728);
      PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this, 0, localIntent2, 134217728);
      if (paramString2.length() > 70)
      {
        Iterator localIterator = localSmsManager.divideMessage(paramString2).iterator();
        while (localIterator.hasNext())
          localSmsManager.sendTextMessage(paramString1, null, (String)localIterator.next(), localPendingIntent1, localPendingIntent2);
      }
      localSmsManager.sendTextMessage(paramString1, null, paramString2, localPendingIntent1, localPendingIntent2);
    }
    catch (Exception localException)
    {
    }
  }

  private void a(boolean paramBoolean)
  {
    String str1 = getIntent().getStringExtra(a);
    Cursor localCursor = getContentResolver().query(Uri.parse(str1), null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
      {
        int i1 = localCursor.getColumnIndex("body");
        int i2 = localCursor.getColumnIndex("date");
        int i3 = localCursor.getColumnIndex("address");
        int i4 = localCursor.getColumnIndex("thread_id");
        String str2 = localCursor.getString(i3);
        String str3 = localCursor.getString(i1);
        long l1 = localCursor.getLong(i2);
        long l2 = localCursor.getLong(i4);
        r localr = com.keniu.security.b.e.e(this);
        com.ijinshan.kinghelper.firewall.a.e.a(this);
        x localx = new x(this);
        str3.replaceAll("\r", "\n");
        localx.a = str1;
        localx.h = com.ijinshan.kinghelper.firewall.a.e.d(com.ijinshan.kinghelper.a.i.a(str2));
        localx.g = com.jxphone.mosecurity.d.a.a(this).a(com.ijinshan.kinghelper.a.i.a(str2), null);
        localx.e = false;
        localx.c = l1;
        localx.b = str3;
        localx.d = str2;
        localx.f = localr.a(com.ijinshan.kinghelper.a.i.a(str2));
        localx.i = l2;
        if (localx.f != null);
        for (boolean bool = true; ; bool = false)
        {
          com.jxphone.mosecurity.a.a.b(this, bool);
          ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
          View localView = getLayoutInflater().inflate(2130903207, null);
          ((TextView)localView.findViewById(2131231354)).setText(localx.b);
          localView.setLayoutParams(localLayoutParams);
          this.s.addView(localView, localLayoutParams);
          for (int i5 = 0; i5 < this.s.getChildCount(); i5++)
          {
            TextView localTextView = this.f;
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = Integer.valueOf(1 + this.s.a());
            arrayOfObject[1] = Integer.valueOf(this.s.getChildCount());
            localTextView.setText(String.format("%d/%d", arrayOfObject));
          }
        }
        this.r.a(localx);
        this.r.notifyDataSetChanged();
      }
      localCursor.close();
    }
    h.d(this);
    if (paramBoolean)
    {
      b(0);
      findViewById(2131230740).setVisibility(8);
      findViewById(2131230742).setVisibility(8);
    }
    while (true)
    {
      return;
      findViewById(2131230740).setVisibility(0);
      findViewById(2131230742).setVisibility(0);
    }
  }

  private void b()
  {
    int i1 = this.s.a();
    x localx = (x)this.r.getItem(i1);
    String str1 = com.ijinshan.kinghelper.a.i.a(this.m);
    com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
    if (com.ijinshan.kinghelper.firewall.a.e.a(str1, 1))
      Toast.makeText(this, 2131427630, 1).show();
    while (true)
    {
      return;
      if (com.ijinshan.kinghelper.firewall.a.e.a(str1, 2))
      {
        Toast.makeText(this, 2131427629, 1).show();
      }
      else
      {
        com.ijinshan.kinghelper.firewall.a.e.a(2, str1, "", 1);
        Toast.makeText(this, 2131429616, 1).show();
        Cursor localCursor = getContentResolver().query(Uri.parse(localx.a), null, null, null, null);
        if (localCursor != null)
        {
          int i2 = localCursor.getColumnIndex("address");
          int i3 = localCursor.getColumnIndex("body");
          int i4 = localCursor.getColumnIndex("subject");
          int i5 = localCursor.getColumnIndex("service_center");
          int i6 = localCursor.getColumnIndex("protocol");
          int i7 = localCursor.getColumnIndex("date");
          ContentValues localContentValues = new ContentValues();
          if (localCursor.moveToFirst())
          {
            String str2 = com.ijinshan.kinghelper.a.i.a(localCursor.getString(i2));
            String str3 = localCursor.getString(i3);
            com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
            localContentValues.clear();
            String str4 = localCursor.getString(i4);
            String str5 = localCursor.getString(i5);
            int i8 = localCursor.getInt(i6);
            long l1 = localCursor.getLong(i7);
            localContentValues.put("address", str2);
            localContentValues.put("subject", str4);
            localContentValues.put("service_center", str5);
            localContentValues.put("read", Integer.valueOf(1));
            localContentValues.put("protocol", Integer.valueOf(i8));
            localContentValues.put("body", str3.toString());
            localContentValues.put("date", Long.valueOf(l1));
            localContentValues.put("person", Integer.valueOf(-1));
            localContentValues.put("firewall_log_time", Long.valueOf(System.currentTimeMillis()));
            localContentValues.put("firewall_log_description", getString(2131427600));
            localContentValues.put("firewall_log_rule_id", Integer.valueOf(0));
            localContentValues.put("firewall_from", Integer.valueOf(com.ijinshan.kinghelper.firewall.a.a.f));
            localContentValues.put("logtype", Integer.valueOf(com.ijinshan.kinghelper.firewall.a.a.g));
            com.ijinshan.kinghelper.firewall.a.a.a(localContentValues);
          }
          localCursor.close();
        }
        b(false);
      }
    }
  }

  private void b(int paramInt)
  {
    if (paramInt >= this.r.getCount());
    while (true)
    {
      return;
      x localx = (x)this.r.getItem(paramInt);
      this.t = localx.f;
      String str;
      label47: label222: ContentValues localContentValues;
      if (this.t != null)
      {
        str = this.t.b();
        h.a(this, str, localx.b, localx.i);
        TextView localTextView1 = this.f;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(paramInt + 1);
        arrayOfObject1[1] = Integer.valueOf(this.c.size());
        localTextView1.setText(String.format("%d/%d", arrayOfObject1));
        this.g.setText(b.format(new Date(localx.c)));
        if (!localx.d.equals(this.m))
        {
          this.m = localx.d;
          this.d.setText(this.m);
          this.e.setText(this.m);
          if (this.t == null)
            break label367;
          this.d.setText(this.t.b());
          if (this.t.g() == null)
            break label354;
          this.h.setImageBitmap(this.t.g());
          this.n.setVisibility(4);
          if (!TextUtils.isEmpty(localx.g))
          {
            TextView localTextView3 = this.e;
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = this.m;
            arrayOfObject3[1] = localx.g;
            localTextView3.setText(String.format("%s(%s)", arrayOfObject3));
          }
        }
        label281: dd.a(this);
        if ((!dd.q()) || (localx.e))
          continue;
        localContentValues = new ContentValues();
        localContentValues.put("read", Integer.valueOf(1));
      }
      try
      {
        getContentResolver().update(Uri.parse(localx.a), localContentValues, null, null);
        localx.e = true;
        continue;
        str = localx.d;
        break label47;
        label354: this.h.setImageResource(2130837583);
        break label222;
        label367: if (!TextUtils.isEmpty(localx.h))
        {
          this.n.setVisibility(0);
          this.h.setImageResource(2130837583);
          this.d.setText(localx.h);
          break label281;
        }
        this.n.setVisibility(0);
        this.h.setImageResource(2130837583);
        if (!TextUtils.isEmpty(localx.g))
        {
          TextView localTextView2 = this.d;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = this.m;
          arrayOfObject2[1] = localx.g;
          localTextView2.setText(String.format("%s(%s)", arrayOfObject2));
        }
        this.e.setText(2131427597);
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  private void b(x paramx)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    View localView = getLayoutInflater().inflate(2130903207, null);
    ((TextView)localView.findViewById(2131231354)).setText(paramx.b);
    localView.setLayoutParams(localLayoutParams);
    this.s.addView(localView, localLayoutParams);
    for (int i1 = 0; i1 < this.s.getChildCount(); i1++)
    {
      TextView localTextView = this.f;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(1 + this.s.a());
      arrayOfObject[1] = Integer.valueOf(this.s.getChildCount());
      localTextView.setText(String.format("%d/%d", arrayOfObject));
    }
  }

  private void b(boolean paramBoolean)
  {
    int i1 = this.s.a();
    x localx = (x)this.r.getItem(i1);
    if ((localx.f == null) && (TextUtils.isEmpty(localx.h)))
    {
      dd.a(this);
      if ((dd.j()) && (at.b(this)))
        com.ijinshan.kinghelper.firewall.core.i.a(this, localx.d, localx.b, 16, "");
    }
    try
    {
      getContentResolver().delete(Uri.parse(localx.a), null, null);
      if (paramBoolean)
        Toast.makeText(this, 2131429618, 1).show();
      this.r.a(i1);
      if (this.r.getCount() == 1)
      {
        this.j.setVisibility(8);
        this.k.setVisibility(8);
      }
      this.s.removeViewAt(i1);
      if (this.r.getCount() == 0)
      {
        finish();
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        if (paramBoolean)
        {
          Toast.makeText(this, 2131429617, 1).show();
          continue;
          this.r.notifyDataSetChanged();
          if (i1 < this.r.getCount())
          {
            this.s.a(i1);
            b(i1);
          }
          else if (i1 - 1 >= 0)
          {
            this.s.a(i1 - 1);
            b(i1 - 1);
          }
        }
    }
  }

  public final void a(int paramInt1, int paramInt2, long paramLong)
  {
    if (paramInt1 != paramInt2)
    {
      w localw = new w(this, paramInt1);
      this.y.postDelayed(localw, paramLong);
    }
  }

  public void onClick(View paramView)
  {
    String str1;
    if (paramView.getId() == 2131230744)
    {
      str1 = this.l.getText().toString();
      if (TextUtils.isEmpty(str1))
        Toast.makeText(this, 2131429613, 1).show();
    }
    while (true)
    {
      return;
      String str2 = this.m;
      SmsManager localSmsManager = SmsManager.getDefault();
      ContentValues localContentValues = new ContentValues();
      Long localLong = Long.valueOf(Calendar.getInstance().getTime().getTime());
      localContentValues.put("address", str2);
      localContentValues.put("body", str1.toString());
      localContentValues.put("protocol", "0");
      localContentValues.put("date", localLong);
      localContentValues.put("status", Integer.toString(0));
      localContentValues.put("type", "2");
      localContentValues.put("read", "1");
      PendingIntent localPendingIntent1;
      PendingIntent localPendingIntent2;
      try
      {
        Uri localUri = getContentResolver().insert(android.a.w.a, localContentValues);
        Intent localIntent2 = new Intent("sms_send_action");
        localIntent2.putExtra("uri", localUri);
        Intent localIntent3 = new Intent("sms_delivered_action");
        localPendingIntent1 = PendingIntent.getBroadcast(this, 0, localIntent2, 134217728);
        localPendingIntent2 = PendingIntent.getBroadcast(this, 0, localIntent3, 134217728);
        if (str1.length() > 70)
        {
          Iterator localIterator = localSmsManager.divideMessage(str1).iterator();
          while (localIterator.hasNext())
            localSmsManager.sendTextMessage(str2, null, (String)localIterator.next(), localPendingIntent1, localPendingIntent2);
        }
      }
      catch (Exception localException)
      {
      }
      while (true)
      {
        Toast.makeText(this, 2131429612, 1).show();
        finish();
        break;
        localSmsManager.sendTextMessage(str2, null, str1, localPendingIntent1, localPendingIntent2);
      }
      if (paramView.getId() == 2131230745)
      {
        int i3 = this.s.a();
        if (i3 <= this.r.getCount() - 1)
        {
          x localx = (x)this.r.getItem(i3);
          Intent localIntent1 = new Intent("android.intent.action.VIEW");
          localIntent1.setData(Uri.parse("content://mms-sms/conversations/" + localx.i));
          localIntent1.setFlags(335544320);
          startActivity(localIntent1);
          finish();
        }
      }
      else if (paramView.getId() == 2131230736)
      {
        finish();
      }
      else if (paramView.getId() == 2131230747)
      {
        aq localaq1 = new aq(this, (byte)0);
        localaq1.b(2131429614);
        localaq1.a(2131427865);
        localaq1.a(getString(2131427653), new u(this));
        localaq1.b(getString(2131427654), null);
        localaq1.c().show();
      }
      else if (paramView.getId() == 2131230746)
      {
        aq localaq2 = new aq(this, (byte)0);
        localaq2.b(2131429615);
        localaq2.a(2131427865);
        localaq2.a(getString(2131427653), new v(this));
        localaq2.b(getString(2131427654), null);
        localaq2.c().show();
      }
      else if (paramView.getId() == 2131230740)
      {
        int i2 = this.s.a();
        if (i2 > 0)
        {
          this.s.a(i2 - 1);
          b(i2 - 1);
        }
      }
      else if (paramView.getId() == 2131230742)
      {
        int i1 = this.s.a();
        if (i1 + 1 < this.r.getCount())
        {
          this.s.a(i1 + 1);
          b(i1 + 1);
        }
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.v.a(this);
    IntentFilter localIntentFilter = new IntentFilter(BroadcastRecSms.a);
    localIntentFilter.setPriority(1);
    registerReceiver(this.v, localIntentFilter);
    setContentView(2130903042);
    this.o = ((LayoutInflater)getSystemService("layout_inflater"));
    this.s = ((ScrollLayout)findViewById(2131230741));
    this.s.a(this);
    this.d = ((TextView)findViewById(2131230734));
    this.e = ((TextView)findViewById(2131230735));
    this.f = ((TextView)findViewById(2131230738));
    this.g = ((TextView)findViewById(2131230739));
    this.h = ((ImageView)findViewById(2131230733));
    this.i = ((ImageView)findViewById(2131230736));
    this.j = ((ImageView)findViewById(2131230740));
    this.k = ((ImageView)findViewById(2131230742));
    this.l = ((EditText)findViewById(2131230743));
    this.n = ((TextView)findViewById(2131230746));
    this.p = ((LinearLayout)findViewById(2131230729));
    this.q = ((LinearLayout)findViewById(2131230737));
    this.u = ((Button)findViewById(2131230744));
    this.w = new t(this);
    this.x = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
    this.x.registerOnSharedPreferenceChangeListener(this.w);
    a(Integer.parseInt(this.x.getString(getString(2131427840), "0")));
    findViewById(2131230744).setOnClickListener(this);
    findViewById(2131230747).setOnClickListener(this);
    findViewById(2131230745).setOnClickListener(this);
    findViewById(2131230746).setOnClickListener(this);
    findViewById(2131230736).setOnClickListener(this);
    findViewById(2131230742).setOnClickListener(this);
    findViewById(2131230740).setOnClickListener(this);
    this.r = new y(this);
    a(true);
  }

  protected void onDestroy()
  {
    h.c(this);
    super.onDestroy();
    if (this.v != null)
      unregisterReceiver(this.v);
    if (this.w != null)
      this.x.unregisterOnSharedPreferenceChangeListener(this.w);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    System.out.println("keyCode: " + paramInt);
    if (paramInt == 3)
    {
      System.out.println("home key down");
      h.c(this);
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    a(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallDeskSMSActivityApiLevel4
 * JD-Core Version:    0.6.2
 */