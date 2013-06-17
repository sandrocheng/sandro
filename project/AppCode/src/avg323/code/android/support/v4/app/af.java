package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.c.a;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class af extends ad
{
  static boolean a = false;
  final android.support.v4.c.c b = new android.support.v4.c.c();
  final android.support.v4.c.c c = new android.support.v4.c.c();
  final String d;
  i e;
  boolean f;
  boolean g;
  boolean h;

  af(String paramString, i parami, boolean paramBoolean)
  {
    this.d = paramString;
    this.e = parami;
    this.f = paramBoolean;
  }

  private ag b(int paramInt, Bundle paramBundle, ae paramae)
  {
    ag localag = new ag(this, paramInt, paramBundle, paramae);
    localag.d = paramae.a(paramInt, paramBundle);
    return localag;
  }

  private ag c(int paramInt, Bundle paramBundle, ae paramae)
  {
    try
    {
      this.h = true;
      ag localag = b(paramInt, paramBundle, paramae);
      a(localag);
      return localag;
    }
    finally
    {
      this.h = false;
    }
  }

  public android.support.v4.a.c a(int paramInt)
  {
    if (this.h)
      throw new IllegalStateException("Called while creating a loader");
    ag localag = (ag)this.b.a(paramInt);
    android.support.v4.a.c localc;
    if (localag != null)
      if (localag.n != null)
        localc = localag.n.d;
    while (true)
    {
      return localc;
      localc = localag.d;
      continue;
      localc = null;
    }
  }

  public android.support.v4.a.c a(int paramInt, Bundle paramBundle, ae paramae)
  {
    if (this.h)
      throw new IllegalStateException("Called while creating a loader");
    ag localag = (ag)this.b.a(paramInt);
    if (a)
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    if (localag == null)
    {
      localag = c(paramInt, paramBundle, paramae);
      if (a)
        Log.v("LoaderManager", "  Created new loader " + localag);
    }
    while (true)
    {
      if ((localag.e) && (this.f))
        localag.b(localag.d, localag.g);
      return localag.d;
      if (a)
        Log.v("LoaderManager", "  Re-using existing loader " + localag);
      localag.c = paramae;
    }
  }

  void a(ag paramag)
  {
    this.b.b(paramag.a, paramag);
    if (this.f)
      paramag.a();
  }

  void a(i parami)
  {
    this.e = parami;
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    if (this.b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str2 = paramString + "    ";
      for (int j = 0; j < this.b.a(); j++)
      {
        ag localag2 = (ag)this.b.e(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.b.d(j));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localag2.toString());
        localag2.a(str2, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
    }
    if (this.c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str1 = paramString + "    ";
      while (i < this.c.a())
      {
        ag localag1 = (ag)this.c.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.c.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localag1.toString());
        localag1.a(str1, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i++;
      }
    }
  }

  public boolean a()
  {
    int i = this.b.a();
    int j = 0;
    boolean bool1 = false;
    if (j < i)
    {
      ag localag = (ag)this.b.e(j);
      if ((localag.h) && (!localag.f));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 |= bool2;
        j++;
        break;
      }
    }
    return bool1;
  }

  void b()
  {
    if (a)
      Log.v("LoaderManager", "Starting in " + this);
    if (this.f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.f = true;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((ag)this.b.e(i)).a();
    }
  }

  void c()
  {
    if (a)
      Log.v("LoaderManager", "Stopping in " + this);
    if (!this.f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((ag)this.b.e(i)).e();
      this.f = false;
    }
  }

  void d()
  {
    if (a)
      Log.v("LoaderManager", "Retaining in " + this);
    if (!this.f)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.g = true;
      this.f = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((ag)this.b.e(i)).b();
    }
  }

  void e()
  {
    if (this.g)
    {
      if (a)
        Log.v("LoaderManager", "Finished Retaining in " + this);
      this.g = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((ag)this.b.e(i)).c();
    }
  }

  void f()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
      ((ag)this.b.e(i)).k = true;
  }

  void g()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
      ((ag)this.b.e(i)).d();
  }

  void h()
  {
    if (!this.g)
    {
      if (a)
        Log.v("LoaderManager", "Destroying Active in " + this);
      for (int j = -1 + this.b.a(); j >= 0; j--)
        ((ag)this.b.e(j)).f();
    }
    if (a)
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    for (int i = -1 + this.c.a(); i >= 0; i--)
      ((ag)this.c.e(i)).f();
    this.c.b();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    a.a(this.e, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.af
 * JD-Core Version:    0.6.2
 */