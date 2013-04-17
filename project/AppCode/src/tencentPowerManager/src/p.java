import android.content.Context;
import android.os.Handler;
import android.widget.Toast;

public abstract class p
{
  private static Toast a;

  public static void a(Context paramContext, int paramInt)
  {
    new Handler(paramContext.getMainLooper()).post(new q(paramInt, paramContext, null, 0));
  }

  public static void a(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new q(-1, paramContext, paramString, 0));
  }

  public static void b(Context paramContext, int paramInt)
  {
    new Handler(paramContext.getMainLooper()).post(new q(paramInt, paramContext, null, 1));
  }

  public static void b(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new q(-1, paramContext, paramString, 1));
  }

  public static void c(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new q(-1, paramContext, paramString, 0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     p
 * JD-Core Version:    0.6.2
 */