package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.app.Dialog;
import android.content.ContentValues;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.common.PickListActivity;
import com.ijinshan.kinghelper.firewall.core.h;
import com.keniu.security.b.r;
import com.keniu.security.util.af;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class FirewallLogDetailActivity extends Activity
  implements View.OnClickListener
{
  public static final String a = "FirewallLogDetailActivity_LOG_TYPE";
  public static final String b = "FirewallLogDetailActivity_LOG_TYPE_SMS";
  public static final String c = "FirewallLogDetailActivity_LOG_TYPE_CALL";
  public static final String d = "FirewallLogDetailActivity_LOG_FromNotify";
  public static final String e = "FirewallLogDetailActivity_LOG_ID";
  private static final SimpleDateFormat f = new SimpleDateFormat("HH:mm MM/dd");
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private String o;
  private String p;
  private int q = com.ijinshan.kinghelper.firewall.a.a.g;
  private String r;
  private long s;
  private String t;
  private boolean u = false;
  private String v = null;

  private static String a(long paramLong)
  {
    String str;
    if (paramLong < 1024L)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Long.valueOf(paramLong);
      str = String.format("%dB", arrayOfObject4);
    }
    while (true)
    {
      return str;
      if ((paramLong >= 1024L) && (paramLong <= 1048576L))
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Long.valueOf(paramLong / 1024L);
        str = String.format("%dKB", arrayOfObject3);
      }
      else if ((paramLong >= 1048576L) && (paramLong <= 1073741824L))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(paramLong / 1048576L);
        str = String.format("%dMB", arrayOfObject2);
      }
      else
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(paramLong / 1073741824L);
        str = String.format("%dGB", arrayOfObject1);
      }
    }
  }

  private void a()
  {
    this.u = getIntent().getBooleanExtra("FirewallLogDetailActivity_LOG_FromNotify", false);
    this.t = getIntent().getStringExtra("FirewallLogDetailActivity_LOG_TYPE");
    String str3;
    String str4;
    long l3;
    String str5;
    if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t))
    {
      this.l.setText(2131427614);
      com.ijinshan.kinghelper.firewall.a.a.a(this);
      this.s = getIntent().getIntExtra("FirewallLogDetailActivity_LOG_ID", -1);
      if (this.s >= 0L)
      {
        Cursor localCursor2 = com.ijinshan.kinghelper.firewall.a.a.c((int)this.s);
        if ((localCursor2 != null) && (localCursor2.moveToFirst()))
        {
          this.o = localCursor2.getString(localCursor2.getColumnIndex("address"));
          this.q = localCursor2.getInt(localCursor2.getColumnIndex("logtype"));
          str3 = com.ijinshan.kinghelper.firewall.a.e.d(com.ijinshan.kinghelper.a.i.a(this.o));
          if (TextUtils.isEmpty(str3))
            str3 = com.jxphone.mosecurity.d.a.a(this).a(com.ijinshan.kinghelper.a.i.a(this.o), getString(2131427718));
          str4 = j.a(this, com.ijinshan.kinghelper.a.i.a(this.o));
          if (this.q == com.ijinshan.kinghelper.firewall.a.a.i)
          {
            this.g.setText(2131427854);
            this.p = localCursor2.getString(localCursor2.getColumnIndex("firewall_log_description"));
            TextView localTextView2 = this.i;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = com.ijinshan.kinghelper.firewall.a.a.a(this, this.p, this.q);
            localTextView2.setText(getString(2131427645, arrayOfObject2));
            long l2 = localCursor2.getLong(localCursor2.getColumnIndex("firewall_log_time"));
            this.h.setText(f.format(new Date(l2)));
            this.v = localCursor2.getString(localCursor2.getColumnIndex("body"));
            this.k.setText(this.v);
            if (this.q == com.ijinshan.kinghelper.firewall.a.a.h)
            {
              l3 = localCursor2.getInt(localCursor2.getColumnIndex("m_size"));
              long l4 = localCursor2.getInt(localCursor2.getColumnIndex("exp"));
              if (l3 >= 1024L)
                break label802;
              Object[] arrayOfObject7 = new Object[1];
              arrayOfObject7[0] = Long.valueOf(l3);
              str5 = String.format("%dB", arrayOfObject7);
              label428: this.v = ("大小：" + str5 + "过期时间:" + f.format(new Date(l4)));
              String str6 = f.format(new Date(l4 * 1000L));
              Object[] arrayOfObject4 = new Object[3];
              arrayOfObject4[0] = this.p;
              arrayOfObject4[1] = str5;
              arrayOfObject4[2] = str6;
              this.v = getString(2131427857, arrayOfObject4);
            }
            this.k.setText(this.v);
            if (this.q == com.ijinshan.kinghelper.firewall.a.a.i)
            {
              this.l.setText(2131427855);
              int i1 = this.v.indexOf("http://");
              if (i1 > 0)
                this.r = this.v.substring(i1);
            }
            localCursor2.close();
          }
        }
        else
        {
          ContentValues localContentValues2 = new ContentValues();
          localContentValues2.put("read", Integer.valueOf(1));
          com.ijinshan.kinghelper.firewall.a.a.b(this.s, localContentValues2);
        }
      }
      else
      {
        if (this.q != com.ijinshan.kinghelper.firewall.a.a.i)
          break label931;
        findViewById(2131230811).setVisibility(8);
        ((ImageView)findViewById(2131230809)).setImageDrawable(getResources().getDrawable(2130837613));
        label679: if (getIntent().getBooleanExtra("FirewallLogDetailActivity_LOG_FromNotify", false))
          com.jxphone.mosecurity.a.a.b(this, "2");
      }
    }
    while (true)
    {
      return;
      if ((str4 != null) && (!"".equals(str4)))
      {
        this.g.setText(str4 + "(" + str3 + ")");
        break;
      }
      this.g.setText(this.o + "(" + str3 + ")");
      break;
      label802: if ((l3 >= 1024L) && (l3 <= 1048576L))
      {
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Long.valueOf(l3 / 1024L);
        str5 = String.format("%dKB", arrayOfObject6);
        break label428;
      }
      if ((l3 >= 1048576L) && (l3 <= 1073741824L))
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Long.valueOf(l3 / 1048576L);
        str5 = String.format("%dMB", arrayOfObject5);
        break label428;
      }
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Long.valueOf(l3 / 1073741824L);
      str5 = String.format("%dGB", arrayOfObject3);
      break label428;
      label931: this.n.setVisibility(0);
      break label679;
      if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_CALL", this.t))
      {
        this.l.setText(2131427615);
        com.ijinshan.kinghelper.firewall.a.a.a(this);
        this.s = getIntent().getIntExtra("FirewallLogDetailActivity_LOG_ID", -1);
        String str2;
        if (this.s >= 0L)
        {
          Cursor localCursor1 = com.ijinshan.kinghelper.firewall.a.a.d((int)this.s);
          if ((localCursor1 != null) && (localCursor1.moveToFirst()))
          {
            this.o = localCursor1.getString(localCursor1.getColumnIndex("number"));
            this.o = com.ijinshan.kinghelper.a.i.a(this.o);
            String str1 = j.a(this, com.ijinshan.kinghelper.a.i.a(this.o));
            str2 = com.ijinshan.kinghelper.firewall.a.e.d(com.ijinshan.kinghelper.a.i.a(this.o));
            if (TextUtils.isEmpty(str2))
              str2 = com.jxphone.mosecurity.d.a.a(this).a(com.ijinshan.kinghelper.a.i.a(this.o), getString(2131427718));
            if ((str1 != null) && (!"".equals(str1)))
            {
              this.g.setText(str1 + "(" + str2 + ")");
              label1154: this.p = localCursor1.getString(localCursor1.getColumnIndex("firewall_log_description"));
              TextView localTextView1 = this.i;
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = com.ijinshan.kinghelper.firewall.a.a.a(this, this.p);
              localTextView1.setText(getString(2131427644, arrayOfObject1));
              long l1 = localCursor1.getLong(localCursor1.getColumnIndex("date"));
              this.h.setText(f.format(new Date(l1)));
              this.k.setText("");
              localCursor1.close();
            }
          }
          else
          {
            ContentValues localContentValues1 = new ContentValues();
            localContentValues1.put("new", Integer.valueOf(0));
            com.ijinshan.kinghelper.firewall.a.a.a(this.s, localContentValues1);
          }
        }
        else
        {
          this.n.setVisibility(0);
          this.j.setText("来电人：");
          if (!TextUtils.isEmpty(this.o))
            break label1406;
          this.n.setVisibility(8);
          this.l.setVisibility(8);
        }
        while (true)
        {
          if (!getIntent().getBooleanExtra("FirewallLogDetailActivity_LOG_FromNotify", false))
            break label1423;
          com.jxphone.mosecurity.a.a.b(this, "4");
          break;
          this.g.setText(this.o + "(" + str2 + ")");
          break label1154;
          label1406: this.n.setVisibility(0);
          this.l.setVisibility(0);
        }
      }
      else
      {
        label1423: finish();
      }
    }
  }

  private void a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(com.ijinshan.kinghelper.a.i.a(this.o));
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      com.ijinshan.kinghelper.firewall.a.a.a(this);
      if (com.ijinshan.kinghelper.firewall.a.a.b((int)this.s) > 0);
      for (int i1 = 2131427621; ; i1 = 2131427623)
      {
        Toast.makeText(this, i1, 0).show();
        finish();
        break;
      }
      a(false, this.s);
      continue;
      com.ijinshan.kinghelper.firewall.core.i.b(getApplicationContext(), this.o, null, 4, null);
      if (j.c(this))
        Toast.makeText(this, 2131427632, 1).show();
      while (true)
      {
        finish();
        break;
        Toast.makeText(this, 2131427633, 1).show();
      }
      Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.o));
      try
      {
        startActivity(localIntent2);
      }
      catch (Exception localException)
      {
        Toast.makeText(this, getString(2131427403), 0).show();
      }
      continue;
      if (com.keniu.security.b.e.e(this).a(this.o) != null)
      {
        Toast.makeText(this, 2131427622, 1).show();
      }
      else
      {
        Intent localIntent1 = new Intent("android.intent.action.INSERT");
        localIntent1.setType("vnd.android.cursor.dir/person");
        localIntent1.setType("vnd.android.cursor.dir/contact");
        localIntent1.setType("vnd.android.cursor.dir/raw_contact");
        localIntent1.putExtra("phone", this.o);
        startActivity(localIntent1);
        continue;
        PickListActivity.a(this, localArrayList, 1, 1, "PickListActivity1_white_action");
        finish();
        continue;
        PickListActivity.a(this, localArrayList, 2, 1, "_PickListActivity1_black_action");
        finish();
      }
    }
  }

  private void a(boolean paramBoolean, long paramLong)
  {
    dd.a(this);
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427712);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.b(2131427654, new z(this));
    localaq.a(2131427653, new aa(this, paramBoolean, paramLong));
    ap localap = localaq.c();
    localap.setOnDismissListener(new ab(this));
    localap.show();
  }

  private void b()
  {
    this.l.setText(2131427615);
    com.ijinshan.kinghelper.firewall.a.a.a(this);
    this.s = getIntent().getIntExtra("FirewallLogDetailActivity_LOG_ID", -1);
    Cursor localCursor;
    String str2;
    if (this.s >= 0L)
    {
      localCursor = com.ijinshan.kinghelper.firewall.a.a.d((int)this.s);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        this.o = localCursor.getString(localCursor.getColumnIndex("number"));
        this.o = com.ijinshan.kinghelper.a.i.a(this.o);
        String str1 = j.a(this, com.ijinshan.kinghelper.a.i.a(this.o));
        str2 = com.ijinshan.kinghelper.firewall.a.e.d(com.ijinshan.kinghelper.a.i.a(this.o));
        if (TextUtils.isEmpty(str2))
          str2 = com.jxphone.mosecurity.d.a.a(this).a(com.ijinshan.kinghelper.a.i.a(this.o), getString(2131427718));
        if ((str1 == null) || ("".equals(str1)))
          break label340;
        this.g.setText(str1 + "(" + str2 + ")");
      }
    }
    while (true)
    {
      this.p = localCursor.getString(localCursor.getColumnIndex("firewall_log_description"));
      TextView localTextView = this.i;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = com.ijinshan.kinghelper.firewall.a.a.a(this, this.p);
      localTextView.setText(getString(2131427644, arrayOfObject));
      long l1 = localCursor.getLong(localCursor.getColumnIndex("date"));
      this.h.setText(f.format(new Date(l1)));
      this.k.setText("");
      localCursor.close();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("new", Integer.valueOf(0));
      com.ijinshan.kinghelper.firewall.a.a.a(this.s, localContentValues);
      return;
      label340: this.g.setText(this.o + "(" + str2 + ")");
    }
  }

  private void b(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(com.ijinshan.kinghelper.a.i.a(this.o));
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      com.ijinshan.kinghelper.firewall.a.a.a(this);
      if (com.ijinshan.kinghelper.firewall.a.a.a((int)this.s) > 0);
      for (int i1 = 2131427621; ; i1 = 2131427623)
      {
        Toast.makeText(this, i1, 0).show();
        finish();
        break;
      }
      a(true, this.s);
      continue;
      af.e(this, this.o);
      continue;
      Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.o));
      try
      {
        startActivity(localIntent2);
      }
      catch (Exception localException)
      {
        Toast.makeText(this, getString(2131427403), 0).show();
      }
      continue;
      af.f(this, this.v);
      continue;
      if (com.keniu.security.b.e.e(this).a(this.o) != null)
      {
        Toast.makeText(this, 2131427622, 1).show();
      }
      else
      {
        Intent localIntent1 = new Intent("android.intent.action.INSERT");
        localIntent1.setType("vnd.android.cursor.dir/person");
        localIntent1.setType("vnd.android.cursor.dir/contact");
        localIntent1.setType("vnd.android.cursor.dir/raw_contact");
        localIntent1.putExtra("phone", this.o);
        startActivity(localIntent1);
        continue;
        PickListActivity.a(this, localArrayList, 1, 1, "PickListActivity1_white_action");
        finish();
        continue;
        PickListActivity.a(this, localArrayList, 2, 1, "_PickListActivity1_black_action");
        finish();
      }
    }
  }

  private void c()
  {
    this.l.setText(2131427614);
    com.ijinshan.kinghelper.firewall.a.a.a(this);
    this.s = getIntent().getIntExtra("FirewallLogDetailActivity_LOG_ID", -1);
    Cursor localCursor;
    String str1;
    String str2;
    long l2;
    long l3;
    String str3;
    if (this.s >= 0L)
    {
      localCursor = com.ijinshan.kinghelper.firewall.a.a.c((int)this.s);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        this.o = localCursor.getString(localCursor.getColumnIndex("address"));
        this.q = localCursor.getInt(localCursor.getColumnIndex("logtype"));
        str1 = com.ijinshan.kinghelper.firewall.a.e.d(com.ijinshan.kinghelper.a.i.a(this.o));
        if (TextUtils.isEmpty(str1))
          str1 = com.jxphone.mosecurity.d.a.a(this).a(com.ijinshan.kinghelper.a.i.a(this.o), getString(2131427718));
        str2 = j.a(this, com.ijinshan.kinghelper.a.i.a(this.o));
        if (this.q != com.ijinshan.kinghelper.firewall.a.a.i)
          break label575;
        this.g.setText(2131427854);
        this.p = localCursor.getString(localCursor.getColumnIndex("firewall_log_description"));
        TextView localTextView = this.i;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = com.ijinshan.kinghelper.firewall.a.a.a(this, this.p, this.q);
        localTextView.setText(getString(2131427645, arrayOfObject1));
        long l1 = localCursor.getLong(localCursor.getColumnIndex("firewall_log_time"));
        this.h.setText(f.format(new Date(l1)));
        this.v = localCursor.getString(localCursor.getColumnIndex("body"));
        this.k.setText(this.v);
        if (this.q == com.ijinshan.kinghelper.firewall.a.a.h)
        {
          l2 = localCursor.getInt(localCursor.getColumnIndex("m_size"));
          l3 = localCursor.getInt(localCursor.getColumnIndex("exp"));
          if (l2 >= 1024L)
            break label677;
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Long.valueOf(l2);
          str3 = String.format("%dB", arrayOfObject6);
        }
      }
    }
    while (true)
    {
      this.v = ("大小：" + str3 + "过期时间:" + f.format(new Date(l3)));
      String str4 = f.format(new Date(l3 * 1000L));
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = this.p;
      arrayOfObject3[1] = str3;
      arrayOfObject3[2] = str4;
      this.v = getString(2131427857, arrayOfObject3);
      this.k.setText(this.v);
      if (this.q == com.ijinshan.kinghelper.firewall.a.a.i)
      {
        this.l.setText(2131427855);
        int i1 = this.v.indexOf("http://");
        if (i1 > 0)
          this.r = this.v.substring(i1);
      }
      localCursor.close();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("read", Integer.valueOf(1));
      com.ijinshan.kinghelper.firewall.a.a.b(this.s, localContentValues);
      return;
      label575: if ((str2 != null) && (!"".equals(str2)))
      {
        this.g.setText(str2 + "(" + str1 + ")");
        break;
      }
      this.g.setText(this.o + "(" + str1 + ")");
      break;
      label677: if ((l2 >= 1024L) && (l2 <= 1048576L))
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Long.valueOf(l2 / 1024L);
        str3 = String.format("%dKB", arrayOfObject5);
      }
      else if ((l2 >= 1048576L) && (l2 <= 1073741824L))
      {
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Long.valueOf(l2 / 1048576L);
        str3 = String.format("%dMB", arrayOfObject4);
      }
      else
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(l2 / 1073741824L);
        str3 = String.format("%dGB", arrayOfObject2);
      }
    }
  }

  private void d()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    localaq.b(getString(2131427521));
    localaq.b(2131427542, null);
    localaq.a(2131427541, new ad(this));
    localaq.d();
  }

  private void e()
  {
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    String str = com.ijinshan.kinghelper.a.i.a(this.o);
    if (TextUtils.isEmpty(str))
      return;
    int i1;
    if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t))
      i1 = com.ijinshan.kinghelper.firewall.a.a.f((int)this.s);
    while (true)
    {
      label44: com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
      if ((!com.ijinshan.kinghelper.firewall.a.e.a(str, 1)) && (!com.ijinshan.kinghelper.firewall.a.e.a(str, 2)))
        com.ijinshan.kinghelper.firewall.a.e.a(1, str, "", 1);
      int i2;
      if (i1 > 0)
        if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t))
          i2 = 2131427624;
      while (true)
      {
        Toast.makeText(this, i2, 0).show();
        finish();
        break;
        if (!TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_CALL", this.t))
          break label151;
        i1 = com.ijinshan.kinghelper.firewall.a.a.e((int)this.s);
        break label44;
        i2 = 2131427625;
        continue;
        i2 = 2131427626;
      }
      label151: i1 = 0;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131230807:
    case 2131230809:
    case 2131230810:
    default:
    case 2131230808:
    case 2131230806:
      while (true)
      {
        return;
        if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t))
        {
          if (this.q == com.ijinshan.kinghelper.firewall.a.a.i)
          {
            if (!TextUtils.isEmpty(this.r))
              af.a(this, this.r);
            com.jxphone.mosecurity.a.a.i(this, "opwappushurl");
          }
          else if (this.q == com.ijinshan.kinghelper.firewall.a.a.h)
          {
            com.jxphone.mosecurity.a.a.i(this, "restoremms");
          }
        }
        else
        {
          while (true)
          {
            a(TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t), this.s);
            break;
            com.ijinshan.kinghelper.firewall.a.a.a(this);
            Cursor localCursor = com.ijinshan.kinghelper.firewall.a.a.c((int)this.s);
            if ((localCursor != null) && (localCursor.moveToFirst()))
            {
              com.jxphone.mosecurity.a.a.a(this, "1", localCursor.getInt(localCursor.getColumnIndex("firewall_from")));
              localCursor.close();
              continue;
              com.jxphone.mosecurity.a.a.a(this, "2", 0);
            }
          }
          aq localaq2 = new aq(this, (byte)0);
          localaq2.a(2131427519);
          localaq2.b(getString(2131427521));
          localaq2.b(2131427542, null);
          localaq2.a(2131427541, new ad(this));
          localaq2.d();
        }
      }
    case 2131230811:
    }
    if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t));
    for (String[] arrayOfString = getResources().getStringArray(2131165198); ; arrayOfString = getResources().getStringArray(2131165196))
    {
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a("更多操作");
      localaq1.a(arrayOfString, new ac(this));
      localaq1.c().show();
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903048);
    ((TextView)findViewById(2131230727)).setText(2131427342);
    this.g = ((TextView)findViewById(2131230800));
    this.j = ((TextView)findViewById(2131230799));
    this.h = ((TextView)findViewById(2131230801));
    this.i = ((TextView)findViewById(2131230804));
    this.k = ((TextView)findViewById(2131230805));
    this.l = ((TextView)findViewById(2131230810));
    this.m = ((TextView)findViewById(2131230807));
    this.n = ((TextView)findViewById(2131230812));
    this.g.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.k.setOnClickListener(this);
    findViewById(2131230808).setOnClickListener(this);
    findViewById(2131230806).setOnClickListener(this);
    findViewById(2131230811).setOnClickListener(this);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Intent localIntent;
    if ((paramInt == 4) && (this.u))
    {
      localIntent = new Intent(this, FirewallLogTabActivity.class);
      if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", this.t))
      {
        localIntent.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
        startActivity(localIntent);
        finish();
      }
    }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
    {
      return bool;
      localIntent.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
      break;
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    a();
  }

  protected void onStart()
  {
    super.onStart();
    a();
    h.b(this);
    System.out.println("firewallLogDetailActivity onstart");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallLogDetailActivity
 * JD-Core Version:    0.6.2
 */