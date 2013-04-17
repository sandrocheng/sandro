package com.tencent.tmsecure.module.powersaving;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Handler;
import byc;
import java.util.ArrayList;

public final class BlueToothHelper
{
  private static BlueToothHelper k;
  public String a = "BlueToothHelper";
  public BluetoothAdapter b;
  public ArrayList<BluetoothDevice> c;
  public Context d;
  public BlueToothObserver e;
  public boolean f = false;
  public Handler g;
  public Runnable h;
  public boolean i;
  public BroadcastReceiver j = new byc(this);

  private BlueToothHelper(Context paramContext)
  {
    this.d = paramContext;
    this.b = BluetoothAdapter.getDefaultAdapter();
    this.c = new ArrayList();
  }

  public static BlueToothHelper a(Context paramContext)
  {
    try
    {
      if (k == null)
        k = new BlueToothHelper(paramContext);
      BlueToothHelper localBlueToothHelper = k;
      return localBlueToothHelper;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static class BlueToothObserver
  {
    public void ScanFinish(ArrayList<BluetoothDevice> paramArrayList)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.powersaving.BlueToothHelper
 * JD-Core Version:    0.6.2
 */