import android.content.Context;
import android.os.Handler;

public abstract class ha
{
  public static void a(Context paramContext, int paramInt)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(paramInt, paramContext, null, 0));
  }

  public static void a(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(-1, paramContext, paramString, 0));
  }

  public static void a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    new Handler(paramContext.getMainLooper()).post(new hc(-1, paramContext, paramString, 1, paramInt1, 0, paramInt2));
  }

  public static void b(Context paramContext, int paramInt)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(paramInt, paramContext, null, 1));
  }

  public static void b(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(-1, paramContext, paramString, 1));
  }

  public static void c(Context paramContext, int paramInt)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(paramInt, paramContext, null, 0));
  }

  public static void c(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(-1, paramContext, paramString, 0));
  }

  public static void d(Context paramContext, String paramString)
  {
    new Handler(paramContext.getMainLooper()).post(new hb(-1, paramContext, paramString, 1));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ha
 * JD-Core Version:    0.6.2
 */