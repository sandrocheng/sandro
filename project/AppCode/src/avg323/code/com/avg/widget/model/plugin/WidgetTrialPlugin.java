package com.avg.widget.model.plugin;

import android.os.Parcel;

public abstract class WidgetTrialPlugin extends WidgetPlugin
{
  protected int d;
  protected int e;
  protected int f;
  protected int g;
  protected boolean h;

  protected WidgetTrialPlugin(Parcel paramParcel)
  {
    super(paramParcel);
  }

  protected WidgetTrialPlugin(a parama, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    super(parama, false, true);
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramInt3;
    this.g = paramInt4;
    this.h = paramBoolean;
  }

  public abstract void a(com.avg.toolkit.e.a parama);

  public int n()
  {
    return this.d;
  }

  public int o()
  {
    return this.e;
  }

  public int p()
  {
    return this.f;
  }

  public int q()
  {
    return this.g;
  }

  public boolean r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.model.plugin.WidgetTrialPlugin
 * JD-Core Version:    0.6.2
 */