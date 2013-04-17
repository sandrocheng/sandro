import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;

public final class fn extends BaseManager
{
  private fo a;
  private fm b;

  public final fk a()
  {
    try
    {
      fk localfk1 = this.a.a();
      if (isExpired())
        if (this.b == null)
          this.b = new fm(localfk1);
      fk localfk2;
      for (Object localObject2 = this.b; ; localObject2 = localfk2)
      {
        return localObject2;
        localfk2 = this.a.a();
      }
    }
    finally
    {
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new fo();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fn
 * JD-Core Version:    0.6.2
 */