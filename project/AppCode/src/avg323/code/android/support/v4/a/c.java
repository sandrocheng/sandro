package android.support.v4.a;

import android.content.Context;
import android.support.v4.c.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class c
{
  int f;
  d g;
  Context h;
  boolean i = false;
  boolean j = false;
  boolean k = true;
  boolean l = false;

  public c(Context paramContext)
  {
    this.h = paramContext.getApplicationContext();
  }

  protected void a()
  {
  }

  public void a(int paramInt, d paramd)
  {
    if (this.g != null)
      throw new IllegalStateException("There is already a listener registered");
    this.g = paramd;
    this.f = paramInt;
  }

  public void a(d paramd)
  {
    if (this.g == null)
      throw new IllegalStateException("No listener register");
    if (this.g != paramd)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.g = null;
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.f);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.i);
    paramPrintWriter.print(" mContentChanged=");
    paramPrintWriter.print(this.l);
    paramPrintWriter.print(" mAbandoned=");
    paramPrintWriter.print(this.j);
    paramPrintWriter.print(" mReset=");
    paramPrintWriter.println(this.k);
  }

  public void b(Object paramObject)
  {
    if (this.g != null)
      this.g.a(this, paramObject);
  }

  public String c(Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(paramObject, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public boolean f()
  {
    return this.j;
  }

  public final void g()
  {
    this.i = true;
    this.k = false;
    this.j = false;
    h();
  }

  protected void h()
  {
  }

  public void i()
  {
    a();
  }

  public void j()
  {
    this.i = false;
    k();
  }

  protected void k()
  {
  }

  public void l()
  {
    m();
    this.k = true;
    this.i = false;
    this.j = false;
    this.l = false;
  }

  protected void m()
  {
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.f);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.c
 * JD-Core Version:    0.6.2
 */