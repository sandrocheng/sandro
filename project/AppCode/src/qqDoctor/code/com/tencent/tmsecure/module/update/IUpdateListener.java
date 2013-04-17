package com.tencent.tmsecure.module.update;

public abstract interface IUpdateListener
{
  public abstract void onProgressChanged(UpdateInfo paramUpdateInfo, int paramInt);

  public abstract void onUpdateCanceled();

  public abstract void onUpdateEvent(UpdateInfo paramUpdateInfo, int paramInt);

  public abstract void onUpdateFinished();

  public abstract void onUpdateStarted();

  public static final class UpdateListener
    implements IUpdateListener
  {
    private IUpdateListener a;

    public UpdateListener(IUpdateListener paramIUpdateListener)
    {
      this.a = paramIUpdateListener;
    }

    public final void onProgressChanged(UpdateInfo paramUpdateInfo, int paramInt)
    {
      if (this.a != null)
        this.a.onProgressChanged(paramUpdateInfo, paramInt);
    }

    public final void onUpdateCanceled()
    {
      if (this.a != null)
        this.a.onUpdateCanceled();
    }

    public final void onUpdateEvent(UpdateInfo paramUpdateInfo, int paramInt)
    {
      if (this.a != null)
        this.a.onUpdateEvent(paramUpdateInfo, paramInt);
    }

    public final void onUpdateFinished()
    {
      if (this.a != null)
        this.a.onUpdateFinished();
    }

    public final void onUpdateStarted()
    {
      if (this.a != null)
        this.a.onUpdateStarted();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.update.IUpdateListener
 * JD-Core Version:    0.6.2
 */