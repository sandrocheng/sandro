import android.os.Handler;
import android.os.HandlerThread;

public final class aru extends HandlerThread
{
  private final arn a;
  private Handler b;

  public aru(arn paramarn)
  {
    super("DetectThread");
    this.a = paramarn;
    start();
    this.b = new art(this.a, getLooper());
  }

  public final Handler a()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aru
 * JD-Core Version:    0.6.2
 */