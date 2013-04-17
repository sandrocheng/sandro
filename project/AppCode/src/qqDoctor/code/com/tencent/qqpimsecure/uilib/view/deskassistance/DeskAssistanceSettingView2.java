package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.view.button.SwitchButton;
import ha;
import ho;
import nd;

public class DeskAssistanceSettingView2 extends LinearLayout
  implements View.OnClickListener
{
  private SwitchButton mBtnGps;
  private SwitchButton mBtnOffline;
  private SwitchButton mBtnRotation;
  private SwitchButton mBtnVibrModel;
  private ho mConfigDao;
  private Context mContext;
  private int mLastAudioSetting = 0;
  private View mMainLayout;

  public DeskAssistanceSettingView2(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mConfigDao = ho.a();
    this.mMainLayout = LayoutInflater.from(this.mContext).inflate(2130903136, null);
    if (this.mMainLayout == null);
    while (true)
    {
      return;
      initView();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      addView(this.mMainLayout, localLayoutParams);
      setSwitchState();
    }
  }

  private void setGpsState()
  {
    String str = Settings.Secure.getString(this.mContext.getContentResolver(), "location_providers_allowed");
    boolean bool = false;
    if (str != null)
      bool = str.contains("gps");
    this.mBtnGps.setIsOpen(bool);
  }

  private void setOfflineState()
  {
    int i = 1;
    if (Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) == i);
    while (true)
    {
      this.mBtnOffline.setIsOpen(i);
      return;
      int j = 0;
    }
  }

  private void setRotation()
  {
    int i = 1;
    if (Settings.System.getInt(this.mContext.getContentResolver(), "accelerometer_rotation", 0) == i);
    while (true)
    {
      this.mBtnRotation.setIsOpen(i);
      return;
      int j = 0;
    }
  }

  private void setSwitchState()
  {
    int i = 1;
    if (Settings.System.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) == i)
    {
      int k = i;
      this.mBtnOffline.setIsOpen(k);
      setVibrState();
      setGpsState();
      if (Settings.System.getInt(this.mContext.getContentResolver(), "accelerometer_rotation", 0) != i)
        break label68;
    }
    while (true)
    {
      this.mBtnRotation.setIsOpen(i);
      return;
      int m = 0;
      break;
      label68: int j = 0;
    }
  }

  private void setVibrState()
  {
    AudioManager localAudioManager = (AudioManager)this.mContext.getSystemService("audio");
    if (localAudioManager == null);
    while (true)
    {
      return;
      boolean bool = localAudioManager.shouldVibrate(0);
      this.mBtnVibrModel.setIsOpen(bool);
    }
  }

  public void initView()
  {
    this.mMainLayout.setVisibility(0);
    this.mBtnOffline = ((SwitchButton)this.mMainLayout.findViewById(2131230979));
    this.mBtnOffline.setButtonTextColor(-6710887);
    this.mBtnVibrModel = ((SwitchButton)this.mMainLayout.findViewById(2131230980));
    this.mBtnVibrModel.setButtonTextColor(-6710887);
    this.mBtnGps = ((SwitchButton)this.mMainLayout.findViewById(2131230981));
    this.mBtnGps.setButtonTextColor(-6710887);
    this.mBtnRotation = ((SwitchButton)this.mMainLayout.findViewById(2131230982));
    this.mBtnRotation.setButtonTextColor(-6710887);
    this.mBtnOffline.setIconRid(2130837630, 2130837631);
    this.mBtnVibrModel.setIconRid(2130837638, 2130837639);
    this.mBtnGps.setIconRid(2130837632, 2130837633);
    this.mBtnRotation.setIconRid(2130837636, 2130837637);
    this.mBtnOffline.setOnClickListener(this);
    this.mBtnVibrModel.setOnClickListener(this);
    this.mBtnGps.setOnClickListener(this);
    this.mBtnRotation.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    int i = 1;
    int j;
    if (paramView == this.mBtnOffline)
    {
      boolean bool3 = this.mBtnOffline.isOpen();
      ContentResolver localContentResolver2 = this.mContext.getContentResolver();
      if (bool3)
      {
        j = i;
        Settings.System.putInt(localContentResolver2, "airplane_mode_on", j);
        Intent localIntent2 = new Intent("android.intent.action.AIRPLANE_MODE");
        localIntent2.putExtra("state", bool3);
        this.mContext.sendBroadcast(localIntent2);
        if (!bool3)
          break label152;
        str = this.mContext.getString(2131429699);
        label92: nd.a().a(26357);
      }
    }
    label152: label309: SwitchButton localSwitchButton;
    do
    {
      while (true)
      {
        if ((str != null) && (str.length() > 0))
          ha.a(this.mContext, str, 80, (int)(0.5F + 40.0F * this.mContext.getResources().getDisplayMetrics().density));
        return;
        j = 0;
        break;
        str = this.mContext.getString(2131429700);
        break label92;
        if (paramView == this.mBtnVibrModel)
        {
          boolean bool2 = this.mBtnVibrModel.isOpen();
          AudioManager localAudioManager = (AudioManager)this.mContext.getSystemService("audio");
          if (bool2)
            localAudioManager.setVibrateSetting(0, i);
          for (str = this.mContext.getString(2131429701); ; str = this.mContext.getString(2131429702))
          {
            nd.a().a(26358);
            break;
            localAudioManager.setVibrateSetting(0, 0);
          }
        }
        if (paramView != this.mBtnGps)
          break label309;
        Intent localIntent1 = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        localIntent1.setFlags(268435456);
        this.mContext.startActivity(localIntent1);
        str = this.mContext.getString(2131427425);
        nd.a().a(26359);
      }
      localSwitchButton = this.mBtnRotation;
      str = null;
    }
    while (paramView != localSwitchButton);
    boolean bool1 = this.mBtnRotation.isOpen();
    ContentResolver localContentResolver1 = this.mContext.getContentResolver();
    if (bool1)
    {
      label347: Settings.System.putInt(localContentResolver1, "accelerometer_rotation", i);
      if (!bool1)
        break label389;
    }
    label389: for (String str = this.mContext.getString(2131429703); ; str = this.mContext.getString(2131429704))
    {
      nd.a().a(26360);
      break;
      i = 0;
      break label347;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceSettingView2
 * JD-Core Version:    0.6.2
 */