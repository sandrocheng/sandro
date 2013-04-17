package com.tencent.tmsecure.module.update;

public abstract interface ICheckListener
{
  public abstract void onCheckCanceled();

  public abstract void onCheckEvent(int paramInt);

  public abstract void onCheckFinished(CheckResult paramCheckResult);

  public abstract void onCheckStarted();

  public static final class Proxy
    implements ICheckListener
  {
    private ICheckListener a;

    public Proxy(ICheckListener paramICheckListener)
    {
      this.a = paramICheckListener;
    }

    public final void onCheckCanceled()
    {
      if (this.a != null)
        this.a.onCheckCanceled();
    }

    public final void onCheckEvent(int paramInt)
    {
      if (this.a != null)
        this.a.onCheckEvent(paramInt);
    }

    public final void onCheckFinished(CheckResult paramCheckResult)
    {
      if (this.a != null)
        this.a.onCheckFinished(paramCheckResult);
    }

    public final void onCheckStarted()
    {
      if (this.a != null)
        this.a.onCheckStarted();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.update.ICheckListener
 * JD-Core Version:    0.6.2
 */