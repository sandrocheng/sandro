package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.b;
import android.util.Log;
import java.io.PrintWriter;

final class u
  implements b
{
  final int a;
  final Bundle b;
  s c;
  android.support.v4.a.a d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  u n;

  final void a()
  {
    if (t.a)
      Log.v("LoaderManager", "  Stopping: " + this);
    this.h = false;
    if ((!this.i) && (this.d != null) && (this.m))
    {
      this.m = false;
      this.d.a(this);
      this.d.c = false;
    }
  }

  final void a(android.support.v4.a.a parama, Object paramObject)
  {
    String str2;
    if (this.c != null)
    {
      if (this.o.d == null)
        break label184;
      str2 = this.o.d.b.s;
      this.o.d.b.s = "onLoadFinished";
    }
    label184: for (String str1 = str2; ; str1 = null)
      try
      {
        if (t.a)
        {
          StringBuilder localStringBuilder1 = new StringBuilder("  onLoadFinished in ").append(parama).append(": ");
          StringBuilder localStringBuilder2 = new StringBuilder(64);
          android.support.v4.c.a.a(paramObject, localStringBuilder2);
          localStringBuilder2.append("}");
          Log.v("LoaderManager", localStringBuilder2.toString());
        }
        if (this.o.d != null)
          this.o.d.b.s = str1;
        this.f = true;
        return;
      }
      finally
      {
        if (this.o.d != null)
          this.o.d.b.s = str1;
      }
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    while (true)
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
      {
        android.support.v4.a.a locala = this.d;
        String str = paramString + "  ";
        paramPrintWriter.print(str);
        paramPrintWriter.print("mId=");
        paramPrintWriter.print(locala.a);
        paramPrintWriter.print(" mListener=");
        paramPrintWriter.println(locala.b);
        paramPrintWriter.print(str);
        paramPrintWriter.print("mStarted=");
        paramPrintWriter.print(locala.c);
        paramPrintWriter.print(" mContentChanged=");
        paramPrintWriter.print(locala.f);
        paramPrintWriter.print(" mAbandoned=");
        paramPrintWriter.print(locala.d);
        paramPrintWriter.print(" mReset=");
        paramPrintWriter.println(locala.e);
      }
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
      if (this.n == null)
        break;
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.n);
      paramPrintWriter.println(":");
      this = this.n;
      paramString = paramString + "  ";
    }
  }

  final void b()
  {
    if (t.a)
      Log.v("LoaderManager", "  Destroying: " + this);
    this.l = true;
    boolean bool = this.f;
    this.f = false;
    String str1;
    if ((this.c != null) && (this.d != null) && (this.e) && (bool))
    {
      if (t.a)
        Log.v("LoaderManager", "  Reseting: " + this);
      if (this.o.d == null)
        break label285;
      String str2 = this.o.d.b.s;
      this.o.d.b.s = "onLoaderReset";
      str1 = str2;
    }
    while (true)
      label285: 
      try
      {
        if (this.o.d != null)
          this.o.d.b.s = str1;
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
          android.support.v4.a.a locala = this.d;
          locala.e = true;
          locala.c = false;
          locala.d = false;
          locala.f = false;
        }
        if (this.n != null)
          this = this.n;
      }
      finally
      {
        if (this.o.d != null)
          this.o.d.b.s = str1;
      }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" : ");
    android.support.v4.c.a.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.u
 * JD-Core Version:    0.6.2
 */