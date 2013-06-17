package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;
import com.antivirus.antitheft.w;
import com.antivirus.m;
import com.antivirus.ui.tablet.DualPaneActivity;
import java.util.ArrayList;

public class b extends com.antivirus.ui.a.a.b
  implements x
{
  private h Y;
  private AlertDialog Z;
  private String aa;
  private ProgressDialog ab;
  private r ac;

  private ArrayList G()
  {
    ArrayList localArrayList = new ArrayList();
    String str = com.antivirus.c.a(this.ad);
    if (str == null)
      str = "";
    localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ad, 2131296721), str, 2130837575));
    localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ad, 2131296707), m.a(this.ad, 2131296708), 2130837574));
    return localArrayList;
  }

  private void H()
  {
    a(this.Y);
    a().setOnItemClickListener(new c(this));
  }

  private void I()
  {
    if (!w.b(this.ad, this.i))
    {
      Toast.makeText(this.ad, m.a(this.ad, 2131296597), 1).show();
      return;
    }
    if (com.antivirus.c.d())
    {
      com.antivirus.c.c(false);
      com.avg.toolkit.c.a.a(this.ad, "anti_theft", "device_locator", "off", 0);
    }
    while (true)
    {
      com.antivirus.c.n();
      this.Y.notifyDataSetChanged();
      break;
      com.antivirus.c.c(true);
      com.avg.toolkit.c.a.a(this.ad, "anti_theft", "device_locator", "on", 0);
    }
  }

  private void J()
  {
    if (!com.avg.toolkit.b.f.a(this.ad))
      a(m.a(this.ad, 2131296723), m.a(this.ad, 2131296261));
    while (true)
    {
      return;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ad);
      localBuilder.setTitle(m.a(this.ad, 2131296516));
      localBuilder.setIcon(2130837720);
      View localView = LayoutInflater.from(this.ad).inflate(2130903074, null);
      localBuilder.setView(localView);
      EditText localEditText = (EditText)localView.findViewById(2131230865);
      localEditText.setText(this.ac.b());
      localEditText.setInputType(32);
      localBuilder.setPositiveButton(m.a(this.ad, 2131296269), new e(this, localEditText));
      localBuilder.setNegativeButton(m.a(this.ad, 2131296270), new f(this));
      this.Z = localBuilder.create();
      this.Z.setCanceledOnTouchOutside(false);
      this.Z.show();
    }
  }

  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ad);
    localBuilder.setTitle(paramString2);
    localBuilder.setMessage(paramString1);
    localBuilder.setIcon(2130837719);
    localBuilder.setPositiveButton(m.a(this.ad, 2131296269), new g(this));
    this.Z = localBuilder.create();
    this.Z.setCanceledOnTouchOutside(false);
    this.Z.show();
  }

  protected void F()
  {
    if (this.ad.o())
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ad);
      localBuilder.setTitle(m.a(this.ad, 2131296707));
      localBuilder.setIcon(2130837728);
      View localView = this.ad.getLayoutInflater().inflate(2130903045, null);
      int i = 20 * com.avg.ui.general.c.i.a(this.ad) / 160;
      y.a(this.ad.getApplicationContext(), localView);
      localView.setPadding(i, i, i, i);
      localBuilder.setView(localView);
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.setButton(m.a(this.ad, 2131296269), new d(this));
      localAlertDialog.show();
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ad, "anti_theft", "how_to", null, 0);
      return;
      a(new Intent(this.ad, AntiTheftSMSCommandsActivity.class));
    }
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof Menu))
      ((Menu)paramObject).add(0, 17, 0, this.ad.getString(2131296728));
    while (true)
    {
      return null;
      if ((paramObject instanceof com.avg.ui.general.c.f))
        ((com.avg.ui.general.c.f)paramObject).a(0, 17, 0, this.ad.getString(2131296728));
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.ac = new r(this.ad, this);
    if (this.ad.o())
      d(true);
    this.Y = new h(this, this.ad, G());
    this.aa = com.antivirus.c.a(this.ad);
  }

  public void a(Menu paramMenu)
  {
    if (this.ad.o())
    {
      paramMenu.clear();
      a(paramMenu);
    }
    super.a(paramMenu);
  }

  public void a(boolean paramBoolean)
  {
    if ((this.Y != null) && (paramBoolean))
    {
      this.Y.a(G());
      this.Y.notifyDataSetChanged();
    }
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    return e(paramMenuItem);
  }

  public boolean b(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 17:
    }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      this.ac.a();
    }
  }

  public boolean b(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    H();
  }

  public void e(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!this.ad.o())
        break label45;
      ((DualPaneActivity)this.ad).m();
      this.ad.a(new z(), 2131230908, "AntitheftRegisterFragment");
    }
    while (true)
    {
      return;
      label45: h().finish();
    }
  }

  public boolean e(MenuItem paramMenuItem)
  {
    this.ad.closeOptionsMenu();
    return b(paramMenuItem.getItemId());
  }

  public void t()
  {
    if (this.Z != null)
      this.Z.dismiss();
    if (this.ab != null)
    {
      this.ab.dismiss();
      this.ab = null;
    }
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.b
 * JD-Core Version:    0.6.2
 */