import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class xl extends Handler
{
  xl(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject = paramMessage.obj;
    xi.a locala = null;
    if (localObject != null)
    {
      boolean bool = paramMessage.obj instanceof xi.a;
      locala = null;
      if (bool)
        locala = (xi.a)paramMessage.obj;
    }
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      xi.a(xi.d(), xi.e(), xi.f(), locala);
      continue;
      xi.a(xi.d(), locala);
      continue;
      xi.b(xi.d(), locala);
      continue;
      locala.a(paramMessage.arg1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xl
 * JD-Core Version:    0.6.2
 */