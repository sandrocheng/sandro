package com.avast.android.generic.app.about;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.widget.SlideBlock;
import com.avast.android.generic.util.aw;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.v;
import com.avast.android.generic.y;
import com.avast.android.generic.z;
import java.util.List;

public class AboutFragment extends TrackedFragment
{
  private boolean a;
  private boolean b;
  private boolean c;
  private String d;
  private String e;
  private String f;
  private ScrollView g;

  private boolean a(Intent paramIntent)
  {
    if (getActivity().getPackageManager().queryIntentActivities(paramIntent, 65536).size() > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private String c()
  {
    String str;
    if (this.a)
    {
      aw localaw = aw.a(getActivity(), y.c);
      str = localaw.b() + "." + localaw.c() + "." + localaw.e();
    }
    while (true)
    {
      return str;
      str = "";
      try
      {
        str = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        m.b(localNameNotFoundException.getMessage(), localNameNotFoundException);
      }
    }
  }

  private Intent d()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.avast.android.mobilesecurity"));
    localIntent.addFlags(524288);
    return localIntent;
  }

  public String a()
  {
    String str;
    if (this.a)
      str = "/at/about";
    while (true)
    {
      return str;
      if (this.c)
        str = "/ab/about";
      else
        str = "/ms/about";
    }
  }

  public int a_()
  {
    return z.bm;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    if (!localBundle.containsKey("app_name"))
      throw new NullPointerException("The AboutActivity.EXTRA_APP_NAME argument has to be set.");
    this.d = localBundle.getString("app_name");
    this.a = localBundle.getBoolean("anti_theft", false);
    this.c = localBundle.getBoolean("backup", false);
    this.b = localBundle.getBoolean("not_ams", false);
    String str = getString(z.aq);
    this.e = localBundle.getString("vps_version");
    if (this.e == null)
      this.e = str;
    long l = localBundle.getLong("vps_definitions_count", -1L);
    if (l == -1L);
    while (true)
    {
      this.f = str;
      return;
      str = String.valueOf(l);
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.g = ((ScrollView)paramLayoutInflater.inflate(v.b, paramViewGroup, false));
    return this.g;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if ((this.b) && (!(getActivity() instanceof BaseMultiPaneActivity)))
      paramView.findViewById(t.z).setVisibility(8);
    ((TextView)paramView.findViewById(t.al)).setText(this.d);
    String str1 = getActivity().getPackageName();
    int i;
    Button localButton;
    label148: TextView localTextView1;
    TextView localTextView2;
    TextView localTextView3;
    if ((!str1.equals("com.avast.android.mobilesecurity")) && (!str1.equals("com.avast.android.antitheft")) && (!str1.equals("com.avast.android.at_play")) && (!str1.equals("com.avast.android.backup")))
    {
      i = 1;
      localButton = (Button)paramView.findViewById(t.v);
      Intent localIntent = d();
      if ((i != 0) || (!a(localIntent)))
        break label370;
      localButton.setOnClickListener(new a(this, localIntent));
      localTextView1 = (TextView)paramView.findViewById(t.aF);
      localTextView2 = (TextView)paramView.findViewById(t.ar);
      localTextView3 = (TextView)paramView.findViewById(t.y);
      if ((!this.a) && (!this.b) && (!this.c))
        break label380;
      localTextView2.setVisibility(8);
      localTextView3.setVisibility(8);
    }
    while (true)
    {
      String str2 = c();
      localTextView1.setText(getString(z.bn, new Object[] { str2 }));
      ((Button)paramView.findViewById(t.ax)).setOnClickListener(new b(this));
      float f1 = getResources().getDisplayMetrics().density;
      e locale = new e(getActivity(), this.g);
      SlideBlock localSlideBlock = (SlideBlock)paramView.findViewById(t.an);
      localSlideBlock.a(getString(z.aV));
      localSlideBlock.setEnabled(false);
      localSlideBlock.a(new c(this, localSlideBlock, locale, f1));
      new d(this, localSlideBlock).execute(new Void[0]);
      return;
      i = 0;
      break;
      label370: localButton.setVisibility(8);
      break label148;
      label380: int j = z.aW;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.e;
      localTextView2.setText(getString(j, arrayOfObject1));
      int k = z.C;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.f;
      localTextView3.setText(getString(k, arrayOfObject2));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.AboutFragment
 * JD-Core Version:    0.6.2
 */