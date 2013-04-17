import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import java.util.List;

final class pg
  implements ICheckListener
{
  pg(pe parampe)
  {
  }

  public final void onCheckCanceled()
  {
    pe.b(this.a, 1);
  }

  public final void onCheckEvent(int paramInt)
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
      this.a.a(paramInt);
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

  public final void onCheckFinished(CheckResult paramCheckResult)
  {
    this.a.d = paramCheckResult;
    this.a.a(this.a.d, this.a.b());
    this.a.j.sendEmptyMessage(4);
    if (pe.a(this.a) == 0)
    {
      if ((this.a.d == null) || (this.a.d.mUpdateInfoList.isEmpty()))
      {
        Message localMessage = this.a.j.obtainMessage(3);
        localMessage.obj = this.a.b.getString(2131428096);
        this.a.j.sendMessage(localMessage);
      }
    }
    else
      this.a.d();
    while (true)
    {
      return;
      if (pe.b(this.a))
      {
        this.a.j.sendEmptyMessage(5);
      }
      else
      {
        this.a.a(this.a.d, this.a.h);
        wr.a(this.a.b).a(false);
      }
    }
  }

  public final void onCheckStarted()
  {
    pe.a(this.a, 0);
    pe.b(this.a, 0);
    Message localMessage = this.a.j.obtainMessage(1);
    localMessage.arg1 = 1;
    this.a.j.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pg
 * JD-Core Version:    0.6.2
 */