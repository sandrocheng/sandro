import android.os.Handler;
import android.os.Message;

final class bii
  implements dv
{
  bii(big parambig)
  {
  }

  public final void a(Object paramObject)
  {
    Message localMessage = big.b(this.a).obtainMessage();
    localMessage.what = 1001;
    localMessage.obj = paramObject;
    big.b(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bii
 * JD-Core Version:    0.6.2
 */