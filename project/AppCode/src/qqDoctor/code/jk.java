import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class jk
{
  public static int a = 1;
  private Context b;
  private SharedPreferences.Editor c;
  private SharedPreferences d;

  public jk(Context paramContext)
  {
    this.b = paramContext;
    this.d = this.b.getSharedPreferences("ProfessionalKillerDao", 0);
    this.c = this.d.edit();
  }

  public static int b()
  {
    return a;
  }

  public final long a()
  {
    return this.d.getInt("new_tag_level", -1);
  }

  public final void a(int paramInt)
  {
    this.c.putInt("new_tag_level", paramInt).commit();
  }

  public final void c()
  {
    this.c.putInt("new_tag_level", 0).commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jk
 * JD-Core Version:    0.6.2
 */