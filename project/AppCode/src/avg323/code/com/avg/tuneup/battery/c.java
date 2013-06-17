package com.avg.tuneup.battery;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.avg.a.b;
import com.avg.tuneup.traffic.s;
import com.avg.ui.general.q;
import java.lang.reflect.Method;

public class c extends com.avg.tuneup.h
{
  public static final int[] a = { 15000, 30000, 60000, 120000, 600000, -1 };
  public static final int[] b = { 10, 30, 50, 0 };
  private NetworkInfo c;
  private IntentFilter d;
  private int[] e;
  private l f;
  private ListView g;
  private BroadcastReceiver h = new d(this);

  private NetworkInfo.State F()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)this.ag.getSystemService("connectivity");
    NetworkInfo localNetworkInfo;
    if (localConnectivityManager != null)
    {
      localNetworkInfo = localConnectivityManager.getNetworkInfo(0);
      if (localNetworkInfo == null);
    }
    for (NetworkInfo.State localState = localNetworkInfo.getState(); ; localState = NetworkInfo.State.UNKNOWN)
      return localState;
  }

  private String G()
  {
    NetworkInfo.State localState = F();
    String str;
    if (localState.equals(NetworkInfo.State.CONNECTED))
      str = this.ag.getString(com.avg.a.g.connected);
    while (true)
    {
      return str;
      if (localState.equals(NetworkInfo.State.CONNECTING))
      {
        str = this.ag.getString(com.avg.a.g.connecting);
      }
      else if (localState.equals(NetworkInfo.State.DISCONNECTED))
      {
        str = this.ag.getString(com.avg.a.g.disconnected);
      }
      else if (localState.equals(NetworkInfo.State.DISCONNECTING))
      {
        str = this.ag.getString(com.avg.a.g.disconnecting);
      }
      else
      {
        if (localState.equals(NetworkInfo.State.SUSPENDED));
        while (!localState.equals(NetworkInfo.State.UNKNOWN))
        {
          str = "";
          break;
        }
        str = this.ag.getString(com.avg.a.g.unknown);
      }
    }
  }

  private boolean H()
  {
    try
    {
      boolean bool2 = ContentResolver.getMasterSyncAutomatically();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        boolean bool1 = false;
      }
    }
  }

  private boolean I()
  {
    int i = 1;
    int j = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (j <= 7)
      return bool;
    if (Settings.System.getInt(this.ag.getContentResolver(), "screen_brightness_mode", -1) == i);
    while (true)
    {
      bool = i;
      break;
      i = 0;
    }
  }

  private int J()
  {
    return Settings.System.getInt(this.ag.getContentResolver(), "screen_brightness", 0);
  }

  private void K()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.battery_save_screen_timeout));
    localBuilder.setIcon(com.avg.a.d.dlg_ic_screen_timeout);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this.ag, M(), this.ag.getResources().getStringArray(b.battery_save_screen_timeout_array)), M(), new f(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private int L()
  {
    return Settings.System.getInt(this.ag.getContentResolver(), "screen_off_timeout", 0);
  }

  private int M()
  {
    int i = L();
    int j = 0;
    if (j < a.length)
      if (i != a[j]);
    while (true)
    {
      return j;
      j++;
      break;
      j = 0;
    }
  }

  private boolean N()
  {
    int i = Settings.System.getInt(this.ag.getContentResolver(), "airplane_mode_on", 0);
    boolean bool = false;
    if (i != 0)
      bool = true;
    return bool;
  }

  private boolean O()
  {
    String str = Settings.Secure.getString(this.ag.getContentResolver(), "location_providers_allowed");
    if ((str != null) && (str.toLowerCase().contains("gps")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void P()
  {
    a(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
  }

  private boolean Q()
  {
    if (BluetoothAdapter.getDefaultAdapter() != null)
    {
      int i = R();
      if ((i != 12) && (i != 11));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int R()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter != null);
    for (int i = localBluetoothAdapter.getState(); ; i = -1)
      return i;
  }

  private String S()
  {
    String str;
    switch (R())
    {
    default:
      str = this.ag.getString(com.avg.a.g.unknown);
    case 10:
    case 13:
    case 12:
    case 11:
    }
    while (true)
    {
      return str;
      str = this.ag.getString(com.avg.a.g.turned_of);
      continue;
      str = this.ag.getString(com.avg.a.g.turning_of);
      continue;
      str = this.ag.getString(com.avg.a.g.turned_on);
      continue;
      str = this.ag.getString(com.avg.a.g.turning_on);
    }
  }

  private boolean T()
  {
    return com.avg.tuneup.j.n();
  }

  private int U()
  {
    return com.avg.tuneup.j.o();
  }

  private int V()
  {
    int i = U();
    int j = 0;
    if (j < b.length)
      if (i != b[j]);
    while (true)
    {
      return j;
      j++;
      break;
      j = 1;
    }
  }

  private void W()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.battery_save_notify_on));
    localBuilder.setIcon(com.avg.a.d.dlg_ic_notify_low_battery);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this.ag, V(), this.ag.getResources().getStringArray(b.battery_save_power_threshold)), V(), new g(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private boolean X()
  {
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    if (localWifiManager != null)
    {
      int i = localWifiManager.getWifiState();
      if ((i != 3) && (i != 2));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int Y()
  {
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    if (localWifiManager != null);
    for (int i = localWifiManager.getWifiState(); ; i = 4)
      return i;
  }

  private String Z()
  {
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    NetworkInfo.DetailedState localDetailedState;
    String str;
    if (this.c != null)
    {
      localDetailedState = this.c.getDetailedState();
      if (localDetailedState.equals(NetworkInfo.DetailedState.CONNECTED))
      {
        WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
        if (localWifiInfo == null)
          break label306;
        str = this.ag.getString(com.avg.a.g.connected_to) + " " + localWifiInfo.getSSID();
      }
    }
    while (true)
    {
      return str;
      if (localDetailedState.equals(NetworkInfo.DetailedState.AUTHENTICATING))
        str = this.ag.getString(com.avg.a.g.authenticating);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.CONNECTING))
        str = this.ag.getString(com.avg.a.g.connecting);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.DISCONNECTED))
        str = this.ag.getString(com.avg.a.g.disconnected);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.DISCONNECTING))
        str = this.ag.getString(com.avg.a.g.disconnecting);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.FAILED))
        str = this.ag.getString(com.avg.a.g.failed);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.IDLE))
        str = this.ag.getString(com.avg.a.g.idle);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.OBTAINING_IPADDR))
        str = this.ag.getString(com.avg.a.g.obtaining_ip);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.SCANNING))
        str = this.ag.getString(com.avg.a.g.scanning);
      else if (localDetailedState.equals(NetworkInfo.DetailedState.SUSPENDED))
        str = this.ag.getString(com.avg.a.g.suspended);
      else
        label306: switch (localWifiManager.getWifiState())
        {
        default:
          str = this.ag.getString(com.avg.a.g.unknown);
          break;
        case 1:
          str = this.ag.getString(com.avg.a.g.turned_of);
          break;
        case 0:
          str = this.ag.getString(com.avg.a.g.turning_of);
          break;
        case 3:
          str = this.ag.getString(com.avg.a.g.turned_on);
          break;
        case 2:
          str = this.ag.getString(com.avg.a.g.turning_on);
        }
    }
  }

  private void a()
  {
    Intent localIntent1 = new Intent("android.settings.DATA_ROAMING_SETTINGS");
    try
    {
      a(localIntent1);
      return;
    }
    catch (Exception localException1)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException1);
        Intent localIntent2 = new Intent("android.intent.action.VIEW");
        localIntent2.setClassName("com.android.phone", "com.android.phone.Settings");
        try
        {
          a(localIntent2);
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
        }
      }
    }
  }

  private void a(int paramInt1, int paramInt2)
  {
    ((AudioManager)this.ag.getSystemService("audio")).setStreamVolume(paramInt1, paramInt2, 0);
  }

  private void a(boolean paramBoolean)
  {
    ContentResolver.setMasterSyncAutomatically(paramBoolean);
  }

  private void a(boolean paramBoolean, o paramo)
  {
    if (paramBoolean)
    {
      Settings.System.putInt(this.ag.getContentResolver(), "screen_brightness_mode", 1);
      paramo.e.setVisibility(8);
      paramo.b.setText(this.ag.getString(com.avg.a.g.battery_save_auto_brightnes));
      b(J());
    }
    while (true)
    {
      return;
      Settings.System.putInt(this.ag.getContentResolver(), "screen_brightness_mode", 0);
      paramo.e.setVisibility(0);
      paramo.b.setText(this.ag.getString(com.avg.a.g.battery_save_screen_brightnes));
      b(J());
    }
  }

  private void aa()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.LAUNCHER");
    ComponentName localComponentName;
    if (Build.VERSION.SDK_INT < 11)
      localComponentName = new ComponentName("com.android.settings", "com.android.settings.wifi.WifiApSettings");
    while (true)
    {
      localIntent.setComponent(localComponentName);
      localIntent.setFlags(270532608);
      a(localIntent);
      return;
      localComponentName = new ComponentName("com.android.settings", "com.android.settings.Settings");
      localIntent.putExtra(":android:show_fragment", "com.android.settings.wifi.WifiApSettings");
    }
  }

  private int ab()
  {
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    if (localWifiManager != null);
    while (true)
    {
      try
      {
        int j = ((Integer)localWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(localWifiManager, new Object[0])).intValue();
        i = j;
        return i;
      }
      catch (Exception localException)
      {
        i = -1;
        com.avg.toolkit.f.a.a();
        continue;
      }
      int i = -1;
    }
  }

  private boolean ac()
  {
    int i = ab();
    if ((i == 2) || (i == 3));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int ad()
  {
    AudioManager localAudioManager = (AudioManager)this.ag.getSystemService("audio");
    int i = localAudioManager.getRingerMode();
    int j = localAudioManager.getVibrateSetting(0);
    int k;
    switch (i)
    {
    default:
      k = 0;
    case 2:
    case 1:
    case 0:
    }
    while (true)
    {
      return k;
      if (j == 1)
      {
        k = 3;
      }
      else
      {
        k = 2;
        continue;
        k = 1;
        continue;
        k = 0;
      }
    }
  }

  private String ae()
  {
    int i = ad();
    return this.ag.getResources().getStringArray(b.battery_save_ringer_options)[i];
  }

  private void af()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.a.g.battery_save_ringer));
    localBuilder.setIcon(com.avg.a.d.dlg_ic_ringer);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this.ag, ad(), this.ag.getResources().getStringArray(b.battery_save_ringer_options)), ad(), new h(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  private void ag()
  {
    AudioManager localAudioManager = (AudioManager)this.ag.getSystemService("audio");
    View localView = LayoutInflater.from(this.ag).inflate(com.avg.a.f.dialog_volume, null);
    if (Settings.System.getInt(this.ag.getContentResolver(), "notifications_use_ring_volume", 1) == 1);
    for (boolean bool = true; ; bool = false)
    {
      CheckBox localCheckBox = (CheckBox)localView.findViewById(com.avg.a.e.cb_use_ringtone);
      localCheckBox.setChecked(bool);
      localCheckBox.setOnCheckedChangeListener(new i(this, localView));
      SeekBar localSeekBar1 = (SeekBar)localView.findViewById(com.avg.a.e.sb_ringtone);
      localSeekBar1.setMax(localAudioManager.getStreamMaxVolume(2));
      localSeekBar1.setProgress(localAudioManager.getStreamVolume(2));
      SeekBar localSeekBar2 = (SeekBar)localView.findViewById(com.avg.a.e.sb_media);
      localSeekBar2.setMax(localAudioManager.getStreamMaxVolume(3));
      localSeekBar2.setProgress(localAudioManager.getStreamVolume(3));
      SeekBar localSeekBar3 = (SeekBar)localView.findViewById(com.avg.a.e.sb_notification);
      localSeekBar3.setMax(localAudioManager.getStreamMaxVolume(5));
      localSeekBar3.setProgress(localAudioManager.getStreamVolume(5));
      if (bool)
      {
        localSeekBar3.setVisibility(8);
        localView.findViewById(com.avg.a.e.tv_notification).setVisibility(8);
      }
      SeekBar localSeekBar4 = (SeekBar)localView.findViewById(com.avg.a.e.sb_alarm);
      localSeekBar4.setMax(localAudioManager.getStreamMaxVolume(4));
      localSeekBar4.setProgress(localAudioManager.getStreamVolume(4));
      SeekBar localSeekBar5 = (SeekBar)localView.findViewById(com.avg.a.e.sb_system);
      localSeekBar5.setMax(localAudioManager.getStreamMaxVolume(1));
      localSeekBar5.setProgress(localAudioManager.getStreamVolume(1));
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
      localBuilder.setTitle(this.ag.getString(com.avg.a.g.battery_save_volume));
      localBuilder.setView(localView);
      localBuilder.setIcon(com.avg.a.d.dlg_ic_volume);
      localBuilder.setPositiveButton(com.avg.a.g.ok, new j(this, localView));
      localBuilder.setNegativeButton(com.avg.a.g.cancel, new k(this));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      return;
    }
  }

  private boolean ah()
  {
    int i = 1;
    if (Settings.System.getInt(this.ag.getContentResolver(), "accelerometer_rotation", 0) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  private void b(int paramInt)
  {
    if (paramInt == 0)
      paramInt = 1;
    Settings.System.putInt(this.ag.getContentResolver(), "screen_brightness", paramInt);
    WindowManager.LayoutParams localLayoutParams = this.ag.getWindow().getAttributes();
    localLayoutParams.screenBrightness = (paramInt / 255.0F);
    this.ag.getWindow().setAttributes(localLayoutParams);
  }

  private void c(int paramInt)
  {
    Settings.System.putInt(this.ag.getContentResolver(), "screen_off_timeout", a[paramInt]);
  }

  private void d(int paramInt)
  {
    com.avg.tuneup.j.g(b[paramInt]);
    if (paramInt == 3);
    for (boolean bool = false; ; bool = true)
    {
      com.avg.ui.general.a.a locala;
      if (T() != bool)
      {
        g(bool);
        Bundle localBundle2 = new Bundle();
        localBundle2.putBoolean("__SAD", bool);
        com.avg.toolkit.f.a(this.ag, 11000, 1, localBundle2);
        if (this.ag.o())
          this.ag.c(bool);
        locala = this.ag;
        if (!bool)
          break label135;
      }
      label135: for (String str = "on"; ; str = "off")
      {
        com.avg.toolkit.c.a.a(locala, "power_saving_options", "notify_on_low_battery", str, 0);
        Bundle localBundle1 = new Bundle();
        localBundle1.putBoolean("__SAD", bool);
        com.avg.toolkit.f.a(this.ag, 11000, 1, localBundle1);
        return;
      }
    }
  }

  private String e(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default:
      str = this.ag.getString(com.avg.a.g.unknown);
    case 1:
    case 2:
    case 3:
    case 0:
    }
    while (true)
    {
      return str;
      str = this.ag.getString(com.avg.a.g.turned_of);
      continue;
      str = this.ag.getString(com.avg.a.g.turning_on);
      continue;
      str = this.ag.getString(com.avg.a.g.turned_on);
      continue;
      str = this.ag.getString(com.avg.a.g.turning_of);
    }
  }

  private void e(boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = 1;
      if (Build.VERSION.SDK_INT >= 17)
        break label65;
      Settings.System.putInt(this.ag.getContentResolver(), "airplane_mode_on", i);
      Intent localIntent = new Intent("android.intent.action.AIRPLANE_MODE");
      localIntent.putExtra("state", paramBoolean);
      this.ag.sendBroadcast(localIntent);
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label65: a(new Intent("android.settings.WIRELESS_SETTINGS"));
    }
  }

  private void f(int paramInt)
  {
    AudioManager localAudioManager = (AudioManager)this.ag.getSystemService("audio");
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      localAudioManager.setRingerMode(0);
      continue;
      localAudioManager.setRingerMode(1);
      continue;
      localAudioManager.setRingerMode(2);
      localAudioManager.setVibrateSetting(0, 0);
      continue;
      localAudioManager.setRingerMode(2);
      localAudioManager.setVibrateSetting(0, 1);
    }
  }

  private void f(boolean paramBoolean)
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter != null)
    {
      if (!paramBoolean)
        break label18;
      localBluetoothAdapter.enable();
    }
    while (true)
    {
      return;
      label18: localBluetoothAdapter.disable();
    }
  }

  private void g(boolean paramBoolean)
  {
    com.avg.tuneup.j.e(paramBoolean);
    com.avg.tuneup.j.h(0);
  }

  private void h(boolean paramBoolean)
  {
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    if (localWifiManager != null)
      if (ac())
        i(false);
    try
    {
      localWifiManager.setWifiEnabled(paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private int i(boolean paramBoolean)
  {
    int i = -1;
    WifiManager localWifiManager = (WifiManager)this.ag.getSystemService("wifi");
    if (localWifiManager == null)
      return i;
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
        int k = ((Integer)localWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(localWifiManager, new Object[0])).intValue();
        j = k;
        i = j;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a("wifi" + localException.getMessage());
      }
      int j = i;
    }
  }

  private void j(boolean paramBoolean)
  {
    ContentResolver localContentResolver = this.ag.getContentResolver();
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      Settings.System.putInt(localContentResolver, "accelerometer_rotation", i);
      return;
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    View localView;
    for (Object localObject = null; ; localObject = localView)
    {
      return localObject;
      localView = paramLayoutInflater.inflate(com.avg.a.f.listview_fragment, paramViewGroup, false);
      this.g = ((ListView)localView.findViewById(com.avg.a.e.list));
      if (this.ag.o())
        a(this.ag.getString(com.avg.a.g.battery_save_settings), this.ag.getString(com.avg.a.g.performance_battery), localView);
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    boolean bool = s.b(this.ag);
    if (Build.VERSION.SDK_INT < 11)
      if (bool)
        this.e = new int[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
    while (true)
    {
      this.d = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
      this.d.addAction("android.net.wifi.STATE_CHANGE");
      this.d.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
      this.d.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      this.d.addAction("android.intent.action.AIRPLANE_MODE");
      this.d.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
      this.f = new l(this, this.ag);
      return;
      this.e = new int[] { 0, 1, 3, 4, 6, 7, 8, 9, 10, 11, 12 };
      continue;
      if (bool)
        this.e = new int[] { 0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
      else if (com.avg.ui.general.o.a == q.c)
        this.e = new int[] { 0, 1, 3, 6, 7, 8, 9, 10, 11, 12 };
      else
        this.e = new int[] { 0, 1, 3, 4, 6, 7, 8, 9, 10, 11, 12 };
    }
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    this.g.setAdapter(this.f);
    this.g.setCacheColorHint(0);
    this.g.setOnItemClickListener(new e(this));
  }

  public void r()
  {
    super.r();
    this.f.notifyDataSetChanged();
    this.ag.registerReceiver(this.h, this.d);
    Intent localIntent = this.ag.getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      com.avg.toolkit.c.a.a(this.ag, "power_saving_options", "opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
  }

  public void s()
  {
    super.s();
    this.ag.unregisterReceiver(this.h);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.c
 * JD-Core Version:    0.6.2
 */