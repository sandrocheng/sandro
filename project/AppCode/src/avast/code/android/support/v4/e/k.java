package android.support.v4.e;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

class k
{
  public static Object a(Context paramContext)
  {
    return new EdgeEffect(paramContext);
  }

  public static void a(Object paramObject, int paramInt1, int paramInt2)
  {
    ((EdgeEffect)paramObject).setSize(paramInt1, paramInt2);
  }

  public static boolean a(Object paramObject)
  {
    return ((EdgeEffect)paramObject).isFinished();
  }

  public static boolean a(Object paramObject, float paramFloat)
  {
    ((EdgeEffect)paramObject).onPull(paramFloat);
    return true;
  }

  public static boolean a(Object paramObject, Canvas paramCanvas)
  {
    return ((EdgeEffect)paramObject).draw(paramCanvas);
  }

  public static void b(Object paramObject)
  {
    ((EdgeEffect)paramObject).finish();
  }

  public static boolean c(Object paramObject)
  {
    EdgeEffect localEdgeEffect = (EdgeEffect)paramObject;
    localEdgeEffect.onRelease();
    return localEdgeEffect.isFinished();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.e.k
 * JD-Core Version:    0.6.2
 */