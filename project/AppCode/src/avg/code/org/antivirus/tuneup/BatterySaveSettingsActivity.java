package org.antivirus.tuneup;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.System;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListView;
import java.lang.reflect.Method;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.BaseToolListActivity;
import org.antivirus.ui.main.ActivationActivity;
import org.antivirus.ui.performance.PerformanceActivity;

public class BatterySaveSettingsActivity extends BaseToolListActivity
{
  public static final int[] a = { 0, 1, 2, 3 };
  public static final int[] b = { 15000, 30000, 60000, 120000, 600000, -1 };
  public static final int[] c = { 10, 30, 50, 0 };
  private NetworkInfo f;
  private IntentFilter g;
  private int[] h;
  private BroadcastReceiver i = new i(this);

  private int c(boolean paramBoolean)
  {
    int j = -1;
    WifiManager localWifiManager = (WifiManager)getSystemService("wifi");
    if (localWifiManager == null)
      return j;
    if (paramBoolean)
      localWifiManager.setWifiEnabled(false);
    if (Integer.parseInt(Build.VERSION.SDK) > 7);
    while (true)
    {
      try
      {
        Class localClass = localWifiManager.getClass();
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = WifiConfiguration.class;
        arrayOfClass[1] = Boolean.TYPE;
        Method localMethod = localClass.getMethod("setWifiApEnabled", arrayOfClass);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = null;
        arrayOfObject[1] = Boolean.valueOf(paramBoolean);
        localMethod.invoke(localWifiManager, arrayOfObject);
        int m = ((Integer)localWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(localWifiManager, new Object[0])).intValue();
        k = m;
        j = k;
      }
      catch (Exception localException)
      {
        Logger.error("wifi" + localException.getMessage());
      }
      int k = j;
    }
  }

  private void d(int paramInt)
  {
    if (paramInt == 0)
      paramInt = 1;
    Settings.System.putInt(getContentResolver(), "screen_brightness", paramInt);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.screenBrightness = (paramInt / 255.0F);
    getWindow().setAttributes(localLayoutParams);
  }

  private int i()
  {
    return Settings.System.getInt(getContentResolver(), "screen_brightness", 0);
  }

  private int j()
  {
    int j = Settings.System.getInt(getContentResolver(), "screen_off_timeout", 0);
    int k = 0;
    if (k < b.length)
      if (j != b[k]);
    while (true)
    {
      return k;
      k++;
      break;
      k = 0;
    }
  }

  private static int k()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter != null);
    for (int j = localBluetoothAdapter.getState(); ; j = -1)
      return j;
  }

  private static int l()
  {
    int j = AVSettings.getPowerSavingModeThreshold();
    int k = 0;
    if (k < c.length)
      if (j != c[k]);
    while (true)
    {
      return k;
      k++;
      break;
      k = 1;
    }
  }

  private int m()
  {
    WifiManager localWifiManager = (WifiManager)getSystemService("wifi");
    if (localWifiManager != null);
    while (true)
    {
      try
      {
        int k = ((Integer)localWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(localWifiManager, new Object[0])).intValue();
        j = k;
        return j;
      }
      catch (Exception localException)
      {
        j = -1;
        Logger.errorBadAgrument();
        continue;
      }
      int j = -1;
    }
  }

  private boolean n()
  {
    int j = m();
    if ((j == 2) || (j == 3));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int o()
  {
    AudioManager localAudioManager = (AudioManager)getSystemService("audio");
    int j = localAudioManager.getRingerMode();
    int k = localAudioManager.getVibrateSetting(0);
    int m;
    switch (j)
    {
    default:
      m = 0;
    case 2:
    case 1:
    case 0:
    }
    while (true)
    {
      return m;
      if (k == 1)
      {
        m = 3;
      }
      else
      {
        m = 2;
        continue;
        m = 1;
        continue;
        m = 0;
      }
    }
  }

  protected final void c()
  {
    finish();
    Intent localIntent = new Intent(this, PerformanceActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        finish();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((2 == paramInt1) && (-1 == paramInt2))
        finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    a(2130837520, 2130837521, Strings.getString(2131296491), false);
    boolean bool = getPackageManager().hasSystemFeature("android.hardware.telephony");
    if (Integer.parseInt(Build.VERSION.SDK) < 14)
      if (bool)
        this.h = new int[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
    while (true)
    {
      setListAdapter(new q(this, this));
      getListView().setCacheColorHint(0);
      getListView().setOnItemClickListener(new j(this));
      this.g = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
      this.g.addAction("android.net.wifi.STATE_CHANGE");
      this.g.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
      this.g.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      this.g.addAction("android.intent.action.AIRPLANE_MODE");
      this.g.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
      if (AVSettings.shouldShowActivationScreen());
      try
      {
        startActivityForResult(new Intent(this, ActivationActivity.class), 1);
        return;
        this.h = new int[] { 0, 1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12 };
        continue;
        if (bool)
        {
          this.h = new int[] { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
          continue;
        }
        this.h = new int[] { 0, 1, 3, 4, 6, 7, 8, 9, 10, 11, 12 };
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log(localException);
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(this.i);
  }

  public void onResume()
  {
    super.onResume();
    ((q)getListAdapter()).notifyDataSetChanged();
    registerReceiver(this.i, this.g);
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      a.a(this, "power_saving_options", "opened_from_notification", null);
      localIntent.removeExtra("from_notification");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.BatterySaveSettingsActivity
 * JD-Core Version:    0.6.2
 */