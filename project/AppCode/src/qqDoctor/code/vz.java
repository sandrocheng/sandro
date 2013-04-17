import android.os.Handler;

final class vz extends Thread
{
  vz(vy paramvy)
  {
  }

  public final void run()
  {
    if (vk.a(this.a.b, this.a.a).b(this.a.a))
    {
      vk localvk = this.a.b;
      if (localvk.g != null)
        localvk.i.post(new wa(localvk));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vz
 * JD-Core Version:    0.6.2
 */