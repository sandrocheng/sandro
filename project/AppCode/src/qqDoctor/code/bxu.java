import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;

final class bxu
  implements LayoutInflater.Factory
{
  bxu(bxr.b paramb)
  {
  }

  public final View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramString.startsWith("com.tencent.qqpimsecure.uilib"));
    while (true)
    {
      try
      {
        Constructor localConstructor = (Constructor)bxr.c().get(paramString);
        if (localConstructor == null)
        {
          localConstructor = Class.forName(paramString).getConstructor(new Class[] { Context.class, AttributeSet.class });
          bxr.c().put(paramString, localConstructor);
        }
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = bxr.a(bxr.b.e(this.a));
        arrayOfObject[1] = paramAttributeSet;
        localView = (View)localConstructor.newInstance(arrayOfObject);
        return localView;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localView = null;
        continue;
      }
      View localView = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxu
 * JD-Core Version:    0.6.2
 */