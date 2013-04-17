import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.tools.ISingleton;
import java.util.HashMap;

public final class bzb extends BaseManager
{
  private final HashMap<Class<? extends ISingleton>, ISingleton> a = new HashMap();

  public final <T extends ISingleton> T a(Class<T> paramClass)
  {
    Object localObject1 = (ISingleton)this.a.get(paramClass);
    if (localObject1 == null);
    try
    {
      localObject1 = (ISingleton)this.a.get(paramClass);
      if (localObject1 == null);
      try
      {
        localObject1 = (ISingleton)paramClass.newInstance();
        if (localObject1 != null)
        {
          ((ISingleton)localObject1).onCreate();
          this.a.put(paramClass, localObject1);
        }
        return (ISingleton)paramClass.cast(localObject1);
      }
      catch (Exception localException)
      {
        while (true)
        {
          Object localObject3 = localObject1;
          localException.printStackTrace();
          localObject1 = localObject3;
        }
      }
    }
    finally
    {
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzb
 * JD-Core Version:    0.6.2
 */