package com.tencent.tmsecure.module.netsetting;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import bwe;
import bwg;
import bwg.a;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.exception.OperationSecurityException;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.List;

public class NetSettingManager extends BaseManager
{
  public static final int APN_TYPE_NET = 0;
  public static final int APN_TYPE_NULL = -1;
  public static final int APN_TYPE_WAP = 1;
  private bwg a;

  public boolean disableBluetooth()
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bwg localbwg = this.a;
      BluetoothAdapter localBluetoothAdapter = localbwg.f;
      bool2 = false;
      if (localBluetoothAdapter != null)
        if (!localbwg.f.isEnabled())
          bool2 = true;
        else
          bool2 = localbwg.f.disable();
    }
  }

  public boolean enableBluetooth()
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bwg localbwg = this.a;
      BluetoothAdapter localBluetoothAdapter = localbwg.f;
      bool2 = false;
      if (localBluetoothAdapter != null)
        if (localbwg.f.isEnabled())
          bool2 = true;
        else
          bool2 = localbwg.f.enable();
    }
  }

  public int getAPNType(String paramString)
  {
    int i = -1;
    if (bwe.b(paramString))
      i = 0;
    while (true)
    {
      return i;
      if (bwe.c(paramString))
        i = 1;
    }
  }

  public boolean getApnState()
    throws OperationSecurityException
  {
    return this.a.c();
  }

  public int getBluetoothState()
  {
    bwg localbwg = this.a;
    if (localbwg.f == null);
    for (int i = -1; ; i = localbwg.f.getState())
      return i;
  }

  public String getCurUsedApn()
    throws OperationSecurityException
  {
    return this.a.b();
  }

  public int getCurUsedApnType()
    throws OperationSecurityException
  {
    String str = this.a.b();
    int i = -1;
    if (bwe.b(str))
      i = 0;
    while (true)
    {
      return i;
      if (bwe.c(str))
        i = 1;
    }
  }

  public boolean getMobileDataConnectivity()
  {
    bwg localbwg = this.a;
    boolean bool;
    if (SDKUtil.getSDKVersion() > 8)
      bool = localbwg.a();
    while (true)
    {
      return bool;
      if (localbwg.d.getDataState() == 2)
        bool = true;
      else
        bool = false;
    }
  }

  public int getWifiRssi()
  {
    bwg localbwg = this.a;
    if (localbwg.e == null);
    for (int i = -1; ; i = localbwg.e.getConnectionInfo().getRssi())
      return i;
  }

  public int getWifiState()
  {
    bwg localbwg = this.a;
    if (localbwg.e == null);
    for (int i = 4; ; i = localbwg.e.getWifiState())
      return i;
  }

  public boolean isBluetoothEnabled()
  {
    bwg localbwg = this.a;
    if (localbwg.f == null);
    for (boolean bool = false; ; bool = localbwg.f.isEnabled())
      return bool;
  }

  public boolean isMobileDataConnectivityActive()
  {
    NetworkInfo localNetworkInfo = this.a.g.getActiveNetworkInfo();
    boolean bool = false;
    if (localNetworkInfo != null)
    {
      if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTING)
        break label49;
      NetworkInfo.State localState1 = localNetworkInfo.getState();
      NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
      bool = false;
      if (localState1 == localState2)
        break label49;
    }
    while (true)
    {
      return bool;
      label49: int i = localNetworkInfo.getType();
      bool = false;
      if (i == 0)
        bool = true;
    }
  }

  public boolean isWifiActive()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.a.b.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isWifiEnabled()
  {
    bwg localbwg = this.a;
    if (localbwg.e == null);
    for (boolean bool = false; ; bool = localbwg.e.isWifiEnabled())
      return bool;
  }

  public void onCreate(Context paramContext)
  {
    this.a = new bwg();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public boolean setMobileDataConnectivity(boolean paramBoolean)
  {
    boolean bool;
    if (isExpired())
      bool = false;
    while (true)
    {
      return bool;
      bwg localbwg = this.a;
      if (SDKUtil.getSDKVersion() > 8)
        bool = localbwg.b(paramBoolean);
      else
        bool = localbwg.a(paramBoolean);
    }
  }

  public boolean setWifiEnabled(boolean paramBoolean)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bwg localbwg = this.a;
      WifiManager localWifiManager = localbwg.e;
      bool2 = false;
      if (localWifiManager != null)
        bool2 = localbwg.e.setWifiEnabled(paramBoolean);
    }
  }

  public boolean switchTo(int paramInt)
    throws OperationSecurityException
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1)
      return bool2;
    bwg localbwg = this.a;
    String str1 = localbwg.b();
    int i;
    if (bwe.b(str1))
      i = 0;
    while (true)
    {
      label36: String str2;
      if ((i != paramInt) && (paramInt != -1) && (SDKUtil.getSDKVersion() < 14))
        if (paramInt == 0)
        {
          str2 = "net";
          label63: List localList = localbwg.a(str2);
          if (localList.size() <= 0)
            break label164;
          bwg.a locala = (bwg.a)localList.get(0);
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("apn_id", locala.a);
          localbwg.c.update(localbwg.a, localContentValues, null, null);
        }
      label164: for (boolean bool3 = true; ; bool3 = false)
      {
        bool2 = bool3;
        break;
        if (!bwe.c(str1))
          break label170;
        i = 1;
        break label36;
        str2 = "wap";
        break label63;
      }
      label170: i = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.netsetting.NetSettingManager
 * JD-Core Version:    0.6.2
 */