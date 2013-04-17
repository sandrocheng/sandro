import android.content.Context;
import android.view.WindowManager;
import com.tencent.qqpimsecure.view.privacy.CameraSwitchWindowView;

public final class bgj
{
  public static boolean a = false;
  private WindowManager b;
  private CameraSwitchWindowView c = null;
  private Context d;

  public bgj(Context paramContext)
  {
    this.d = paramContext;
    this.b = ((WindowManager)paramContext.getSystemService("window"));
  }

  public final void a()
  {
    if ((a) && (this.b != null) && (this.c != null))
    {
      this.b.removeView(this.c);
      a = false;
      if (this.c != null)
      {
        this.c.a();
        this.c = null;
      }
    }
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.c != null)
      this.c.a(paramFloat1, paramFloat2);
  }

  public final void a(String paramString)
  {
    if (this.c != null)
      this.c.a(paramString);
  }

  public final void a(boolean paramBoolean, String paramString)
  {
    String str = ho.a().cd();
    if ((!a) && (str != null) && (!str.equals("")))
    {
      if (this.c == null)
        this.c = new CameraSwitchWindowView(this.d, paramBoolean, paramString);
      this.b.addView(this.c, kg.b);
      a = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgj
 * JD-Core Version:    0.6.2
 */