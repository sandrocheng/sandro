import android.content.Context;
import android.os.Handler;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import java.util.List;

public final class ay
{
  Context a;
  gg b;
  boolean c = false;
  z d;
  be e;
  protected Handler f;
  private String g = null;
  private fe h;
  private BaseServiceConnection i = new BaseServiceConnection(ax.class);
  private fi<bd> j = new az(this);

  public ay(Context paramContext, String paramString)
  {
    this.g = paramString;
    this.a = paramContext;
    this.d = s.a.g();
    this.b = ((gg)ManagerCreator.getManager(gg.class));
  }

  public final void a()
  {
    try
    {
      this.c = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(fx paramfx)
  {
    gb localgb = (gb)paramfx.b.get(0);
    fq localfq = ((fs)ManagerCreator.getManager(fs.class)).a(this.a.getPackageName(), 121);
    be localbe;
    if (localfq == null)
      localbe = null;
    while (true)
    {
      this.e = localbe;
      this.e.a(localgb.b);
      this.e.a(1 + this.e.h());
      be.b();
      if (this.f == null)
        this.f = new bb(this, this.a.getMainLooper());
      this.f.sendEmptyMessage(13);
      return;
      localbe = new be();
      localbe.a(localfq.e());
      localbe.b(localfq.o());
      localbe.a(localfq.h());
      localbe.e(localfq.g());
      localbe.a(localfq.i());
      localbe.c(localfq.c());
      localbe.a(localfq.m());
      localbe.g(localfq.l());
      localbe.f(localfq.k());
      localbe.h(localfq.n());
      localbe.d(localfq.d());
      localbe.a(localfq.f());
      localbe.b(localfq.j());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ay
 * JD-Core Version:    0.6.2
 */