import android.graphics.drawable.Drawable;
import java.net.URLEncoder;

public final class lu
{
  public String a;
  public String b;
  public String c;
  public long d;
  public long e;
  public Drawable f;
  public boolean g;

  public final void a(String paramString)
  {
    String str = paramString.replace("$EImageSize", "3");
    int i = str.lastIndexOf("/");
    if ((i != -1) && (i + 1 < str.length()))
    {
      int j = str.lastIndexOf("_");
      if ((j != -1) && (j + 1 < str.length()))
        str = str.substring(0, i + 1) + URLEncoder.encode(str.substring(i + 1, j)) + str.substring(j);
    }
    this.a = str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     lu
 * JD-Core Version:    0.6.2
 */