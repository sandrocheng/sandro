package android.support.v4.view;

import android.view.View;

public class ax
{
  public static void a(View paramView)
  {
    paramView.postInvalidateOnAnimation();
  }

  public static void a(View paramView, int paramInt)
  {
    paramView.setImportantForAccessibility(paramInt);
  }

  public static void a(View paramView, Runnable paramRunnable)
  {
    paramView.postOnAnimation(paramRunnable);
  }

  public static int b(View paramView)
  {
    return paramView.getImportantForAccessibility();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ax
 * JD-Core Version:    0.6.2
 */