import android.content.Context;
import android.os.Handler;
import android.os.Message;

public final class at
{
  String a = null;
  boolean b = false;
  cd c = null;
  Handler d = null;
  Handler e = new au(this);
  private String[] f = new String[10];
  private String[] g = new String[10];
  private Context h = null;

  public at(Context paramContext, Handler paramHandler)
  {
    this.c = new az(paramContext.getApplicationContext());
    this.d = paramHandler;
    this.h = paramContext;
    this.a = this.c.b();
    this.c.c();
    this.c.a();
    this.c.a(this.f, this.g);
  }

  final class a extends Thread
  {
    private a()
    {
    }

    public final void run()
    {
      cd localcd = at.this.c;
      String str = at.this.a;
      int i = localcd.b(str, null);
      dk.b("Login", "LoginThread run return value : " + i);
      Message localMessage = at.this.e.obtainMessage(8193, i, i);
      at.this.e.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     at
 * JD-Core Version:    0.6.2
 */