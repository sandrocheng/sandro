import android.graphics.Paint;
import android.os.Handler;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class ec
{
  private static ec a = null;
  private Handler b = null;

  ec()
  {
    if (this.b != null)
      this.b.post(new ed(this));
  }

  public static ec a()
  {
    if (a == null)
      a = new ec();
    return a;
  }

  public static void a(View paramView)
  {
    try
    {
      Class localClass1 = Class.forName("android.view.View");
      Field localField = localClass1.getDeclaredField("LAYER_TYPE_SOFTWARE");
      localField.setAccessible(true);
      int i = ((Integer)localField.get(localClass1)).intValue();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Paint.class;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = null;
      Class localClass2 = paramView.getClass();
      int j = arrayOfObject.length;
      for (int k = 0; ; k++)
        if (k < j)
        {
          if (arrayOfClass[k] == Integer.class)
            arrayOfClass[k] = Integer.TYPE;
          else if (arrayOfClass[k] == Boolean.class)
            arrayOfClass[k] = Boolean.TYPE;
        }
        else
        {
          localClass2.getMethod("setLayerType", arrayOfClass).invoke(paramView, arrayOfObject);
          break;
        }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ec
 * JD-Core Version:    0.6.2
 */