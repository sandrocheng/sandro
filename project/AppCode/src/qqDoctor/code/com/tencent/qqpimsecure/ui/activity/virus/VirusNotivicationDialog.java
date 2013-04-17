package com.tencent.qqpimsecure.ui.activity.virus;

import acj;
import acj.a;
import aht;
import ahu;
import ahv;
import amg;
import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.ArrayList;
import java.util.List;
import kl;
import ms;
import mt;
import nd;
import ov.a;

public class VirusNotivicationDialog extends Activity
  implements View.OnClickListener
{
  private static boolean a = false;
  private static int b = 0;
  private boolean c = false;
  private kl d;
  private acj e;
  private acj.a f;
  private List<mt> g;
  private ArrayList<ms> h;
  private ListView i;
  private ButtonView j;
  private ButtonView k;
  private TextView l;
  private int m;
  private amg n;
  private Context o = this;
  private Handler p = new aht(this);

  public static void a(Context paramContext)
  {
    if (!a)
    {
      b = 0;
      Intent localIntent = new Intent(paramContext, VirusNotivicationDialog.class);
      localIntent.setFlags(268435456);
      paramContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (b < 10)
        new Thread(new ahu(paramContext)).start();
      b = 1 + b;
    }
  }

  private void b()
  {
    this.g = this.d.a(mt.a);
    this.d.a(this.o, this.g);
    if ((this.g != null) && (this.g.size() > 0))
    {
      this.m = this.g.size();
      TextView localTextView = this.l;
      String str = getString(2131428061);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.m);
      localTextView.setText(String.format(str, arrayOfObject));
      this.n = new amg(this, this.g);
      this.i.setAdapter(this.n);
      this.h = kl.a(this.g);
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.j)
    {
      nd.a().a(26247);
      this.p.sendEmptyMessage(0);
      ArrayList localArrayList = this.h;
      if (this.e == null)
        this.e = new acj(this);
      if (this.f == null)
      {
        this.f = new ahv(this);
        this.e.a(this.f);
      }
      this.e.a(localArrayList);
      new ov.a(this.o, (NotificationManager)this.o.getSystemService("notification")).a(24);
    }
    while (true)
    {
      return;
      if (paramView == this.k)
      {
        nd.a().a(26248);
        a = false;
        finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = new kl();
    requestWindowFeature(1);
    setContentView(2130903080);
    this.i = ((ListView)findViewById(2131230822));
    this.j = ((ButtonView)findViewById(2131230823));
    this.j.setOnClickListener(this);
    this.k = ((ButtonView)findViewById(2131230824));
    this.k.setOnClickListener(this);
    this.l = ((TextView)findViewById(2131230754));
    this.g = this.d.a(mt.a);
    this.d.a(this.o, this.g);
    b();
    if ((this.h == null) || (this.h.size() < 0))
    {
      a = false;
      finish();
    }
  }

  protected void onDestroy()
  {
    if (this.e != null)
      this.e.a();
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    b();
    this.n.notifyDataSetChanged();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationDialog
 * JD-Core Version:    0.6.2
 */