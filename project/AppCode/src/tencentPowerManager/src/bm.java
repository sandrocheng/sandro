import android.os.Handler;
import android.os.Message;
import java.util.List;

final class bm extends fi<bd>
{
  bm(bl parambl)
  {
  }

  public final void a(List<bd> paramList)
  {
    Message localMessage = bl.a(this.a).obtainMessage(7);
    localMessage.obj = paramList;
    bl.a(this.a).sendMessage(localMessage);
  }

  public final void b(List<bd> paramList)
  {
    Message localMessage = bl.a(this.a).obtainMessage(8);
    localMessage.obj = paramList;
    bl.a(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bm
 * JD-Core Version:    0.6.2
 */