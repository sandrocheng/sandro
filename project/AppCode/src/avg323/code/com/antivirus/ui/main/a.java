package com.antivirus.ui.main;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.c;
import com.antivirus.core.b;
import com.antivirus.m;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.tuneup.j;
import com.avg.ui.general.o;
import com.avg.ui.general.q;
import com.avg.ui.general.r;
import com.avg.ui.license.EnterLicenseActivity;

public class a extends com.antivirus.ui.a.a.a
  implements View.OnClickListener
{
  private b a;
  private CheckBox b = null;
  private View c = null;
  private com.avg.toolkit.e.a d;

  private void F()
  {
    if (this.d == null)
      return;
    int i;
    label30: TextView localTextView1;
    if (this.d.b())
      if (o.a == q.b)
      {
        i = 2130837570;
        ((ImageView)this.c.findViewById(2131230743)).setImageResource(i);
        this.b = ((CheckBox)this.c.findViewById(2131230744));
        this.b.setChecked(true);
        this.b.setText(m.a(this.ag, 2131296423));
        ((TextView)this.c.findViewById(2131230745)).setText(m.a(this.ag, 2131296425));
        ((TextView)this.c.findViewById(2131230746)).setText(m.a(this.ag, 2131296426));
        localTextView1 = (TextView)this.c.findViewById(2131230747);
        if (!o.c())
          break label368;
        localTextView1.setVisibility(8);
      }
    while (true)
    {
      ((TextView)this.c.findViewById(2131230748)).setText(m.a(this.ag, 2131296429));
      ((TextView)this.c.findViewById(2131230749)).setText(m.a(this.ag, 2131296424));
      String str1 = m.a(this.ag, 2131296430);
      String str2 = m.a(this.ag, 2131296432);
      TextView localTextView2 = (TextView)this.c.findViewById(2131230750);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView2.setText(Html.fromHtml("<a href='http://www.avgmobilation.com/static/terms-mobile'>" + str1 + "</a> " + m.a(this.ag, 2131296431) + " " + "<a href='http://www.avgmobilation.com/privacy'>" + str2 + "</a> "));
      ((Button)this.c.findViewById(2131230751)).setOnClickListener(this);
      break;
      i = o.a(r.a);
      break label30;
      if (o.a == q.b)
      {
        i = 2130837571;
        break label30;
      }
      i = o.b(r.a);
      break label30;
      label368: localTextView1.setText(m.a(this.ag, 2131296427));
    }
  }

  private void G()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("__SAD", true);
    AVService.a(this.ag, 11000, 1, localBundle);
  }

  private void a(Class paramClass)
  {
    try
    {
      Intent localIntent = new Intent(this.ag, paramClass);
      localIntent.setFlags(536870912);
      a(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      j.e(true);
      j.h(0);
      j.g(com.avg.tuneup.battery.c.b[1]);
      a(this.ag).c(true);
      c.i(true);
      a(this.ag).e(true);
    }
    while (true)
    {
      return;
      j.e(false);
      j.g(com.avg.tuneup.battery.c.b[3]);
      a(this.ag).c(false);
      c.i(false);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.c = paramLayoutInflater.inflate(2130903044, paramViewGroup, false);
    F();
    return this.c;
  }

  protected b a(Context paramContext)
  {
    if (this.a == null)
      this.a = new b(paramContext);
    return this.a;
  }

  public void a()
  {
    this.d = this.ag.s();
    F();
  }

  public void a(Bundle paramBundle)
  {
    this.d = this.ag.s();
    super.a(paramBundle);
  }

  public void onClick(View paramView)
  {
    a(this.b.isChecked());
    this.ag.setResult(-1);
    AVService.a(this.ag, 1000, 1002, null);
    c.f();
    if (this.b.isChecked())
      G();
    Parcelable localParcelable = this.ag.getIntent().getParcelableExtra("ext_a_intent");
    if ((localParcelable instanceof Intent))
      a((Intent)localParcelable);
    while (true)
    {
      String str = this.ag.getIntent().getStringExtra("lcc");
      if ((str != null) || ((this.d != null) && (this.d.t)))
      {
        Intent localIntent = new Intent(this.ag, EnterLicenseActivity.class);
        if (str != null)
          localIntent.putExtra("lcc", str);
        a(localIntent);
      }
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("extra_activated", true);
      AVService.a(this.ag, 25000, 3, localBundle);
      this.ag.finish();
      com.avg.toolkit.c.a.a(this.ag, "category_activate", "action_activate", null, 0);
      return;
      if (o.c())
        a(DualPaneActivity.class);
      else
        a(HandheldMainActivity.class);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.a
 * JD-Core Version:    0.6.2
 */