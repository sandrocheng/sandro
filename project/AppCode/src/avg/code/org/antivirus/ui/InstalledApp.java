package org.antivirus.ui;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

public class InstalledApp
{
  public long apkSize;
  public int flags;
  public long inTraffic = -1L;
  public boolean isRunning = false;
  public String mAppName;
  public Drawable mIcon;
  public String mPackageLocation;
  public String mPackageName;
  public String mProcessName;
  public View mView;
  public ViewGroup mViewContainer;
  public byte movable;
  public long outTraffic = -1L;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.InstalledApp
 * JD-Core Version:    0.6.2
 */