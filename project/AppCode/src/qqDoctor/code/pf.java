import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;

final class pf
  implements IUpdateListener
{
  pf(pe parampe)
  {
  }

  public final void onProgressChanged(UpdateInfo paramUpdateInfo, int paramInt)
  {
    Message localMessage = this.a.j.obtainMessage(2);
    localMessage.arg1 = paramInt;
    this.a.j.sendMessage(localMessage);
  }

  public final void onUpdateCanceled()
  {
    pe.b(this.a, 2);
  }

  public final void onUpdateEvent(UpdateInfo paramUpdateInfo, int paramInt)
  {
    pe.a(this.a, paramInt);
    fc localfc = a.b(paramInt);
    Message localMessage;
    if (localfc == fc.a)
    {
      localMessage = this.a.j.obtainMessage(6);
      localMessage.arg1 = paramInt;
    }
    while (true)
    {
      this.a.j.sendMessage(localMessage);
      return;
      if (localfc == fc.b)
      {
        localMessage = this.a.j.obtainMessage(3);
        localMessage.obj = this.a.b.getString(2131428346);
      }
      else
      {
        localMessage = this.a.j.obtainMessage(3);
        localMessage.obj = (this.a.b.getString(2131428347) + this.a.b.getString(2131428349) + " (" + this.a.b.getString(2131428350) + paramInt + ")");
      }
    }
  }

  public final void onUpdateFinished()
  {
    this.a.b(this.a.b());
    this.a.j.sendEmptyMessage(4);
    if (pe.a(this.a) == 0)
    {
      Message localMessage = this.a.j.obtainMessage(3);
      localMessage.obj = (this.a.b.getString(2131428347) + this.a.b.getString(2131428348));
      this.a.j.sendMessage(localMessage);
    }
    this.a.d();
  }

  public final void onUpdateStarted()
  {
    Message localMessage = this.a.j.obtainMessage(1);
    localMessage.arg1 = 2;
    this.a.j.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pf
 * JD-Core Version:    0.6.2
 */