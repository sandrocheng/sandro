package android.support.v4.a;

import android.content.Context;
import android.support.v4.d.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class m
{
  int m;
  o n;
  Context o;
  boolean p = false;
  boolean q = false;
  boolean r = true;
  boolean s = false;

  public m(Context paramContext)
  {
    this.o = paramContext.getApplicationContext();
  }

  protected void a()
  {
  }

  public void a(int paramInt, o paramo)
  {
    if (this.n != null)
      throw new IllegalStateException("There is already a listener registered");
    this.n = paramo;
    this.m = paramInt;
  }

  public void a(o paramo)
  {
    if (this.n == null)
      throw new IllegalStateException("No listener register");
    if (this.n != paramo)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.n = null;
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.m);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.n);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.p);
    paramPrintWriter.print(" mContentChanged=");
    paramPrintWriter.print(this.s);
    paramPrintWriter.print(" mAbandoned=");
    paramPrintWriter.print(this.q);
    paramPrintWriter.print(" mReset=");
    paramPrintWriter.println(this.r);
  }

  public void b(Object paramObject)
  {
    if (this.n != null)
      this.n.onLoadComplete(this, paramObject);
  }

  public String c(Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(paramObject, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  protected void g()
  {
  }

  protected void h()
  {
  }

  protected void i()
  {
  }

  public Context j()
  {
    return this.o;
  }

  public int k()
  {
    return this.m;
  }

  public boolean l()
  {
    return this.p;
  }

  public boolean m()
  {
    return this.q;
  }

  public boolean n()
  {
    return this.r;
  }

  public final void o()
  {
    this.p = true;
    this.r = false;
    this.q = false;
    g();
  }

  public void p()
  {
    a();
  }

  public void q()
  {
    this.p = false;
    h();
  }

  public void r()
  {
    this.q = true;
    s();
  }

  protected void s()
  {
  }

  public void t()
  {
    i();
    this.r = true;
    this.p = false;
    this.q = false;
    this.s = false;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.m);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public boolean u()
  {
    boolean bool = this.s;
    this.s = false;
    return bool;
  }

  public void v()
  {
    if (this.p)
      p();
    while (true)
    {
      return;
      this.s = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.m
 * JD-Core Version:    0.6.2
 */