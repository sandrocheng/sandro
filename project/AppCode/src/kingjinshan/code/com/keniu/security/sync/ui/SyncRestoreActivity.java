package com.keniu.security.sync.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.sync.c.d;
import com.keniu.security.sync.j;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SyncRestoreActivity extends HelperBaseTitleAct
{
  private Button a;
  private List b;
  private ListView c;
  private an d;
  private boolean[] e = { 1, 1, 1 };
  private String f = null;
  private k g = k.a();
  private int h = 0;
  private final AdapterView.OnItemClickListener i = new al(this);
  private View.OnClickListener j = new am(this);

  private void a()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429516));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429518));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429519));
    this.b.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837780));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429520));
    localHashMap3.put("VMAP_ITEM_DESC", getString(2131429521));
    this.b.add(localHashMap3);
  }

  private void b()
  {
    if (this.h == 0)
    {
      if (!r.b(this))
        return;
      a.a(this, "synco", "10", "");
      if (this.f != null);
      for (String str = this.f; ; str = "login#" + this.g.c("user_name") + "#" + this.g.c("pass_word"))
      {
        this.f = str;
        d locald = new d(new j(this, (byte)0), this.e, this);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.f;
        locald.execute(arrayOfString);
        break;
      }
    }
    j localj = new j(this);
    int[] arrayOfInt = new int[4];
    int k;
    label165: int m;
    label181: int n;
    if (this.e[0] != 0)
    {
      k = 0;
      arrayOfInt[0] = k;
      if (this.e[1] == 0)
        break label241;
      m = 0;
      arrayOfInt[1] = m;
      if (this.e[2] == 0)
        break label248;
      n = 0;
      label198: arrayOfInt[2] = n;
      if (this.e[2] == 0)
        break label255;
    }
    label241: label248: label255: for (int i1 = 0; ; i1 = -11)
    {
      arrayOfInt[3] = i1;
      localj.sendMessage(localj.obtainMessage(10, arrayOfInt));
      break;
      k = -11;
      break label165;
      m = -11;
      break label181;
      n = -11;
      break label198;
    }
  }

  private void c()
  {
    j localj = new j(this);
    int[] arrayOfInt = new int[4];
    int k;
    int m;
    label40: int n;
    if (this.e[0] != 0)
    {
      k = 0;
      arrayOfInt[0] = k;
      if (this.e[1] == 0)
        break label98;
      m = 0;
      arrayOfInt[1] = m;
      if (this.e[2] == 0)
        break label105;
      n = 0;
      label57: arrayOfInt[2] = n;
      if (this.e[2] == 0)
        break label112;
    }
    label98: label105: label112: for (int i1 = 0; ; i1 = -11)
    {
      arrayOfInt[3] = i1;
      localj.sendMessage(localj.obtainMessage(10, arrayOfInt));
      return;
      k = -11;
      break;
      m = -11;
      break label40;
      n = -11;
      break label57;
    }
  }

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 123:
    case 10001:
    }
    while (true)
    {
      return;
      a.a(this, "synco", "12", "");
      l.a(this, 2131429567);
      continue;
      l.a(this, 2131429572);
    }
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }

  public final void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 8:
    case 9:
    case 11:
    case 18:
    }
    while (true)
    {
      return;
      l.a(this, 2131429533, 2131429565);
      continue;
      l.a(this, 2131429533, 2131429472);
      continue;
      l.a(this, 2131429533, 2131429472);
      continue;
      l.a(this, 2131429533, 2131429532);
    }
  }

  public final void b(String paramString)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131429534));
    localaq.b(Html.fromHtml(paramString));
    localaq.b(getString(2131428298), null);
    if ((this != null) && (!isFinishing()))
      localaq.c().show();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 15) && (paramInt2 == 17))
      b();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903174, 2131429504);
    this.a = ((Button)findViewById(2131231303));
    this.a.setText(2131429496);
    this.a.setOnClickListener(this.j);
    this.c = ((ListView)findViewById(2131231304));
    this.c.setOnItemClickListener(this.i);
    this.g.a(this);
  }

  protected void onDestroy()
  {
    if (this.f != null)
      new ak(this).start();
    super.onDestroy();
  }

  public void onStart()
  {
    super.onStart();
    if (getIntent().hasExtra("backup_type"))
      this.h = getIntent().getExtras().getInt("backup_type");
    if (this.h == 1)
    {
      ((TextView)findViewById(2131230727)).setText(2131429597);
      this.a.setText(2131429599);
    }
    boolean[] arrayOfBoolean = this.g.b("sync_items_res_status", this.e.length);
    if (arrayOfBoolean != null)
      this.e = arrayOfBoolean;
    this.b = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837774));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429515));
    localHashMap1.put("VMAP_ITEM_DESC", getString(2131429516));
    this.b.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837781));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429518));
    localHashMap2.put("VMAP_ITEM_DESC", getString(2131429519));
    this.b.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837780));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429520));
    localHashMap3.put("VMAP_ITEM_DESC", getString(2131429521));
    this.b.add(localHashMap3);
    this.d = new an(this, this, this.b, new String[] { "VMAP_ITEM_IMAGE", "VMAP_ITEM_TITLE", "VMAP_ITEM_DESC" }, new int[] { 2131231025, 2131230854, 2131231309 });
    this.c.setAdapter(this.d);
  }

  protected void onStop()
  {
    this.g.a("sync_items_res_status", this.e);
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncRestoreActivity
 * JD-Core Version:    0.6.2
 */