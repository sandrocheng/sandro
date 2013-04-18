package com.keniu.security.sync.ui;

import android.a.t;
import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.d;
import com.keniu.security.sync.e;
import com.keniu.security.sync.f;
import com.keniu.security.sync.i;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SyncMainActivity extends BaseTitleActivity
{
  private List a;
  private ListView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private SimpleAdapter g;
  private d h;
  private k i;
  private final AdapterView.OnItemClickListener j = new ac(this);

  private int a()
  {
    Cursor localCursor = this.h.b();
    int k = 0;
    if (localCursor != null)
    {
      k = localCursor.getCount();
      localCursor.close();
    }
    return k;
  }

  private int b()
  {
    Cursor localCursor = getContentResolver().query(t.a, null, null, null, "date DESC");
    int k = 0;
    if (localCursor != null)
    {
      k = localCursor.getCount();
      localCursor.close();
    }
    return k + h.a(this).a(c.b).length;
  }

  private void c()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837773));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429502));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429503));
    localHashMap1.put("VMAP_ITEM_CLASS", new ad(this, SyncBackupActivity.class));
    this.a.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837779));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429504));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429505));
    localHashMap2.put("VMAP_ITEM_CLASS", new ad(this, SyncRestoreActivity.class));
    this.a.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837775));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429573));
    localHashMap3.put("VMAP_ITEM_DESC", getString(2131429574));
    localHashMap3.put("VMAP_ITEM_CLASS", new ad(this, SyncRestoreHistoryAct.class));
    this.a.add(localHashMap3);
    HashMap localHashMap4 = new HashMap();
    localHashMap4.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837776));
    localHashMap4.put("VMAP_ITEM_TITLE", getString(2131429589));
    localHashMap4.put("VMAP_ITEM_DESC", getString(2131429590));
    localHashMap4.put("VMAP_ITEM_CLASS", new ad(this, SyncLocalAct.class));
    this.a.add(localHashMap4);
    HashMap localHashMap5 = new HashMap();
    localHashMap5.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837772));
    localHashMap5.put("VMAP_ITEM_TITLE", getString(2131429508));
    if (this.i.b("session_id"))
      localHashMap5.put("VMAP_ITEM_DESC", getString(2131429570) + this.i.c("user_name"));
    while (true)
    {
      localHashMap5.put("VMAP_ITEM_CLASS", new ad(this, AccountMgrAct.class));
      this.a.add(localHashMap5);
      return;
      localHashMap5.put("VMAP_ITEM_DESC", getString(2131429509));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903179, 2131429501);
    if (paramBundle == null)
      a.i(this, "sync");
    this.i = k.a();
    this.i.a(this);
    this.b = ((ListView)findViewById(2131231317));
    this.b.setOnItemClickListener(this.j);
    this.c = ((TextView)findViewById(2131231318));
    this.d = ((TextView)findViewById(2131231319));
    this.e = ((TextView)findViewById(2131231320));
    this.f = ((TextView)findViewById(2131231321));
    if (Integer.parseInt(Build.VERSION.SDK) >= 5);
    for (this.h = new f(); ; this.h = new e())
    {
      this.h.a(getContentResolver());
      return;
    }
  }

  protected void onDestroy()
  {
    i.a(this, ">>>>> on destroy");
    if (!this.i.e("auto_status").booleanValue())
      this.i.a("session_id");
    if (y.b(0))
      y.c(0);
    if (y.b(1))
      y.c(1);
    super.onDestroy();
  }

  protected void onResume()
  {
    this.b.setEnabled(true);
    super.onResume();
  }

  public void onStart()
  {
    super.onStart();
    this.a = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837773));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429502));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429503));
    localHashMap1.put("VMAP_ITEM_CLASS", new ad(this, SyncBackupActivity.class));
    this.a.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837779));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429504));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429505));
    localHashMap2.put("VMAP_ITEM_CLASS", new ad(this, SyncRestoreActivity.class));
    this.a.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837775));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429573));
    localHashMap3.put("VMAP_ITEM_DESC", getString(2131429574));
    localHashMap3.put("VMAP_ITEM_CLASS", new ad(this, SyncRestoreHistoryAct.class));
    this.a.add(localHashMap3);
    HashMap localHashMap4 = new HashMap();
    localHashMap4.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837776));
    localHashMap4.put("VMAP_ITEM_TITLE", getString(2131429589));
    localHashMap4.put("VMAP_ITEM_DESC", getString(2131429590));
    localHashMap4.put("VMAP_ITEM_CLASS", new ad(this, SyncLocalAct.class));
    this.a.add(localHashMap4);
    HashMap localHashMap5 = new HashMap();
    localHashMap5.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837772));
    localHashMap5.put("VMAP_ITEM_TITLE", getString(2131429508));
    if (this.i.b("session_id"))
      localHashMap5.put("VMAP_ITEM_DESC", getString(2131429570) + this.i.c("user_name"));
    while (true)
    {
      localHashMap5.put("VMAP_ITEM_CLASS", new ad(this, AccountMgrAct.class));
      this.a.add(localHashMap5);
      this.g = new SimpleAdapter(this, this.a, 2130903180, new String[] { "VMAP_ITEM_IMAGE", "VMAP_ITEM_TITLE", "VMAP_ITEM_DESC" }, new int[] { 2131231025, 2131230854, 2131231309 });
      this.b.setAdapter(this.g);
      try
      {
        l.a(this.b);
        str1 = this.i.c(getString(2131429500));
        k = this.i.d(getString(2131429498));
        if (k == -1)
        {
          m = 0;
          n = this.i.d(getString(2131429499));
          if (n != -1)
            break label880;
          i1 = 0;
          Cursor localCursor1 = this.h.b();
          if (localCursor1 == null)
            break label926;
          int i6 = localCursor1.getCount();
          localCursor1.close();
          i2 = i6;
          Cursor localCursor2 = getContentResolver().query(t.a, null, null, null, "date DESC");
          if (localCursor2 == null)
            break label920;
          int i5 = localCursor2.getCount();
          localCursor2.close();
          i3 = i5;
          int i4 = i3 + h.a(this).a(c.b).length;
          if (!str1.equals("null"))
            break label887;
          str2 = getString(2131429510);
          this.c.setText(str2);
          TextView localTextView1 = this.d;
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(m);
          arrayOfObject1[1] = Integer.valueOf(i2);
          localTextView1.setText(getString(2131429512, arrayOfObject1));
          TextView localTextView2 = this.e;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(i1);
          arrayOfObject2[1] = Integer.valueOf(i4);
          localTextView2.setText(getString(2131429513, arrayOfObject2));
          if ((i2 <= m) && (i4 <= i1))
            break label908;
          this.f.setVisibility(0);
          return;
          localHashMap5.put("VMAP_ITEM_DESC", getString(2131429509));
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          String str1;
          int k;
          int n;
          i.a(this, "set list view height baseed on children fail:" + localException.getMessage());
          continue;
          int m = k;
          continue;
          label880: int i1 = n;
          continue;
          label887: String str2 = getString(2131429511, new Object[] { str1 });
          continue;
          label908: this.f.setVisibility(8);
          continue;
          label920: int i3 = 0;
          continue;
          label926: int i2 = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncMainActivity
 * JD-Core Version:    0.6.2
 */