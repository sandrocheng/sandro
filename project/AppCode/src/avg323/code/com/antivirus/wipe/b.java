package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class b extends com.antivirus.ui.a.a.a
{
  private ArrayList Y = new ArrayList();
  private HashMap Z = new HashMap();
  public ak a = null;
  private HashMap aa = new HashMap();
  private HashMap ab = new HashMap();
  private String ac = null;
  private String ad = null;
  private String ae = null;
  private String ah = null;
  private String ai = null;
  private View b = null;
  private boolean c;
  private ArrayList d = new ArrayList();
  private CheckBox e;
  private int f = 0;
  private boolean g = true;
  private AlertDialog h = null;
  private ProgressDialog i = null;

  private void F()
  {
    this.f = 0;
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      CheckBox localCheckBox = (CheckBox)localIterator.next();
      this.ag.runOnUiThread(new y(this, localCheckBox));
    }
    this.ag.runOnUiThread(new z(this));
  }

  private void G()
  {
    this.f = this.d.size();
    this.e.setChecked(true);
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      CheckBox localCheckBox = (CheckBox)localIterator.next();
      this.ag.runOnUiThread(new aa(this, localCheckBox));
    }
    this.ag.runOnUiThread(new g(this));
  }

  private void H()
  {
    Button localButton = (Button)this.b.findViewById(2131231089);
    if (this.f > 0)
    {
      if (localButton.getVisibility() != 0)
        localButton.setVisibility(0);
      localButton.setText(com.antivirus.m.a(this.ag, 2131296577) + " (" + this.f + ")");
    }
    while (true)
    {
      return;
      if (localButton.getVisibility() == 0)
        localButton.setVisibility(8);
    }
  }

  private void I()
  {
    this.ag.runOnUiThread(new h(this));
  }

  private void J()
  {
    if (this.i != null)
      this.i.dismiss();
    this.ag.runOnUiThread(new k(this));
  }

  private void K()
  {
    new Thread(new l(this)).start();
  }

  private void L()
  {
    this.ac = com.antivirus.m.a(this.ag, 2131296627);
    this.ad = com.antivirus.m.a(this.ag, 2131296628);
    this.ae = com.antivirus.m.a(this.ag, 2131296629);
    this.ah = com.antivirus.m.a(this.ag, 2131296630);
    this.ai = com.antivirus.m.a(this.ag, 2131296631);
  }

  private void M()
  {
    this.Z.put(this.ac, new m(this));
    this.Z.put(this.ad, new n(this));
  }

  private void N()
  {
    this.aa.put(this.ae, new o(this));
    this.aa.put(this.ah, new p(this));
    this.aa.put(this.ai, new q(this));
  }

  private void a()
  {
    this.b.findViewById(2131231093).setVisibility(8);
    this.b.findViewById(2131231092).setVisibility(8);
  }

  private void a(LayoutInflater paramLayoutInflater)
  {
    try
    {
      LinearLayout localLinearLayout = (LinearLayout)this.b.findViewById(2131231091);
      AccountWrapper localAccountWrapper = new AccountWrapper();
      localLinearLayout.removeAllViews();
      this.ab.clear();
      for (a locala : localAccountWrapper.getAccountNames(this.ag))
      {
        this.ab.put(locala.a, new t(this, locala, paramLayoutInflater));
        View localView = paramLayoutInflater.inflate(2130903114, null);
        ((TextView)localView.findViewById(2131230811)).setText(locala.a);
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230812);
        localCheckBox.setChecked(false);
        localCheckBox.setFocusable(false);
        localCheckBox.setClickable(false);
        this.d.add(localCheckBox);
        ImageView localImageView = (ImageView)localView.findViewById(2131230810);
        Drawable localDrawable = localAccountWrapper.getDrawableForType(this.ag, locala.b);
        if (localDrawable == null)
        {
          localImageView.setBackgroundResource(2130837609);
          com.avg.toolkit.f.a.a("Wipe by data - can't find: " + locala.b + " icon");
          break;
        }
        localImageView.setImageDrawable(localDrawable);
        localView.setOnClickListener(new v(this, localCheckBox, locala));
        localLinearLayout.addView(localView);
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a("could not populate " + localException.getLocalizedMessage());
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.i != null)
      this.i.dismiss();
    if (!this.ag.isFinishing())
      this.ag.runOnUiThread(new i(this, paramBoolean));
  }

  private void b(LayoutInflater paramLayoutInflater)
  {
    while (true)
    {
      String str;
      ImageView localImageView;
      try
      {
        LinearLayout localLinearLayout = (LinearLayout)this.b.findViewById(2131231093);
        PackageManager localPackageManager = this.ag.getPackageManager();
        if ((localPackageManager.resolveActivity(new Intent("android.intent.action.DIAL"), 0) == null) && (localPackageManager.resolveActivity(new Intent("com.android.contacts.action.PICK_CONTACT"), 0) == null))
          localPackageManager.resolveActivity(new Intent("android.intent.action.CALL"), 0);
        Iterator localIterator = this.aa.keySet().iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          View localView = paramLayoutInflater.inflate(2130903054, null);
          ((TextView)localView.findViewById(2131230811)).setText(str);
          CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230812);
          localCheckBox.setChecked(false);
          localCheckBox.setFocusable(false);
          localCheckBox.setClickable(false);
          this.d.add(localCheckBox);
          localImageView = (ImageView)localView.findViewById(2131230810);
          if (!str.equals(this.ae))
            break label267;
          localImageView.setBackgroundResource(2130837930);
          localView.setOnClickListener(new w(this, localCheckBox, str));
          localLinearLayout.addView(localView);
          continue;
        }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a("could not populate " + localException.getLocalizedMessage());
      }
      return;
      label267: if (str.equals(this.ah))
      {
        localImageView.setBackgroundResource(2130837933);
      }
      else if (str.equals(this.ai))
      {
        localImageView.setBackgroundResource(2130837931);
      }
      else
      {
        com.avg.toolkit.f.a.a(str + " != " + this.ae + ", " + this.ah + ", " + this.ai);
        localImageView.setBackgroundResource(2130837609);
      }
    }
  }

  private void c(LayoutInflater paramLayoutInflater)
  {
    String[] arrayOfString = { "com.android.browser", "com.google.android.browser", "com.sony.nfx.app.browser", "com.android.browser.provider" };
    LinearLayout localLinearLayout = (LinearLayout)this.b.findViewById(2131231095);
    PackageManager localPackageManager = this.ag.getPackageManager();
    Object localObject = null;
    int j = 0;
    while (true)
      if ((j < arrayOfString.length) && (localObject == null))
        try
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(arrayOfString[j], 0);
          localObject = localApplicationInfo;
          j++;
        }
        catch (Exception localException2)
        {
          while (true)
            com.avg.toolkit.f.a.a("could not get browser app info " + localException2.getLocalizedMessage());
        }
    if (localObject == null)
      return;
    while (true)
    {
      String str;
      ImageView localImageView;
      try
      {
        Iterator localIterator = this.Z.keySet().iterator();
        if (!localIterator.hasNext())
          break;
        str = (String)localIterator.next();
        View localView = paramLayoutInflater.inflate(2130903054, null);
        ((TextView)localView.findViewById(2131230811)).setText(str);
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230812);
        localCheckBox.setChecked(false);
        localCheckBox.setFocusable(false);
        localCheckBox.setClickable(false);
        this.d.add(localCheckBox);
        localImageView = (ImageView)localView.findViewById(2131230810);
        if (!str.equals(this.ac))
          break label324;
        localImageView.setBackgroundResource(2130837932);
        localView.setOnClickListener(new x(this, localCheckBox, str));
        localLinearLayout.addView(localView);
        continue;
      }
      catch (Exception localException1)
      {
        com.avg.toolkit.f.a.a("could not populate " + localException1.getLocalizedMessage());
      }
      break;
      label324: if (str.equals(this.ad))
        localImageView.setBackgroundResource(2130837929);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = paramLayoutInflater.inflate(2130903113, paramViewGroup, false);
    if (this.ag.o())
      a(com.antivirus.m.a(this.ag, 2131296614), this.b);
    ((TextView)this.b.findViewById(2131230993)).setText(com.antivirus.m.a(this.ag, 2131296816));
    Button localButton = (Button)this.b.findViewById(2131231089);
    localButton.setText(com.antivirus.m.a(this.ag, 2131296577));
    localButton.setOnClickListener(new c(this));
    ((TextView)this.b.findViewById(2131231090)).setText(com.antivirus.m.a(this.ag, 2131296615));
    ((TextView)this.b.findViewById(2131231094)).setText(com.antivirus.m.a(this.ag, 2131296616));
    ((TextView)this.b.findViewById(2131231092)).setText(com.antivirus.m.a(this.ag, 2131296617));
    this.e = ((CheckBox)this.b.findViewById(2131230994));
    this.e.setOnCheckedChangeListener(new r(this));
    LayoutInflater localLayoutInflater = this.ag.getLayoutInflater();
    a(localLayoutInflater);
    c(localLayoutInflater);
    int j;
    if ((this.ag.getPackageManager().hasSystemFeature("android.hardware.telephony")) || (((TelephonyManager)this.ag.getSystemService("phone")).getLine1Number() != null))
    {
      j = 1;
      if (j == 0)
        break label298;
      b(localLayoutInflater);
    }
    while (true)
    {
      return this.b;
      j = 0;
      break;
      label298: a();
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = new ak(this.ag);
    L();
    M();
    N();
  }

  public void e()
  {
    super.e();
    a(this.b);
    System.gc();
  }

  public void e(Bundle paramBundle)
  {
    if ((this.i != null) && (this.i.isShowing()))
      paramBundle.putBoolean("progress", true);
    if ((this.h != null) && (this.h.isShowing()))
      paramBundle.putBoolean("alert", true);
    super.e(paramBundle);
  }

  public void t()
  {
    if (this.h != null)
      this.h.dismiss();
    if (this.i != null)
      this.i.dismiss();
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.b
 * JD-Core Version:    0.6.2
 */