package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.content.Intent;

public abstract class AbsPluginViewElement<T>
{
  private Activity a;

  public AbsPluginViewElement(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public final void dismiss()
  {
    if (this.a != null)
      this.a.finish();
  }

  public final Activity getContainer()
  {
    return this.a;
  }

  public abstract T getPresentContruct();

  public abstract Object onActivityMethodCall(int paramInt, Object[] paramArrayOfObject);

  public void setResult(int paramInt)
  {
    this.a.setResult(paramInt);
  }

  public void setResult(int paramInt, Intent paramIntent)
  {
    this.a.setResult(paramInt, paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.AbsPluginViewElement
 * JD-Core Version:    0.6.2
 */