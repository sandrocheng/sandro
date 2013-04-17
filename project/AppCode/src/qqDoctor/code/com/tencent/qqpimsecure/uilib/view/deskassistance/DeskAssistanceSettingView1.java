package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.wifi.WifiManager;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.uilib.view.button.SwitchButton;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.utils.SDKUtil;
import fs;
import ha;
import ho;
import it;
import iu;
import nd;

public class DeskAssistanceSettingView1 extends LinearLayout
  implements View.OnClickListener
{
  private SwitchButton mBtnNetWork;
  private SwitchButton mBtnSound;
  private SwitchButton mBtnTrafficSuspended;
  private SwitchButton mBtnWifi;
  private ho mConfigDao;
  private Context mContext;
  private View mMainLayout;

  public DeskAssistanceSettingView1(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mConfigDao = ho.a();
    this.mMainLayout = LayoutInflater.from(this.mContext).inflate(2130903135, null);
    initView();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    addView(this.mMainLayout, localLayoutParams);
    setSwitchState();
  }

  private void setIsNetWorkOpen()
  {
    NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
    this.mBtnNetWork.setIsOpen(localNetSettingManager.getMobileDataConnectivity());
  }

  private void setIsRingOpen()
  {
    int i = ((AudioManager)this.mContext.getSystemService("audio")).getRingerMode();
    SwitchButton localSwitchButton = this.mBtnSound;
    if (i == 2);
    for (boolean bool = true; ; bool = false)
    {
      localSwitchButton.setIsOpen(bool);
      return;
    }
  }

  private void setIsTrafficSuspendedOpen()
  {
    iu localiu = new iu(QQPimApplication.a());
    this.mBtnTrafficSuspended.setIsOpen(localiu.m());
  }

  private void setIsWifiOpen()
  {
    WifiManager localWifiManager = (WifiManager)this.mContext.getSystemService("wifi");
    this.mBtnWifi.setIsOpen(localWifiManager.isWifiEnabled());
  }

  private void setSwitchState()
  {
    iu localiu = new iu(QQPimApplication.a());
    this.mBtnTrafficSuspended.setIsOpen(localiu.m());
    NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
    this.mBtnNetWork.setIsOpen(localNetSettingManager.getMobileDataConnectivity());
    WifiManager localWifiManager = (WifiManager)this.mContext.getSystemService("wifi");
    this.mBtnWifi.setIsOpen(localWifiManager.isWifiEnabled());
    setIsRingOpen();
  }

  public void initView()
  {
    this.mMainLayout.setVisibility(0);
    this.mBtnTrafficSuspended = ((SwitchButton)this.mMainLayout.findViewById(2131230978));
    this.mBtnTrafficSuspended.setButtonTextColor(-6710887);
    this.mBtnNetWork = ((SwitchButton)this.mMainLayout.findViewById(2131230976));
    this.mBtnNetWork.setButtonTextColor(-6710887);
    this.mBtnWifi = ((SwitchButton)this.mMainLayout.findViewById(2131230975));
    this.mBtnWifi.setButtonTextColor(-6710887);
    this.mBtnSound = ((SwitchButton)this.mMainLayout.findViewById(2131230977));
    this.mBtnSound.setButtonTextColor(-6710887);
    this.mBtnTrafficSuspended.setIconRid(2130837625, 2130837624);
    this.mBtnNetWork.setIconRid(2130837627, 2130837626);
    this.mBtnWifi.setIconRid(2130837629, 2130837628);
    this.mBtnSound.setIconRid(2130837634, 2130837635);
    this.mBtnTrafficSuspended.setOnClickListener(this);
    this.mBtnNetWork.setOnClickListener(this);
    this.mBtnWifi.setOnClickListener(this);
    this.mBtnSound.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    Object localObject = "";
    NetworkManager localNetworkManager;
    String str;
    if (paramView == this.mBtnTrafficSuspended)
    {
      localNetworkManager = (NetworkManager)ManagerCreator.getManager(NetworkManager.class);
      iu localiu = new iu(QQPimApplication.a());
      boolean bool4 = this.mBtnTrafficSuspended.isOpen();
      if (bool4)
      {
        str = this.mContext.getString(2131429697);
        localiu.e(bool4);
        if (!bool4)
          break label190;
        localNetworkManager.setInterval(fs.c);
        nd.a().a(26167);
        label87: Intent localIntent = new Intent();
        localIntent.setClass(this.mContext, SecureService.class);
        localIntent.setAction("switch_suspession_window");
        this.mContext.startService(localIntent);
        localNetworkManager.notifyConfigChange();
        localObject = str;
      }
    }
    while (true)
    {
      if ((localObject != null) && (((String)localObject).length() > 0))
        ha.a(this.mContext, (String)localObject, 80, (int)(0.5F + 40.0F * this.mContext.getResources().getDisplayMetrics().density));
      return;
      str = this.mContext.getString(2131429698);
      break;
      label190: localNetworkManager.setInterval(fs.d);
      nd.a().a(26166);
      break label87;
      if (paramView == this.mBtnNetWork)
      {
        int i = SDKUtil.getSDKVersion();
        boolean bool3 = this.mBtnNetWork.isOpen();
        if (i >= 9)
        {
          ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(bool3);
          if (bool3)
            localObject = this.mContext.getString(2131429693);
        }
        while (true)
        {
          nd.a().a(26168);
          break;
          localObject = this.mContext.getString(2131429694);
          continue;
          if (fs.a(this.mContext) == 0)
            ha.b(this.mContext, this.mContext.getString(2131427425));
        }
      }
      if (paramView == this.mBtnWifi)
      {
        WifiManager localWifiManager = (WifiManager)this.mContext.getSystemService("wifi");
        boolean bool2 = this.mBtnWifi.isOpen();
        localWifiManager.setWifiEnabled(bool2);
        if (bool2);
        for (localObject = this.mContext.getString(2131429691); ; localObject = this.mContext.getString(2131429692))
        {
          nd.a().a(26169);
          break;
        }
      }
      if (paramView == this.mBtnSound)
      {
        nd.a().a(26263);
        AudioManager localAudioManager = (AudioManager)this.mContext.getSystemService("audio");
        boolean bool1 = this.mBtnSound.isOpen();
        if (bool1)
          localAudioManager.setRingerMode(2);
        while (true)
        {
          if (!bool1)
            break label482;
          localObject = this.mContext.getString(2131429695);
          break;
          localAudioManager.setRingerMode(1);
        }
        label482: localObject = this.mContext.getString(2131429696);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceSettingView1
 * JD-Core Version:    0.6.2
 */