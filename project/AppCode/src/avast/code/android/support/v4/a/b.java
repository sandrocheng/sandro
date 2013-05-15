package android.support.v4.a;

import java.util.concurrent.CountDownLatch;

final class b extends t
  implements Runnable
{
  Object a;
  boolean b;
  private CountDownLatch e = new CountDownLatch(1);

  b(a parama)
  {
  }

  protected Object a(Void[] paramArrayOfVoid)
  {
    this.a = this.c.e();
    return this.a;
  }

  protected void a()
  {
    try
    {
      this.c.a(this, this.a);
      return;
    }
    finally
    {
      this.e.countDown();
    }
  }

  protected void a(Object paramObject)
  {
    try
    {
      this.c.b(this, paramObject);
      return;
    }
    finally
    {
      this.e.countDown();
    }
  }

  public void run()
  {
    this.b = false;
    this.c.c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.b
 * JD-Core Version:    0.6.2
 */