import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public abstract class ask extends HandlerThread
{
  protected Context a;
  protected long b;
  protected HashMap<String, ask.a> c;
  protected int d;
  protected LinkedList<File> e;
  private Handler f;
  private Handler g;
  private int h;
  private int i;
  private String j;
  private long k;
  private long l;
  private List<lr> m;
  private boolean n;
  private Runnable o = new asm(this);

  public ask(Context paramContext, String paramString, long paramLong, Handler paramHandler)
  {
    super(paramString, 10);
    this.a = paramContext;
    this.j = paramString;
    this.l = paramLong;
    this.f = paramHandler;
    this.e = new LinkedList();
    this.m = new ArrayList();
    this.c = new HashMap();
    super.start();
    this.g = new asl(this, getLooper());
    this.e.clear();
    this.m.clear();
    this.c.clear();
    this.h = 1;
  }

  protected static String a(int paramInt)
  {
    String str = "";
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return str;
      str = dx.g + File.separator;
      continue;
      str = dx.h + File.separator;
    }
  }

  protected abstract lr a(lr paramlr, File paramFile);

  public final void a()
  {
    this.g.sendEmptyMessage(1);
  }

  protected final boolean a(File paramFile)
  {
    if (k.b(paramFile) == this.d);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected abstract lr b(lr paramlr, File paramFile);

  public final void b()
  {
    this.g.sendEmptyMessage(2);
  }

  protected abstract boolean b(File paramFile);

  protected abstract lr c(File paramFile);

  public final void c()
  {
    this.g.sendEmptyMessage(3);
  }

  public final void d()
  {
    this.g.sendEmptyMessage(4);
  }

  protected abstract void d(File paramFile);

  public final void e()
  {
    this.g.sendEmptyMessage(5);
  }

  protected abstract void f();

  protected abstract void g();

  public String toString()
  {
    return "BaseScanHandlerThread:State From " + this.h + " to " + this.i;
  }

  final class a
  {
    boolean b = true;

    public a()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ask
 * JD-Core Version:    0.6.2
 */