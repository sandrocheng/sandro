package com.avg.ui.general.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.i;
import android.support.v4.app.z;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.avg.toolkit.ads.WebViewAdsManager;
import java.util.ArrayList;
import java.util.Locale;

public abstract class a extends i
{
  public static boolean r = false;
  private Button n = null;
  private android.support.v4.app.o o = null;
  private ServiceConnection p = new b(this);
  public String[] s = null;
  public boolean t;
  protected com.avg.toolkit.e.a u;

  private void k()
  {
    this.n.setOnClickListener(new e(this));
  }

  public ArrayList a(Object paramObject)
  {
    return null;
  }

  public abstract void a(int paramInt);

  public void a(int paramInt, float paramFloat)
  {
    View localView = findViewById(paramInt);
    LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(localLayoutParams1.width, localLayoutParams1.height, paramFloat);
    localLayoutParams2.setMargins(localLayoutParams1.leftMargin, localLayoutParams1.topMargin, localLayoutParams1.rightMargin, localLayoutParams1.bottomMargin);
    localView.setLayoutParams(localLayoutParams2);
  }

  public void a(int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    this.n = ((Button)localView.findViewById(com.avg.ui.general.d.options));
    if (paramBoolean)
    {
      this.n.setBackgroundDrawable(getResources().getDrawable(com.avg.ui.general.c.btn_menu_actionbar));
      ((LinearLayout)localView.findViewById(com.avg.ui.general.d.buttons)).setVisibility(0);
    }
    while (true)
    {
      return;
      ((LinearLayout)localView.findViewById(com.avg.ui.general.d.buttons)).setVisibility(8);
    }
  }

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
  }

  public void a(Fragment paramFragment, int paramInt)
  {
    a(paramFragment, paramInt, null);
  }

  public void a(Fragment paramFragment, int paramInt, String paramString)
  {
    if (this.o.a(paramString) != null);
    while (true)
    {
      return;
      try
      {
        z localz = this.o.a();
        localz.b(paramInt, paramFragment, paramString);
        findViewById(paramInt).setVisibility(0);
        localz.a(4099);
        localz.a();
        this.o.b();
        com.avg.toolkit.c.a.a(this, paramString);
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a("Failed to launch " + paramString + " Error: " + localException.getMessage());
      }
    }
  }

  public void a(Menu paramMenu, int paramInt1, int paramInt2)
  {
  }

  protected void a(View paramView)
  {
    openOptionsMenu();
  }

  protected void a(WebViewAdsManager paramWebViewAdsManager, String paramString)
  {
    String str = Locale.getDefault().getDisplayLanguage();
    if (com.avg.ui.general.o.c());
    for (Integer localInteger = Integer.valueOf(58); ; localInteger = null)
    {
      paramWebViewAdsManager.a(this, str, paramString, localInteger, com.avg.ui.general.o.c());
      return;
    }
  }

  protected void a(boolean paramBoolean1, int paramInt1, int paramInt2, String paramString, boolean paramBoolean2, int paramInt3)
  {
    View localView = findViewById(paramInt3);
    Button localButton = (Button)localView.findViewById(com.avg.ui.general.d.home);
    localButton.setBackgroundResource(paramInt1);
    localButton.setOnTouchListener(new c(this, localButton, paramInt2, paramInt1));
    if (paramBoolean1)
      localButton.setOnClickListener(new d(this));
    ((TextView)localView.findViewById(com.avg.ui.general.d.title)).setText(paramString);
    a(paramInt3, paramBoolean2);
    if (Integer.parseInt(Build.VERSION.SDK) >= 11)
      k();
    while (true)
    {
      return;
      r();
    }
  }

  protected void b(int paramInt)
  {
  }

  public boolean b(String paramString)
  {
    Fragment localFragment = this.o.a(paramString);
    boolean bool1 = false;
    if (localFragment != null)
    {
      boolean bool2 = localFragment.n();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public Fragment c(String paramString)
  {
    if (this.o != null);
    for (Fragment localFragment = this.o.a(paramString); ; localFragment = null)
      return localFragment;
  }

  public void c(int paramInt)
  {
    Drawable localDrawable = getResources().getDrawable(paramInt);
    if (localDrawable != null)
      this.n.setBackgroundDrawable(localDrawable);
  }

  public void c(boolean paramBoolean)
  {
  }

  public void d(int paramInt)
  {
    Fragment localFragment = this.o.a(paramInt);
    if (localFragment != null)
    {
      z localz = this.o.a();
      localz.a(localFragment);
      localz.a();
    }
  }

  protected void g()
  {
    finish();
  }

  protected void h()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    ArrayList localArrayList = a(new ArrayList());
    if (localArrayList != null)
      localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, 0, false, (String[])localArrayList.toArray(new String[localArrayList.size()]), false), 0, new g(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void i()
  {
    g();
  }

  protected abstract Class j();

  public void n()
  {
  }

  public boolean o()
  {
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.o = f();
    if (!r)
      requestWindowFeature(1);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      g();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public void p()
  {
    Class localClass = j();
    if (localClass != null)
      bindService(new Intent(this, localClass), this.p, 1);
  }

  public void q()
  {
    if (this.t)
    {
      unbindService(this.p);
      this.t = false;
      this.u = null;
    }
  }

  protected void r()
  {
    this.n.setOnClickListener(new f(this));
  }

  public com.avg.toolkit.e.a s()
  {
    return this.u;
  }

  public boolean t()
  {
    return this.t;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.a.a
 * JD-Core Version:    0.6.2
 */