package com.keniu.security.traffic;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.malware.bz;
import com.keniu.security.monitor.b;
import com.keniu.security.util.aq;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.Arrays;

public class TrafficFireWallMainActivity extends Activity
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, b, ag
{
  f[] a = null;
  com.keniu.security.monitor.a b;
  private ListView c = null;
  private Button d = null;
  private CheckBox e = null;
  private CheckBox f = null;
  private RelativeLayout g = null;
  private ListAdapter h = null;
  private Dialog i = null;
  private boolean j = false;
  private int k;
  private int l = -1;
  private boolean m = bz.a().e();
  private AdapterView.OnItemClickListener n = new aj(this);

  private void b()
  {
    SharedPreferences localSharedPreferences = getSharedPreferences("DroidWallPrefs", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (localSharedPreferences.getString("BlockMode", "").length() == 0)
      localEditor.putString("BlockMode", "blacklist");
    for (int i1 = 1; ; i1 = 0)
    {
      if (localSharedPreferences.contains("AllowedUids"))
      {
        localEditor.remove("AllowedUids");
        i1 = 1;
      }
      if (localSharedPreferences.contains("Interfaces"))
        localEditor.remove("Interfaces");
      for (int i2 = 1; ; i2 = i1)
      {
        if (i2 != 0)
          localEditor.commit();
        return;
      }
    }
  }

  private void c()
  {
    new al(this, new ak(this)).start();
  }

  private void d()
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("#.##");
    Arrays.sort(this.a, z.h);
    LayoutInflater localLayoutInflater = getLayoutInflater();
    if (this.a == null)
      System.out.println("app =============== null");
    while (true)
    {
      return;
      for (int i1 = 0; i1 < this.a.length; i1++)
        if (this.k == this.a[i1].a)
          this.l = i1;
      this.h = new am(this, this, this.a, localLayoutInflater, localDecimalFormat);
      if (findViewById(2131231014).getVisibility() == 0)
        findViewById(2131231014).setVisibility(8);
      this.c.setAdapter(this.h);
      this.c.setSelection(this.l);
      if (!bz.b())
        Toast.makeText(this, getString(2131428221), 1000).show();
    }
  }

  private void e()
  {
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    localCheckBox.setChecked(false);
    localaq.a(getString(2131428763));
    TextView localTextView = (TextView)localView.findViewById(2131231003);
    SpannableString localSpannableString = new SpannableString(getString(2131428776));
    localSpannableString.setSpan(new ar(this), localSpannableString.length() - 5, localSpannableString.length() - 1, 17);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), localSpannableString.length() - 5, localSpannableString.length() - 1, 34);
    localTextView.setText(localSpannableString);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localaq.b(getString(2131428764), new an(this, localCheckBox, locala));
    localaq.a(localView);
    if (locala.C())
      localaq.d();
    while (true)
    {
      return;
      bz.a().c();
      this.b.a(com.keniu.security.monitor.a.x, this, 1073741823);
    }
  }

  private void f()
  {
    new ao(this).sendEmptyMessageDelayed(0, 100L);
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.x)
      this.m = ((Boolean)paramObject1).booleanValue();
    return 0;
  }

  public final void a()
  {
    if ((bz.b()) && (!e.j.e()) && (!isFinishing()))
      e();
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (!e.j.e())
    {
      Toast.makeText(this, getString(2131428221), 1000).show();
      paramCompoundButton.setChecked(false);
    }
    while (true)
    {
      return;
      f localf = (f)paramCompoundButton.getTag();
      if (localf != null)
        switch (paramCompoundButton.getId())
        {
        case 2131231384:
        case 2131231385:
        default:
          break;
        case 2131231383:
          if (localf.d != paramBoolean)
          {
            q.a(localf.a, localf.d);
            localf.d = paramBoolean;
            if ((localf.d) && (localf.k))
            {
              localf.k = false;
              Toast.makeText(this, "禁止成功，已取消该程序白名单权限", 1).show();
              q.c(localf.a, true);
            }
          }
          break;
        case 2131231386:
          if (localf.c != paramBoolean)
            localf.c = paramBoolean;
          break;
        }
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231663:
    }
    while (true)
    {
      return;
      this.g.setVisibility(8);
      q.h();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903304);
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("pkg_uid", 0) != 0)
    {
      this.j = true;
      this.k = localIntent.getIntExtra("pkg_uid", 0);
    }
    this.d = ((Button)findViewById(2131231663));
    this.g = ((RelativeLayout)findViewById(2131231660));
    this.e = ((CheckBox)findViewById(2131231658));
    this.f = ((CheckBox)findViewById(2131231659));
    this.b = com.keniu.security.monitor.a.a();
    q.a(this);
    SharedPreferences localSharedPreferences = getSharedPreferences("DroidWallPrefs", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (localSharedPreferences.getString("BlockMode", "").length() == 0)
      localEditor.putString("BlockMode", "blacklist");
    for (int i1 = 1; ; i1 = 0)
    {
      if (localSharedPreferences.contains("AllowedUids"))
      {
        localEditor.remove("AllowedUids");
        i1 = 1;
      }
      if (localSharedPreferences.contains("Interfaces"))
        localEditor.remove("Interfaces");
      for (int i2 = 1; ; i2 = i1)
      {
        if (i2 != 0)
          localEditor.commit();
        this.d.setOnClickListener(this);
        this.c = ((ListView)findViewById(2131231664));
        this.c.setOnItemClickListener(this.n);
        e.j = bz.a();
        new al(this, new ak(this)).start();
        this.e.setChecked(q.j());
        this.f.setChecked(q.k());
        this.e.setOnCheckedChangeListener(new ah(this));
        this.f.setOnCheckedChangeListener(new ai(this));
        if (q.g())
          if (!isFinishing())
          {
            this.i = new af(this, this);
            this.i.show();
            q.f();
          }
        while (true)
        {
          return;
          if ((bz.b()) && (!e.j.e()) && (!isFinishing()))
            e();
        }
      }
    }
  }

  protected void onDestroy()
  {
    if (this.h != null)
      this.h = null;
    this.b.a(com.keniu.security.monitor.a.x);
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    new ao(this).sendEmptyMessageDelayed(0, 100L);
  }

  protected void onResume()
  {
    super.onResume();
    if (q.i())
      this.g.setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficFireWallMainActivity
 * JD-Core Version:    0.6.2
 */