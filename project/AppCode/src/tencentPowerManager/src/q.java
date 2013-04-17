import android.content.Context;
import android.widget.Toast;

final class q
  implements Runnable
{
  q(int paramInt1, Context paramContext, String paramString, int paramInt2)
  {
  }

  public final void run()
  {
    try
    {
      if (p.a() == null)
      {
        if (this.a == -1)
          p.a(Toast.makeText(this.b, this.c, this.d));
        while (true)
        {
          p.a().show();
          return;
          p.a(Toast.makeText(this.b, this.a, this.d));
        }
      }
    }
    finally
    {
    }
    if (this.a == -1)
      p.a().setText(this.c);
    while (true)
    {
      p.a().setDuration(this.d);
      break;
      p.a().setText(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     q
 * JD-Core Version:    0.6.2
 */