import android.content.Context;
import android.widget.Toast;

final class hb
  implements Runnable
{
  hb(int paramInt1, Context paramContext, String paramString, int paramInt2)
  {
  }

  public final void run()
  {
    try
    {
      if (this.a == -1)
      {
        localObject2 = Toast.makeText(this.b, this.c, this.d);
        ((Toast)localObject2).show();
        return;
      }
      Toast localToast = Toast.makeText(this.b, this.a, this.d);
      Object localObject2 = localToast;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hb
 * JD-Core Version:    0.6.2
 */