package android.support.v4.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class t extends r
{
  static boolean a = false;
  final q b = new q();
  final q c = new q();
  f d;
  boolean e;
  boolean f;

  t(f paramf, boolean paramBoolean)
  {
    this.d = paramf;
    this.e = paramBoolean;
  }

  final void a(f paramf)
  {
    this.d = paramf;
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    int i = 0;
    if (this.b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str2 = paramString + "    ";
      for (int j = 0; j < this.b.a(); j++)
      {
        u localu2 = (u)this.b.e(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.b.d(j));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localu2.toString());
        localu2.a(str2, paramPrintWriter);
      }
    }
    if (this.c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str1 = paramString + "    ";
      while (i < this.c.a())
      {
        u localu1 = (u)this.c.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.c.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localu1.toString());
        localu1.a(str1, paramPrintWriter);
        i++;
      }
    }
  }

  public final boolean a()
  {
    int i = this.b.a();
    int j = 0;
    boolean bool1 = false;
    if (j < i)
    {
      u localu = (u)this.b.e(j);
      if ((localu.h) && (!localu.f));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 |= bool2;
        j++;
        break;
      }
    }
    return bool1;
  }

  final void b()
  {
    if (a)
      Log.v("LoaderManager", "Starting in " + this);
    if (this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
      return;
    }
    this.e = true;
    int i = -1 + this.b.a();
    label90: u localu;
    if (i >= 0)
    {
      localu = (u)this.b.e(i);
      if ((!localu.i) || (!localu.j))
        break label137;
      localu.h = true;
    }
    while (true)
    {
      i--;
      break label90;
      break;
      label137: if (!localu.h)
      {
        localu.h = true;
        if (a)
          Log.v("LoaderManager", "  Starting: " + localu);
        if ((localu.d == null) && (localu.c != null))
        {
          s locals = localu.c;
          localu.d = locals.a();
        }
        if (localu.d != null)
        {
          if ((localu.d.getClass().isMemberClass()) && (!Modifier.isStatic(localu.d.getClass().getModifiers())))
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + localu.d);
          if (!localu.m)
          {
            android.support.v4.a.a locala2 = localu.d;
            int j = localu.a;
            if (locala2.b != null)
              throw new IllegalStateException("There is already a listener registered");
            locala2.b = localu;
            locala2.a = j;
            localu.m = true;
          }
          android.support.v4.a.a locala1 = localu.d;
          locala1.c = true;
          locala1.e = false;
          locala1.d = false;
        }
      }
    }
  }

  final void c()
  {
    if (a)
      Log.v("LoaderManager", "Stopping in " + this);
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((u)this.b.e(i)).a();
      this.e = false;
    }
  }

  final void d()
  {
    if (a)
      Log.v("LoaderManager", "Retaining in " + this);
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.f = true;
      this.e = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
      {
        u localu = (u)this.b.e(i);
        if (a)
          Log.v("LoaderManager", "  Retaining: " + localu);
        localu.i = true;
        localu.j = localu.h;
        localu.h = false;
        localu.c = null;
      }
    }
  }

  final void e()
  {
    if (this.f)
    {
      if (a)
        Log.v("LoaderManager", "Finished Retaining in " + this);
      this.f = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
      {
        u localu = (u)this.b.e(i);
        if (localu.i)
        {
          if (a)
            Log.v("LoaderManager", "  Finished Retaining: " + localu);
          localu.i = false;
          if ((localu.h != localu.j) && (!localu.h))
            localu.a();
        }
        if ((localu.h) && (localu.e) && (!localu.k))
          localu.a(localu.d, localu.g);
      }
    }
  }

  final void f()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
      ((u)this.b.e(i)).k = true;
  }

  final void g()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
    {
      u localu = (u)this.b.e(i);
      if ((localu.h) && (localu.k))
      {
        localu.k = false;
        if (localu.e)
          localu.a(localu.d, localu.g);
      }
    }
  }

  final void h()
  {
    if (!this.f)
    {
      if (a)
        Log.v("LoaderManager", "Destroying Active in " + this);
      for (int j = -1 + this.b.a(); j >= 0; j--)
        ((u)this.b.e(j)).b();
    }
    if (a)
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    for (int i = -1 + this.c.a(); i >= 0; i--)
      ((u)this.c.e(i)).b();
    this.c.b();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    android.support.v4.c.a.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.t
 * JD-Core Version:    0.6.2
 */