import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public final class aw
{
  Context a = null;
  Handler b = null;
  String c = null;
  Handler d = null;
  private ay e = null;

  public aw(Context paramContext, Handler paramHandler)
  {
    this.a = paramContext;
    this.b = paramHandler;
    this.e = null;
  }

  public final void a()
  {
    if (this.b != null)
    {
      Message localMessage = this.b.obtainMessage(8217, 4097, 0);
      this.b.sendMessage(localMessage);
    }
    new Thread(new aw.a((byte)0), "thread_check_login_state").start();
  }

  public final boolean a(String paramString)
  {
    int i;
    boolean bool;
    if ((paramString == null) || (-1 != paramString.indexOf(" ")) || (-1 != paramString.indexOf(" ")))
    {
      i = 0;
      if (i != 0)
        break label78;
      Handler localHandler = this.b;
      bool = false;
      if (localHandler != null)
      {
        Message localMessage2 = this.b.obtainMessage(8218, 4098, 8207);
        this.b.sendMessage(localMessage2);
      }
    }
    while (true)
    {
      return bool;
      i = 1;
      break;
      label78: if (this.b != null)
      {
        Message localMessage1 = this.b.obtainMessage(8218, 4097, 0);
        this.b.sendMessage(localMessage1);
      }
      this.c = paramString;
      new Thread(new aw.b((byte)0), "thread_verify_pimpwd").start();
      bool = true;
    }
  }

  final class a
    implements Runnable
  {
    private a()
    {
    }

    public final void run()
    {
      cw localcw = cw.d();
      new bb();
      int i = bb.a(localcw.h(), localcw.f(), localcw.e(), de.a());
      aw localaw = aw.this;
      if (localaw.b != null)
      {
        Message localMessage = localaw.b.obtainMessage(8217, 4098, i);
        localaw.b.sendMessage(localMessage);
      }
    }
  }

  final class b
    implements Runnable
  {
    private b()
    {
    }

    public final void run()
    {
      Looper.prepare();
      if (aw.this.a == null)
        aw.this.a = de.b;
      aw localaw = aw.this;
      localaw.d = new ax(localaw, aw.this.a.getMainLooper());
      at localat = new at(aw.this.a, aw.this.d);
      String str1 = cw.d().f();
      String str2 = aw.this.c;
      dk.b("Login", "pimpwd enter strPimPWD = " + str2);
      new av(localat, str1, str2).start();
      dk.b("Login", "pimpwd leave");
      Looper.loop();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aw
 * JD-Core Version:    0.6.2
 */