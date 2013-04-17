import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public final class gw
{
  public static int a = 0;
  public static int b = 0;
  public static int c;
  public static int d;
  private static int e = 0;
  private static float f;
  private static float g;
  private static int h;
  private static int i;
  private static int j;
  private static int k;
  private static int l;
  private static int m;
  private static int n;
  private static int o;

  static
  {
    c = 0;
    d = 0;
    f = 0.215F;
    g = 0.71F;
    h = 0;
    i = 0;
    j = 640;
    k = 960;
    l = 320;
    m = 800;
    n = 1205;
    o = 213;
    a();
  }

  public static int a(Activity paramActivity)
  {
    Rect localRect = new Rect();
    paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    return localRect.top;
  }

  public static void a(int paramInt)
  {
    i = paramInt;
  }

  public static void a(BaseView paramBaseView)
  {
    a();
    if (Build.MODEL.equals("M040"))
      b = paramBaseView.getActivity().getWindow().getDecorView().getHeight();
    if (h == 0)
      h = paramBaseView.getFrameworkHeight();
    int i1 = b - h - i;
    c = (int)(i1 * g / 4.0F);
    d = (int)(i1 * f);
  }

  public static boolean a()
  {
    DisplayMetrics localDisplayMetrics = QQPimApplication.a().getResources().getDisplayMetrics();
    a = localDisplayMetrics.widthPixels;
    b = localDisplayMetrics.heightPixels;
    e = localDisplayMetrics.densityDpi;
    return true;
  }

  public static boolean b()
  {
    a();
    if (e <= 120);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c()
  {
    a();
    if (((e > 120) && (e <= 160)) || (g()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean d()
  {
    a();
    if ((e <= 160) || (e > 240) || (b > 800) || (g()))
    {
      a();
      if ((a != m) || (b != n) || (e != o))
        break label80;
    }
    label80: for (int i1 = 1; ; i1 = 0)
    {
      boolean bool = false;
      if (i1 != 0)
        bool = true;
      return bool;
    }
  }

  public static boolean e()
  {
    boolean bool1 = true;
    a();
    a();
    boolean bool2;
    boolean bool3;
    if (e <= 120)
    {
      bool2 = bool1;
      if (bool2)
        break label84;
      a();
      if (((e <= 120) || (e > 160)) && (!g()))
        break label78;
      bool3 = bool1;
      label54: if ((bool3) || (d()) || (g()))
        break label84;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label78: bool3 = false;
      break label54;
      label84: bool1 = false;
    }
  }

  public static int f()
  {
    if (e());
    for (int i1 = (int)(173.0F * (ft.d(QQPimApplication.a()) / 480.0F)); ; i1 = 173)
      return i1;
  }

  private static boolean g()
  {
    a();
    if ((a == j) && (b == k) && (e == l));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gw
 * JD-Core Version:    0.6.2
 */