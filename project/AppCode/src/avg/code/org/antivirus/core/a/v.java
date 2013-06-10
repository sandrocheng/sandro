package org.antivirus.core.a;

import android.content.Context;
import android.os.Message;
import java.io.File;
import java.util.HashMap;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.b.a;

public abstract class v
{
  public Object[] f = null;
  public HashMap g = null;
  protected a h = null;
  protected EngineSettings i = null;
  public File j = null;

  public final void a(EngineSettings paramEngineSettings)
  {
    this.i = paramEngineSettings;
  }

  public final void a(a parama)
  {
    this.h = parama;
  }

  public abstract boolean a();

  public abstract boolean a(Context paramContext);

  public abstract boolean a(Context paramContext, Message paramMessage);

  public abstract boolean a(Context paramContext, Object paramObject);

  public abstract q b();

  public boolean b(Context paramContext)
  {
    return true;
  }

  public abstract int c();

  public abstract String d();

  public final void f()
  {
    this.f = null;
    this.g = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.v
 * JD-Core Version:    0.6.2
 */