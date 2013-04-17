import android.content.Context;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseActivityGroup;
import java.util.ArrayList;

public class pc
{
  private static pc d = null;
  protected yk a;
  private String b = "BaseActivityWrapper";
  private Handler c;

  public static pc b()
  {
    if (d == null);
    try
    {
      if (d == null)
        d = new pc();
      return d;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a()
  {
    this.c = null;
    d = null;
    this.a = null;
  }

  public final void a(BaseActivityGroup paramBaseActivityGroup)
  {
    if (this.a != null)
      this.a.d.add(paramBaseActivityGroup);
  }

  public final void b(BaseActivityGroup paramBaseActivityGroup)
  {
    if (this.a != null)
    {
      yk localyk = this.a;
      localyk.d.remove(paramBaseActivityGroup);
      if (localyk.d.size() == 0)
        localyk.a();
    }
  }

  public final void c()
  {
    if (this.c != null)
      this.c.sendEmptyMessage(2);
  }

  public final void d()
  {
    if (this.c != null)
      this.c.sendEmptyMessage(2);
  }

  public final void e()
  {
    this.a = new yk();
    this.c = new pd(this, QQPimApplication.a().getMainLooper());
    if (this.c != null)
    {
      yk localyk = this.a;
      localyk.b = 0;
      localyk.c = false;
      this.c.sendEmptyMessage(1);
    }
  }

  public final void f()
  {
    if (this.c != null)
      this.c.sendEmptyMessage(2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pc
 * JD-Core Version:    0.6.2
 */