package com.tencent.powermanager.ui;

import ab;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import b;
import bf;
import bg;
import ck;
import cn;
import com.tencent.powermanager.uilib.DIYHeaderView;
import java.util.ArrayList;
import java.util.List;
import p;
import s;

public class DIYSaveModeActivity extends ListActivity
  implements View.OnClickListener
{
  private Button a = null;
  private List<bg> b = null;
  private b c = null;
  private DIYHeaderView d = null;
  private bf e = null;
  private TextView f = null;
  private boolean g = true;
  private AdapterView.OnItemClickListener h = new ck(this);

  private String a()
  {
    if (this.e.c == -1);
    for (String str = getString(2131099735); ; str = 100 * this.e.c / 255 + "%")
      return str;
  }

  public final String a(long paramLong)
  {
    String str;
    if (paramLong == -1L)
      str = getString(2131099664);
    while (true)
    {
      return str;
      if (paramLong < 60000L)
      {
        str = paramLong / 1000L + getString(2131099660);
      }
      else
      {
        boolean bool = paramLong < 3600000L;
        str = null;
        if (bool)
        {
          str = paramLong / 60000L + getString(2131099661);
          if (paramLong % 60000L != 0L)
            str = str + paramLong % 60000L / 1000L + getString(2131099660);
        }
      }
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.a)
      finish();
    if (paramView == this.f)
    {
      this.e.toString();
      if ((this.d.a() != null) && (!this.d.a().trim().equals("")))
        break label77;
      p.a(this, 2131099738);
      this.d.setModeName("");
    }
    while (true)
    {
      ab.a(50016);
      return;
      label77: s.a().a(this.d.a(), new cn(this));
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      Intent localIntent = getIntent();
      bf localbf = new bf();
      localbf.a = localIntent.getIntExtra("_id", localbf.a);
      localbf.b = localIntent.getStringExtra("mode_name");
      localbf.c = localIntent.getIntExtra("brightness", localbf.c);
      localbf.d = localIntent.getIntExtra("screen_time", localbf.d);
      localbf.e = localIntent.getIntExtra("animation", localbf.e);
      localbf.f = localIntent.getBooleanExtra("wifi_state", localbf.f);
      localbf.g = localIntent.getBooleanExtra("network_state", localbf.g);
      localbf.h = localIntent.getBooleanExtra("bluetooth_state", localbf.h);
      localbf.i = localIntent.getBooleanExtra("auto_sync", localbf.i);
      localbf.j = localIntent.getBooleanExtra("vibrate", localbf.j);
      localbf.k = localIntent.getBooleanExtra("haptic_feedback", localbf.k);
      localbf.l = localIntent.getIntExtra("airplane_state", localbf.l);
      this.e = localbf;
      this.g = localBundle.getBoolean("savemode_is_new_ornot", true);
    }
    if (this.e == null)
      this.e = new bf();
    setContentView(2130903054);
    this.f = ((TextView)findViewById(2131230772));
    this.f.setOnClickListener(this);
    this.a = ((Button)findViewById(2131230720));
    this.a.setOnClickListener(this);
    this.d = new DIYHeaderView(this);
    getListView().addHeaderView(this.d, null, true);
    if (this.b != null)
      this.b.clear();
    this.b = new ArrayList();
    bg localbg1 = new bg();
    localbg1.d = true;
    localbg1.b = getString(2131099723);
    localbg1.a = 4;
    this.b.add(localbg1);
    bg localbg2 = new bg();
    localbg2.d = true;
    localbg2.c = a();
    localbg2.b = getString(2131099724);
    localbg2.a = 3;
    this.b.add(localbg2);
    bg localbg3 = new bg();
    localbg3.d = true;
    localbg3.c = a(this.e.d);
    localbg3.b = getString(2131099725);
    localbg3.a = 3;
    this.b.add(localbg3);
    bg localbg4 = new bg();
    localbg4.d = true;
    localbg4.e = this.e.f;
    localbg4.b = getString(2131099726);
    localbg4.a = 2;
    this.b.add(localbg4);
    bg localbg5 = new bg();
    localbg5.d = true;
    localbg5.e = this.e.g;
    localbg5.b = getString(2131099727);
    localbg5.a = 2;
    this.b.add(localbg5);
    bg localbg6 = new bg();
    localbg6.d = true;
    localbg6.e = this.e.h;
    localbg6.b = getString(2131099728);
    localbg6.a = 2;
    this.b.add(localbg6);
    bg localbg7 = new bg();
    localbg7.d = true;
    localbg7.b = getString(2131099729);
    localbg7.a = 4;
    this.b.add(localbg7);
    bg localbg8 = new bg();
    localbg8.d = true;
    localbg8.b = getString(2131099730);
    localbg8.c = getResources().getStringArray(2130968577)[this.e.e];
    localbg8.a = 3;
    this.b.add(localbg8);
    bg localbg9 = new bg();
    localbg9.d = true;
    localbg9.e = this.e.i;
    localbg9.b = getString(2131099731);
    localbg9.a = 2;
    this.b.add(localbg9);
    bg localbg10 = new bg();
    localbg10.d = true;
    localbg10.e = this.e.j;
    localbg10.b = getString(2131099732);
    localbg10.a = 2;
    this.b.add(localbg10);
    bg localbg11 = new bg();
    localbg11.d = true;
    localbg11.e = this.e.k;
    localbg11.b = getString(2131099733);
    localbg11.a = 2;
    this.b.add(localbg11);
    this.d.setModeName(this.e.b);
    this.c = new b(this, this.b);
    getListView().setAdapter(this.c);
    this.c.notifyDataSetChanged();
    getListView().setOnItemClickListener(this.h);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.ui.DIYSaveModeActivity
 * JD-Core Version:    0.6.2
 */