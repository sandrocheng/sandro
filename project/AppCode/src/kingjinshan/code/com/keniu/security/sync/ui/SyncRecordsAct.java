package com.keniu.security.sync.ui;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.widget.ListView;
import android.widget.TextView;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.y;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.List;

public class SyncRecordsAct extends HelperBaseTitleAct
{
  Handler a = new ah(this);
  private List b;
  private ListView c;
  private String d;
  private k e = k.a();
  private String f;
  private int g;
  private boolean h = false;
  private ai i;

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 123:
    case 10001:
    case 19:
    case 20:
    }
    while (true)
    {
      return;
      l.a(this, 2131429567);
      continue;
      l.a(this, 2131429572);
      continue;
      l.a(this, 2131429580);
      continue;
      l.a(this, 2131429581);
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

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903181, 2131429504);
    this.c = ((ListView)findViewById(2131231304));
    this.c.setOnItemClickListener(new ae(this));
    this.e.a(this);
    this.i = new ai(this, this);
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    return new aq(this, (byte)0).a(2131429582).d(2131165228, new af(this)).c();
  }

  protected void onStart()
  {
    this.b = getIntent().getParcelableArrayListExtra("sync_records");
    this.d = getIntent().getStringExtra("sync_itemdir");
    if ("contact".equals(this.d));
    for (String str = getString(2131429577); ; str = getString(2131429578))
    {
      ((TextView)findViewById(2131230727)).setText(str);
      this.c.setAdapter(this.i);
      super.onStart();
      return;
    }
  }

  protected void onStop()
  {
    if (this.h)
      if (!this.d.equals("contact"))
        break label38;
    label38: for (int j = 0; ; j = 1)
    {
      if (y.b(j))
        y.c(1);
      super.onStop();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncRecordsAct
 * JD-Core Version:    0.6.2
 */