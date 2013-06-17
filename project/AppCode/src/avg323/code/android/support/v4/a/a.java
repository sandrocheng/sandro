package android.support.v4.a;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.c.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a extends c
{
  volatile b a;
  volatile b b;
  long c;
  long d = -10000L;
  Handler e;

  public a(Context paramContext)
  {
    super(paramContext);
  }

  protected void a()
  {
    super.a();
    b();
    this.a = new b(this);
    c();
  }

  void a(b paramb, Object paramObject)
  {
    a(paramObject);
    if (this.b == paramb)
    {
      this.d = SystemClock.uptimeMillis();
      this.b = null;
      c();
    }
  }

  public void a(Object paramObject)
  {
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (this.a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(this.a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.a.b);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(this.b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.b.b);
    }
    if (this.c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      d.a(this.c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      d.a(this.d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }

  void b(b paramb, Object paramObject)
  {
    if (this.a != paramb)
      a(paramb, paramObject);
    while (true)
    {
      return;
      if (f())
      {
        a(paramObject);
      }
      else
      {
        this.d = SystemClock.uptimeMillis();
        this.a = null;
        b(paramObject);
      }
    }
  }

  public boolean b()
  {
    b localb = this.a;
    boolean bool = false;
    if (localb != null)
    {
      if (this.b == null)
        break label54;
      if (this.a.b)
      {
        this.a.b = false;
        this.e.removeCallbacks(this.a);
      }
      this.a = null;
    }
    while (true)
    {
      return bool;
      label54: if (this.a.b)
      {
        this.a.b = false;
        this.e.removeCallbacks(this.a);
        this.a = null;
        bool = false;
      }
      else
      {
        bool = this.a.a(false);
        if (bool)
          this.b = this.a;
        this.a = null;
      }
    }
  }

  void c()
  {
    if ((this.b == null) && (this.a != null))
    {
      if (this.a.b)
      {
        this.a.b = false;
        this.e.removeCallbacks(this.a);
      }
      if ((this.c <= 0L) || (SystemClock.uptimeMillis() >= this.d + this.c))
        break label98;
      this.a.b = true;
      this.e.postAtTime(this.a, this.d + this.c);
    }
    while (true)
    {
      return;
      label98: this.a.a(i.d, (Void[])null);
    }
  }

  public abstract Object d();

  protected Object e()
  {
    return d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.a
 * JD-Core Version:    0.6.2
 */