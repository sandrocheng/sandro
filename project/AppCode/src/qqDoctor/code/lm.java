import android.os.Environment;
import java.io.File;
import java.util.ArrayList;

public final class lm
{
  public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
  public static final String b = a.c() + "/.tmfs/";
  public static final String c = a + "/.tmfs/";
  public static ArrayList<String> d;
  public static final lm.a e = new lm.a();

  public static final class a
  {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;

    public final String toString()
    {
      return "ThumbnailInfo:Width*Height:" + this.a + "*" + this.b + " ,HSpace*VSpace:" + this.c + "*" + this.d + " ,LeftBlank*RightBlank" + this.e + "*" + this.f;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     lm
 * JD-Core Version:    0.6.2
 */