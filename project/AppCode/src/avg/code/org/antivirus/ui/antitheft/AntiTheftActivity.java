package org.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.widget.ListView;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import java.util.ArrayList;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.antitheft.u;
import org.antivirus.core.Logger;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseToolListActivity;
import org.antivirus.ui.WebViewAdsManager;

public class AntiTheftActivity extends BaseToolListActivity
{
  private k a;
  private AlertDialog b;
  private String c;
  private ProgressDialog f;
  private boolean g;
  private WebViewAdsManager h;
  private Handler i = new a(this);
  private boolean j;
  private ServiceConnection k = new c(this);

  private void a(String paramString, ObfuscatedSharedPreferences paramObfuscatedSharedPreferences)
  {
    if (paramObfuscatedSharedPreferences != null)
    {
      paramObfuscatedSharedPreferences.putString("XX8R", paramString);
      paramObfuscatedSharedPreferences.commit();
    }
    this.c = paramString;
    this.f = ProgressDialog.show(this, "", Strings.getString(2131296638), true, false, new i(this));
    this.f.setOnDismissListener(new j(this));
    this.f.setCanceledOnTouchOutside(false);
    Handler localHandler = this.i;
    try
    {
      Intent localIntent = new Intent(this, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1030);
      localIntent.putExtra("__SAH", new Messenger(localHandler));
      localIntent.putExtra("adminEmail", paramString);
      startService(localIntent);
      if (u.b(this, a(getApplicationContext())))
      {
        AVSettings.setSendLocation(true);
        AVSettings.commit();
        this.a.notifyDataSetChanged();
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(paramString2);
    localBuilder.setMessage(paramString1);
    localBuilder.setIcon(2130837676);
    localBuilder.setPositiveButton(Strings.getString(2131296259), new b(this));
    this.b = localBuilder.create();
    this.b.setCanceledOnTouchOutside(false);
    if (!isFinishing())
      this.b.show();
  }

  private ArrayList d()
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = AVSettings.getFindRUser(this);
    if (str1 == null)
      str1 = "";
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296637), str1, 2130837551));
    String str2 = Strings.getString(2131296307);
    if ((AVSettings.shouldSendLocation()) && (u.b(getApplicationContext(), a(getApplicationContext()))));
    for (boolean bool = true; ; bool = false)
    {
      localArrayList.add(new BaseListAdapter.BaseListAdapterItem(str2, "", 2130837738, bool));
      localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296623), Strings.getString(2131296624), 2130837550));
      return localArrayList;
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.h.onConfigurationChanged(this, 2131230906, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    this.a = new k(this, this, d());
    setListAdapter(this.a);
    getListView().setOnItemClickListener(new d(this));
    a(2130837510, 2130837513, Strings.getString(2131296280), false);
    this.c = AVSettings.getFindRUser(this);
    this.g = false;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      String str = localBundle.getString("register");
      if (str != null)
      {
        this.g = true;
        a(str, new ObfuscatedSharedPreferences(this, "XX8R", 0, true));
      }
    }
    this.h = new WebViewAdsManager();
    bindService(new Intent(this, AVService.class), this.k, 1);
    this.j = true;
  }

  public void onDestroy()
  {
    if (this.b != null)
      this.b.dismiss();
    if (this.f != null)
    {
      this.f.dismiss();
      this.f = null;
    }
    if (this.h != null)
      this.h.stop();
    if (this.j)
    {
      unbindService(this.k);
      this.j = false;
    }
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.AntiTheftActivity
 * JD-Core Version:    0.6.2
 */