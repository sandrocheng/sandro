package com.keniu.security.sync.ui;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.c.i;
import com.keniu.security.sync.c.m;
import com.keniu.security.sync.d;
import com.keniu.security.sync.l;
import com.keniu.security.sync.y;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class SyncBackupActivity extends BaseTitleActivity
{
  public int[] a = { -11, -11, -11, -11 };
  private Button b;
  private List c;
  private ListView d;
  private w e;
  private boolean[] f = { 1, 1, 1 };
  private int g = 0;
  private int h = 0;
  private String i = null;
  private com.keniu.security.sync.k j = com.keniu.security.sync.k.a();
  private int k = 0;
  private final AdapterView.OnItemClickListener l = new r(this);
  private View.OnClickListener m = new s(this);
  private Handler n = new v(this);

  private void a(Handler paramHandler)
  {
    new i(paramHandler, this, this.k).execute(new String[0]);
  }

  private void b(Handler paramHandler)
  {
    String str;
    if (this.k == 0)
    {
      m localm = new m(paramHandler, this.f, this);
      String[] arrayOfString = new String[3];
      if (this.i != null)
      {
        str = this.i;
        arrayOfString[0] = str;
        arrayOfString[1] = (this.a[0] + "");
        arrayOfString[2] = (this.a[1] + "");
        localm.execute(arrayOfString);
      }
    }
    while (true)
    {
      return;
      str = "login#" + this.j.c("user_name") + "#" + this.j.c("pass_word");
      break;
      if (this.f[2] != 0)
        new com.keniu.security.sync.c.k(paramHandler, this).execute(new String[0]);
      else
        a();
    }
  }

  private void c()
  {
    if ((!this.j.b("no_more_backup_tip")) && ((this.j.b("sync_backup_time_key")) || (this.g < 10) || (this.h < 10)))
    {
      View localView = LayoutInflater.from(this).inflate(2130903176, null);
      ((CheckBox)localView.findViewById(2131231311)).setOnCheckedChangeListener(new t(this));
      if (!this.j.b("no_more_backup_tip"))
        this.j.a("no_more_backup_tip", Boolean.valueOf(true));
      new aq(this, (byte)0).a(2131427865).a(localView).a(2131427864, new u(this)).b(2131427866, null).d();
    }
    while (true)
    {
      return;
      d();
    }
  }

  private void d()
  {
    switch (com.keniu.security.sync.r.b(this.f))
    {
    default:
      if ((this.k != 0) || (com.keniu.security.sync.r.b(this)))
        break;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      if (this.g != 0)
        break;
      l.a(this, 2131429546);
      break;
      if (this.h != 0)
        break;
      l.a(this, 2131429547);
      break;
      if ((this.g != 0) || (this.h != 0))
        break;
      l.a(this, 2131429548);
      break;
      com.jxphone.mosecurity.a.a.a(this, "synco", "9", "");
      if ((this.f[0] != 0) && (this.g > 0))
        new com.keniu.security.sync.c.a(this.n, this, this.k).execute(new String[0]);
      else if ((this.f[1] != 0) && (this.h > 0))
        a(this.n);
      else if (this.f[2] != 0)
        b(this.n);
    }
  }

  private void e()
  {
    switch (com.keniu.security.sync.r.b(this.f))
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      if (this.g == 0)
      {
        l.a(this, 2131429546);
        continue;
        if (this.h == 0)
        {
          l.a(this, 2131429547);
          continue;
          if ((this.g == 0) && (this.h == 0))
            l.a(this, 2131429548);
        }
      }
    }
  }

  private void f()
  {
    Cursor localCursor1 = com.keniu.security.sync.r.a(this).b();
    int i4;
    if (localCursor1 != null)
    {
      i4 = localCursor1.getCount();
      localCursor1.close();
    }
    for (int i1 = i4; ; i1 = 0)
    {
      this.g = i1;
      Cursor localCursor2 = getContentResolver().query(android.a.t.a, null, null, null, "date DESC");
      int i3;
      if (localCursor2 != null)
      {
        i3 = localCursor2.getCount();
        localCursor2.close();
      }
      for (int i2 = i3; ; i2 = 0)
      {
        this.h = (i2 + h.a(this).a(c.b).length);
        HashMap localHashMap1 = new HashMap();
        localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
        localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
        String str1 = getString(2131429517);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.g);
        String str2 = String.format(str1, arrayOfObject1);
        localHashMap1.put("VMAP_ITEM_DESC", getString(2131429516) + str2);
        this.c.add(localHashMap1);
        HashMap localHashMap2 = new HashMap();
        localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
        localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429518));
        String str3 = getString(2131429517);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.h);
        String str4 = String.format(str3, arrayOfObject2);
        localHashMap2.put("VMAP_ITEM_DESC", getString(2131429519) + str4);
        this.c.add(localHashMap2);
        HashMap localHashMap3 = new HashMap();
        localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837780));
        localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429520));
        localHashMap3.put("VMAP_ITEM_DESC", getString(2131429521));
        this.c.add(localHashMap3);
        return;
      }
    }
  }

  private int g()
  {
    Cursor localCursor = com.keniu.security.sync.r.a(this).b();
    int i1 = 0;
    if (localCursor != null)
    {
      i1 = localCursor.getCount();
      localCursor.close();
    }
    return i1;
  }

  private int h()
  {
    Cursor localCursor = getContentResolver().query(android.a.t.a, null, null, null, "date DESC");
    int i1 = 0;
    if (localCursor != null)
    {
      i1 = localCursor.getCount();
      localCursor.close();
    }
    return i1 + h.a(this).a(c.b).length;
  }

  public final void a()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131429526));
    int i1;
    int i2;
    label72: StringBuffer localStringBuffer;
    label149: String str3;
    label176: label235: String str2;
    if (this.k == 1)
    {
      int[] arrayOfInt4 = this.a;
      if (this.a[0] > 0)
      {
        i1 = 0;
        arrayOfInt4[0] = i1;
        int[] arrayOfInt5 = this.a;
        if (this.a[1] <= 0)
          break label524;
        i2 = 0;
        arrayOfInt5[1] = i2;
      }
    }
    else
    {
      localStringBuffer = new StringBuffer();
      if (this.a[0] != -11)
      {
        if (this.a[0] != 0)
          break label535;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.g);
        localStringBuffer.append(getString(2131429549, arrayOfObject2));
        if (y.b(0))
          y.c(0);
      }
      if (this.a[1] != -11)
      {
        if (this.a[0] == -11)
          break label575;
        str3 = "<br>";
        localStringBuffer.append(str3);
        if (this.a[1] != 0)
          break label582;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.h);
        localStringBuffer.append(getString(2131429550, arrayOfObject1));
        if (y.b(1))
          y.c(1);
      }
      if (this.a[2] != -11)
      {
        if ((this.a[1] == -11) && (this.a[0] == -11))
          break label622;
        str2 = "<br>";
        label273: localStringBuffer.append(str2);
        if ((this.a[2] != 0) && (this.a[3] != 0))
          break label629;
        localStringBuffer.append(getString(2131429551));
      }
      label310: if (this.k == 1)
        if ((this.a[2] == -11) && (this.a[1] == -11) && (this.a[0] == -11))
          break label669;
    }
    label524: label535: label669: for (String str1 = "<br>"; ; str1 = "")
    {
      localStringBuffer.append(str1);
      localStringBuffer.append(getString(2131429588));
      localaq.b(Html.fromHtml(localStringBuffer.toString()));
      localaq.b(getString(2131428298), null);
      if ((this != null) && (!isFinishing()))
        localaq.c().show();
      if (this.k == 1)
        this.j.a("local_last_record", System.currentTimeMillis() + "");
      int[] arrayOfInt1 = this.a;
      int[] arrayOfInt2 = this.a;
      int[] arrayOfInt3 = this.a;
      this.a[3] = -11;
      arrayOfInt3[2] = -11;
      arrayOfInt2[1] = -11;
      arrayOfInt1[0] = -11;
      com.jxphone.mosecurity.a.a.a(this, "synco", "3", "");
      return;
      i1 = this.a[0];
      break;
      i2 = this.a[1];
      break label72;
      localStringBuffer.append("<font color='red'>" + getString(2131429554) + "</font>");
      break label149;
      label575: str3 = "";
      break label176;
      label582: localStringBuffer.append("<font color='red'>" + getString(2131429555) + "</font>");
      break label235;
      label622: str2 = "";
      break label273;
      label629: localStringBuffer.append("<font color='red'>" + getString(2131429556) + "</font>");
      break label310;
    }
  }

  public final void b()
  {
    int i1 = this.g;
    int i2 = this.h;
    if (this.f[0] == 0)
      i1 = 0;
    if (this.f[1] == 0)
      i2 = 0;
    this.j.a(getString(2131429500), com.keniu.security.sync.r.aO.format(new Date()));
    if (i1 != 0)
      this.j.a(getString(2131429498), i1);
    if (i2 != 0)
      this.j.a(getString(2131429499), i2);
    if ((this.a[0] == 0) || (this.a[1] == 0))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1 = getString(2131429537);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = com.keniu.security.sync.r.aO.format(new Date());
      StringBuilder localStringBuilder2 = localStringBuilder1.append(String.format(str1, arrayOfObject1)).append(";");
      String str2 = getString(2131429538);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i1);
      arrayOfObject2[1] = Integer.valueOf(i2);
      com.keniu.security.sync.r.a(String.format(str2, arrayOfObject2));
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 15) && (paramInt2 == 17))
      c();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903174, 2131429502);
    this.b = ((Button)findViewById(2131231303));
    this.b.setText(2131429495);
    this.b.setOnClickListener(this.m);
    this.d = ((ListView)findViewById(2131231304));
    this.d.setOnItemClickListener(this.l);
    this.j.a(this);
  }

  protected void onDestroy()
  {
    if (this.i != null)
      new q(this).start();
    super.onDestroy();
  }

  public void onStart()
  {
    super.onStart();
    if (getIntent().hasExtra("backup_type"))
      this.k = getIntent().getExtras().getInt("backup_type");
    if (this.k == 1)
    {
      ((TextView)findViewById(2131230727)).setText(2131429596);
      this.b.setText(2131429598);
    }
    boolean[] arrayOfBoolean = this.j.b("sync_items_bak_status", this.f.length);
    if (arrayOfBoolean != null)
      this.f = arrayOfBoolean;
    this.c = new ArrayList();
    Cursor localCursor1 = com.keniu.security.sync.r.a(this).b();
    int i4;
    if (localCursor1 != null)
    {
      i4 = localCursor1.getCount();
      localCursor1.close();
    }
    for (int i1 = i4; ; i1 = 0)
    {
      this.g = i1;
      Cursor localCursor2 = getContentResolver().query(android.a.t.a, null, null, null, "date DESC");
      int i3;
      if (localCursor2 != null)
      {
        i3 = localCursor2.getCount();
        localCursor2.close();
      }
      for (int i2 = i3; ; i2 = 0)
      {
        this.h = (i2 + h.a(this).a(c.b).length);
        HashMap localHashMap1 = new HashMap();
        localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
        localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
        String str1 = getString(2131429517);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.g);
        String str2 = String.format(str1, arrayOfObject1);
        localHashMap1.put("VMAP_ITEM_DESC", getString(2131429516) + str2);
        this.c.add(localHashMap1);
        HashMap localHashMap2 = new HashMap();
        localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
        localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429518));
        String str3 = getString(2131429517);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.h);
        String str4 = String.format(str3, arrayOfObject2);
        localHashMap2.put("VMAP_ITEM_DESC", getString(2131429519) + str4);
        this.c.add(localHashMap2);
        HashMap localHashMap3 = new HashMap();
        localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837780));
        localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429520));
        localHashMap3.put("VMAP_ITEM_DESC", getString(2131429521));
        this.c.add(localHashMap3);
        this.e = new w(this, this, this.c, new String[] { "VMAP_ITEM_IMAGE", "VMAP_ITEM_TITLE", "VMAP_ITEM_DESC" }, new int[] { 2131231025, 2131230854, 2131231309 });
        this.d.setAdapter(this.e);
        return;
      }
    }
  }

  protected void onStop()
  {
    this.j.a("sync_items_bak_status", this.f);
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncBackupActivity
 * JD-Core Version:    0.6.2
 */