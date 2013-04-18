package android.content.pm;

import android.content.ComponentName;
import android.os.IInterface;

public abstract interface IPackageManager extends IInterface
{
  public abstract int getApplicationEnabledSetting(String paramString);

  public abstract int getComponentEnabledSetting(ComponentName paramComponentName);

  public abstract void setApplicationEnabledSetting(String paramString, int paramInt1, int paramInt2);

  public abstract void setComponentEnabledSetting(ComponentName paramComponentName, int paramInt1, int paramInt2);

  public abstract void setPackageStoppedState(String paramString, boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.IPackageManager
 * JD-Core Version:    0.6.2
 */