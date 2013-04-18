package com.keniu.security.sync.ui;

import android.os.Bundle;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.k;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SyncLocalAct extends BaseTitleActivity
{
  private ListView a;
  private List b;
  private SimpleAdapter c;
  private int d;
  private k e = k.a();

  private void a()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837777));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429591));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429592));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837778));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429593));
    if (this.e.b("local_last_record"))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Long.valueOf(this.e.c("local_last_record")));
      localHashMap2.put("VMAP_ITEM_DESC", getString(2131429595, arrayOfObject));
    }
    while (true)
    {
      this.b.add(localHashMap2);
      return;
      localHashMap2.put("VMAP_ITEM_DESC", getString(2131429594));
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903183, 2131429589);
    this.a = ((ListView)findViewById(2131231304));
    this.a.setOnItemClickListener(new ab(this));
    this.e.a(this);
  }

  protected void onStart()
  {
    super.onStart();
    this.b = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837777));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429591));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429592));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837778));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429593));
    if (this.e.b("local_last_record"))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Long.valueOf(this.e.c("local_last_record")));
      localHashMap2.put("VMAP_ITEM_DESC", getString(2131429595, arrayOfObject));
    }
    while (true)
    {
      this.b.add(localHashMap2);
      this.c = new SimpleAdapter(this, this.b, 2130903184, new String[] { "VMAP_ITEM_IMAGE", "VMAP_ITEM_TITLE", "VMAP_ITEM_DESC" }, new int[] { 2131231025, 2131230854, 2131231309 });
      this.a.setAdapter(this.c);
      return;
      localHashMap2.put("VMAP_ITEM_DESC", getString(2131429594));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncLocalAct
 * JD-Core Version:    0.6.2
 */