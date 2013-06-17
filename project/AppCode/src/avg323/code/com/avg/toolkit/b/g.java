package com.avg.toolkit.b;

import android.content.Context;
import android.os.Message;
import com.avg.toolkit.e.a;
import java.io.File;
import java.util.HashMap;

public abstract class g
{
  public Object[] f = null;
  public HashMap g = null;
  protected a h = null;
  public File i = null;

  public abstract e a();

  public abstract boolean a(Context paramContext);

  public abstract boolean a(Context paramContext, Message paramMessage);

  public abstract boolean a(Context paramContext, Object paramObject);

  public abstract boolean b(Context paramContext);

  public boolean b(Context paramContext, Object paramObject)
  {
    return true;
  }

  public abstract int b_();

  public abstract String c();

  public void c(a parama)
  {
    this.h = parama;
  }

  public boolean d()
  {
    return false;
  }

  public String f()
  {
    return null;
  }

  public void g()
  {
    this.f = null;
    this.g = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.g
 * JD-Core Version:    0.6.2
 */