import android.os.Handler;
import java.util.List;

final class vx extends Thread
{
  vx(vw paramvw)
  {
  }

  public final void run()
  {
    long l = vk.a(this.a.b, this.a.a).a(this.a.a);
    this.a.b.h.add(this.a.a.phonenum);
    if (l != -1L)
    {
      vk localvk = this.a.b;
      if (localvk.g != null)
        localvk.i.post(new wa(localvk));
      vk.a(this.a.b, this.a.a, true);
    }
    while (true)
    {
      return;
      vk.a(this.a.b, this.a.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vx
 * JD-Core Version:    0.6.2
 */