import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class jc
{
  private static jc d;
  public SharedPreferences.Editor a;
  public SharedPreferences b;
  private Context c;

  private jc(Context paramContext)
  {
    this.c = paramContext;
    this.b = this.c.getSharedPreferences("OneKeyCheckDao", 0);
    this.a = this.b.edit();
  }

  public static jc a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new jc(paramContext);
      jc localjc = d;
      return localjc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jc
 * JD-Core Version:    0.6.2
 */