package com.keniu.security.sync.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.c.e;
import com.keniu.security.sync.k;
import com.keniu.security.sync.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SyncRestoreHistoryAct extends BaseTitleActivity
{
  private ListView a;
  private List b;
  private SimpleAdapter c;
  private int d;
  private String e = null;
  private k f = k.a();
  private String g = "contact";
  private Handler h = new aq(this);

  private void b()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429583));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429584));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429583));
    this.b.add(localHashMap2);
  }

  protected final void a()
  {
    if (!r.b(this))
      return;
    label36: e locale;
    String[] arrayOfString;
    switch (this.d)
    {
    default:
      locale = new e(this, getString(2131429575), this.h);
      arrayOfString = new String[2];
      arrayOfString[0] = this.g;
      if (this.e == null)
        break;
    case 0:
    case 1:
    }
    for (String str = this.e; ; str = "login#" + this.f.c("user_name") + "#" + this.f.c("pass_word"))
    {
      arrayOfString[1] = str;
      locale.execute(arrayOfString);
      break;
      this.g = "contact";
      break label36;
      this.g = "sms";
      break label36;
    }
  }

  public final void a(ArrayList paramArrayList)
  {
    Intent localIntent = new Intent(this, SyncRecordsAct.class);
    localIntent.putParcelableArrayListExtra("sync_records", paramArrayList);
    localIntent.putExtra("sync_itemdir", this.g);
    startActivity(localIntent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 15) && (paramInt2 == 17))
      a();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903183, 2131429573);
    this.a = ((ListView)findViewById(2131231304));
    this.a.setOnItemClickListener(new ap(this));
    this.f.a(this);
  }

  protected void onStart()
  {
    super.onStart();
    this.b = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429583));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429584));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429583));
    this.b.add(localHashMap2);
    this.c = new SimpleAdapter(this, this.b, 2130903184, new String[] { "VMAP_ITEM_IMAGE", "VMAP_ITEM_TITLE", "VMAP_ITEM_DESC" }, new int[] { 2131231025, 2131230854, 2131231309 });
    this.a.setAdapter(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncRestoreHistoryAct
 * JD-Core Version:    0.6.2
 */