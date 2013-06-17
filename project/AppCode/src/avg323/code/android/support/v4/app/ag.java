package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.d;
import android.support.v4.c.a;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class ag
  implements d
{
  final int a;
  final Bundle b;
  ae c;
  android.support.v4.a.c d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  ag n;

  public ag(af paramaf, int paramInt, Bundle paramBundle, ae paramae)
  {
    this.a = paramInt;
    this.b = paramBundle;
    this.c = paramae;
  }

  void a()
  {
    if ((this.i) && (this.j))
      this.h = true;
    while (true)
    {
      return;
      if (!this.h)
      {
        this.h = true;
        if (af.a)
          Log.v("LoaderManager", "  Starting: " + this);
        if ((this.d == null) && (this.c != null))
          this.d = this.c.a(this.a, this.b);
        if (this.d != null)
        {
          if ((this.d.getClass().isMemberClass()) && (!Modifier.isStatic(this.d.getClass().getModifiers())))
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
          if (!this.m)
          {
            this.d.a(this.a, this);
            this.m = true;
          }
          this.d.g();
        }
      }
    }
  }

  public void a(android.support.v4.a.c paramc, Object paramObject)
  {
    if (af.a)
      Log.v("LoaderManager", "onLoadComplete: " + this);
    if (this.l)
      if (af.a)
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
    while (true)
    {
      return;
      if (this.o.b.a(this.a) != this)
      {
        if (af.a)
          Log.v("LoaderManager", "  Ignoring load complete -- not active");
      }
      else
      {
        ag localag1 = this.n;
        if (localag1 != null)
        {
          if (af.a)
            Log.v("LoaderManager", "  Switching to pending loader: " + localag1);
          this.n = null;
          this.o.b.b(this.a, null);
          f();
          this.o.a(localag1);
        }
        else
        {
          if ((this.g != paramObject) || (!this.e))
          {
            this.g = paramObject;
            this.e = true;
            if (this.h)
              b(paramc, paramObject);
          }
          ag localag2 = (ag)this.o.c.a(this.a);
          if ((localag2 != null) && (localag2 != this))
          {
            localag2.f = false;
            localag2.f();
            this.o.c.c(this.a);
          }
          if ((this.o.e != null) && (!this.o.a()))
            this.o.e.b.d();
        }
      }
    }
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.a);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(this.b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(this.c);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(this.d);
    if (this.d != null)
      this.d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if ((this.e) || (this.f))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(this.e);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(this.f);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(this.g);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.h);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(this.k);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(this.i);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(this.j);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(this.m);
    if (this.n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.n);
      paramPrintWriter.println(":");
      this.n.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }

  void b()
  {
    if (af.a)
      Log.v("LoaderManager", "  Retaining: " + this);
    this.i = true;
    this.j = this.h;
    this.h = false;
    this.c = null;
  }

  void b(android.support.v4.a.c paramc, Object paramObject)
  {
    String str2;
    if (this.c != null)
    {
      if (this.o.e == null)
        break label164;
      str2 = this.o.e.b.u;
      this.o.e.b.u = "onLoadFinished";
    }
    label164: for (String str1 = str2; ; str1 = null)
      try
      {
        if (af.a)
          Log.v("LoaderManager", "  onLoadFinished in " + paramc + ": " + paramc.c(paramObject));
        this.c.a(paramc, paramObject);
        if (this.o.e != null)
          this.o.e.b.u = str1;
        this.f = true;
        return;
      }
      finally
      {
        if (this.o.e != null)
          this.o.e.b.u = str1;
      }
  }

  void c()
  {
    if (this.i)
    {
      if (af.a)
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      this.i = false;
      if ((this.h != this.j) && (!this.h))
        e();
    }
    if ((this.h) && (this.e) && (!this.k))
      b(this.d, this.g);
  }

  void d()
  {
    if ((this.h) && (this.k))
    {
      this.k = false;
      if (this.e)
        b(this.d, this.g);
    }
  }

  void e()
  {
    if (af.a)
      Log.v("LoaderManager", "  Stopping: " + this);
    this.h = false;
    if ((!this.i) && (this.d != null) && (this.m))
    {
      this.m = false;
      this.d.a(this);
      this.d.j();
    }
  }

  void f()
  {
    if (af.a)
      Log.v("LoaderManager", "  Destroying: " + this);
    this.l = true;
    boolean bool = this.f;
    this.f = false;
    String str2;
    if ((this.c != null) && (this.d != null) && (this.e) && (bool))
    {
      if (af.a)
        Log.v("LoaderManager", "  Reseting: " + this);
      if (this.o.e == null)
        break label276;
      str2 = this.o.e.b.u;
      this.o.e.b.u = "onLoaderReset";
    }
    label276: for (String str1 = str2; ; str1 = null)
      try
      {
        this.c.a(this.d);
        if (this.o.e != null)
          this.o.e.b.u = str1;
        this.c = null;
        this.g = null;
        this.e = false;
        if (this.d != null)
        {
          if (this.m)
          {
            this.m = false;
            this.d.a(this);
          }
          this.d.l();
        }
        if (this.n != null)
          this.n.f();
        return;
      }
      finally
      {
        if (this.o.e != null)
          this.o.e.b.u = str1;
      }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" : ");
    a.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.ag
 * JD-Core Version:    0.6.2
 */