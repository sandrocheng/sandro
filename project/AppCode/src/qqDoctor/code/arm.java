import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;

public final class arm extends Handler
{
  private arn a;
  private aru b;
  private a c;
  private boolean d;

  public arm(arn paramarn)
  {
    this.a = paramarn;
  }

  public final void a()
  {
    this.d = false;
    a locala1 = this.c;
    if (locala1.a != null)
    {
      locala1.a.stopPreview();
      locala1.e.a(null, 0);
      locala1.f.a(null, 0);
      locala1.c = false;
    }
    a locala2 = this.c;
    if (locala2.a != null)
    {
      locala2.a.release();
      locala2.a = null;
    }
    Message.obtain(this.b.a(), 3).sendToTarget();
  }

  final void a(a parama)
  {
    this.c = parama;
    this.b = new aru(this.a);
    a locala = this.c;
    if ((locala.a != null) && (!locala.c))
    {
      locala.a.startPreview();
      locala.c = true;
    }
    this.d = true;
    this.c.a(this.b.a());
    this.c.b(this);
  }

  public final void b()
  {
    this.c.a(this.b.a());
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 2:
    case 3:
    case 9:
    default:
    case 1:
    case 4:
    case 5:
    case 6:
    case 8:
    case 7:
    case 10:
    case 11:
    case 12:
    }
    while (true)
    {
      return;
      if (this.d)
      {
        this.c.b(this);
        continue;
        this.a.b(paramMessage);
        continue;
        this.a.b(paramMessage);
        continue;
        this.a.c(paramMessage);
        continue;
        this.a.c(paramMessage);
        continue;
        this.a.c(paramMessage);
        continue;
        this.a.a(paramMessage);
        continue;
        arn.e();
        continue;
        this.a.d();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arm
 * JD-Core Version:    0.6.2
 */