package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.antivirus.AvApplication;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.DonutTools;
import org.antivirus.ui.BaseToolActivity;

public class WipeByApp extends BaseToolActivity
{
  public static final ai c = new ai(AvApplication.getInstance());
  static HashMap d = new HashMap();
  static HashMap e = new HashMap();
  ArrayList a = new ArrayList();
  HashMap b = new HashMap();
  private ArrayList f = new ArrayList();
  private CheckBox g;
  private int h = 0;
  private boolean i = true;
  private AlertDialog j;
  private ProgressDialog k;
  private int l;

  static
  {
    d.put(Strings.getString(2131296430), new d());
    d.put(Strings.getString(2131296431), new o());
    e.put(Strings.getString(2131296432), new p());
    e.put(Strings.getString(2131296433), new q());
    e.put(Strings.getString(2131296434), new r());
  }

  private void a(LayoutInflater paramLayoutInflater)
  {
    for (int m = 0; ; m++)
      while (true)
      {
        String str;
        ImageView localImageView;
        try
        {
          LinearLayout localLinearLayout = (LinearLayout)findViewById(2131231024);
          PackageManager localPackageManager = getPackageManager();
          ResolveInfo localResolveInfo = localPackageManager.resolveActivity(new Intent("android.intent.action.DIAL"), 0);
          if (localResolveInfo == null)
          {
            localResolveInfo = localPackageManager.resolveActivity(new Intent("com.android.contacts.action.PICK_CONTACT"), 0);
            if (localResolveInfo == null)
              localResolveInfo = localPackageManager.resolveActivity(new Intent("android.intent.action.CALL"), 0);
          }
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(localResolveInfo.activityInfo.packageName, 0);
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(localApplicationInfo.packageName, 1);
          localApplicationInfo.loadIcon(localPackageManager);
          ActivityInfo[] arrayOfActivityInfo = localPackageInfo.activities;
          int n = arrayOfActivityInfo.length;
          if (m < n)
          {
            ActivityInfo localActivityInfo = arrayOfActivityInfo[m];
            if (!localActivityInfo.name.endsWith("DialtactsActivity"))
              break;
            localActivityInfo.loadIcon(localPackageManager);
            break;
          }
          Iterator localIterator = e.keySet().iterator();
          if (localIterator.hasNext())
          {
            str = (String)localIterator.next();
            View localView = paramLayoutInflater.inflate(2130903050, null);
            ((TextView)localView.findViewById(2131230803)).setText(str);
            CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230804);
            localCheckBox.setChecked(false);
            localCheckBox.setFocusable(false);
            localCheckBox.setClickable(false);
            this.f.add(localCheckBox);
            localImageView = (ImageView)localView.findViewById(2131230802);
            if (!str.equals(Strings.getString(2131296432)))
              break label348;
            localImageView.setBackgroundResource(2130837869);
            localView.setOnClickListener(new e(this, localCheckBox, str));
            localLinearLayout.addView(localView);
            continue;
          }
        }
        catch (Exception localException)
        {
          Logger.error("could not populate " + localException.getLocalizedMessage());
        }
        return;
        label348: if (str.equals(Strings.getString(2131296433)))
          localImageView.setBackgroundResource(2130837872);
        else if (str.equals(Strings.getString(2131296434)))
          localImageView.setBackgroundResource(2130837870);
      }
  }

  private void b(LayoutInflater paramLayoutInflater)
  {
    String[] arrayOfString = { "com.android.browser", "com.google.android.browser", "com.sony.nfx.app.browser" };
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131231026);
    PackageManager localPackageManager = getPackageManager();
    Object localObject = null;
    int m = 0;
    while (true)
      if ((m < arrayOfString.length) && (localObject == null))
        try
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(arrayOfString[m], 0);
          localObject = localApplicationInfo;
          m++;
        }
        catch (Exception localException2)
        {
          while (true)
            Logger.error("could not get browser app info " + localException2.getLocalizedMessage());
        }
    if (localObject == null)
      return;
    while (true)
    {
      String str;
      ImageView localImageView;
      try
      {
        Iterator localIterator = d.keySet().iterator();
        if (!localIterator.hasNext())
          break;
        str = (String)localIterator.next();
        View localView = paramLayoutInflater.inflate(2130903050, null);
        ((TextView)localView.findViewById(2131230803)).setText(str);
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230804);
        localCheckBox.setChecked(false);
        localCheckBox.setFocusable(false);
        localCheckBox.setClickable(false);
        this.f.add(localCheckBox);
        localImageView = (ImageView)localView.findViewById(2131230802);
        if (!str.equals(Strings.getString(2131296430)))
          break label302;
        localImageView.setBackgroundResource(2130837871);
        localView.setOnClickListener(new f(this, localCheckBox, str));
        localLinearLayout.addView(localView);
        continue;
      }
      catch (Exception localException1)
      {
        Logger.error("could not populate " + localException1.getLocalizedMessage());
      }
      break;
      label302: if (str.equals(Strings.getString(2131296431)))
        localImageView.setBackgroundResource(2130837868);
    }
  }

  protected final void c()
  {
    this.h = 0;
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
      runOnUiThread(new g(this, (CheckBox)localIterator.next()));
    runOnUiThread(new h(this));
  }

  protected final void d()
  {
    this.h = this.f.size();
    this.g.setChecked(true);
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
      runOnUiThread(new i(this, (CheckBox)localIterator.next()));
    runOnUiThread(new j(this));
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    int m = 0;
    super.onCreate(paramBundle);
    setContentView(2130903099);
    a(true, 2130837874, 2130837873, Strings.getString(2131296418), false);
    this.l = (50 * DonutTools.getDisplayDensity(((WindowManager)getSystemService("window")).getDefaultDisplay()) / 160);
    ((TextView)findViewById(2131230927)).setText(Strings.getString(2131296721));
    Button localButton = (Button)findViewById(2131231019);
    localButton.setText(Strings.getString(2131296375));
    localButton.setOnClickListener(new s(this));
    ((TextView)findViewById(2131231021)).setText(Strings.getString(2131296419));
    ((TextView)findViewById(2131231025)).setText(Strings.getString(2131296420));
    ((TextView)findViewById(2131231023)).setText(Strings.getString(2131296421));
    this.g = ((CheckBox)findViewById(2131230928));
    this.g.setOnCheckedChangeListener(new w(this));
    LayoutInflater localLayoutInflater = getLayoutInflater();
    try
    {
      LinearLayout localLinearLayout = (LinearLayout)findViewById(2131231022);
      AccountWrapper localAccountWrapper = new AccountWrapper();
      a[] arrayOfa = localAccountWrapper.getAccountNames(this);
      int n = arrayOfa.length;
      while (m < n)
      {
        a locala = arrayOfa[m];
        this.b.put(locala.a, new y(this, locala));
        View localView = localLayoutInflater.inflate(2130903100, null);
        ((TextView)localView.findViewById(2131230803)).setText(locala.a);
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230804);
        localCheckBox.setChecked(false);
        localCheckBox.setFocusable(false);
        localCheckBox.setClickable(false);
        this.f.add(localCheckBox);
        ((ImageView)localView.findViewById(2131230802)).setImageDrawable(localAccountWrapper.getDrawableForType(this, locala.b));
        localView.setOnClickListener(new z(this, localCheckBox, locala));
        localLinearLayout.addView(localView);
        m++;
      }
    }
    catch (Exception localException)
    {
      Logger.error("could not populate " + localException.getLocalizedMessage());
      b(localLayoutInflater);
      a(localLayoutInflater);
    }
  }

  protected void onDestroy()
  {
    if (this.j != null)
      this.j.dismiss();
    if (this.k != null)
      this.k.dismiss();
    super.onDestroy();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if ((this.k != null) && (this.k.isShowing()))
      paramBundle.putBoolean("progress", true);
    if ((this.j != null) && (this.j.isShowing()))
      paramBundle.putBoolean("alert", true);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.WipeByApp
 * JD-Core Version:    0.6.2
 */