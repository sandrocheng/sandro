package android.support.v4.app;

import android.util.Log;
import java.io.PrintWriter;
import java.util.ArrayList;

final class a extends p
  implements Runnable
{
  final k a;
  b b;
  b c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  boolean k;
  boolean l = true;
  String m;
  boolean n;
  int o;
  int p;
  CharSequence q;
  int r;
  CharSequence s;

  public a(k paramk)
  {
    this.a = paramk;
  }

  public final int a()
  {
    if (this.n)
      throw new IllegalStateException("commit already called");
    if (k.a)
      Log.v("BackStackEntry", "Commit: " + this);
    this.n = true;
    if (this.k);
    for (this.o = this.a.a(this); ; this.o = -1)
    {
      this.a.a(this);
      return this.o;
    }
  }

  public final p a(Fragment paramFragment)
  {
    paramFragment.s = this.a;
    if ((paramFragment.u != 0) && (paramFragment.u != 2131230876))
      throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.u + " now 2131230876");
    paramFragment.u = 2131230876;
    paramFragment.v = 2131230876;
    b localb = new b();
    localb.c = 2;
    localb.d = paramFragment;
    a(localb);
    return this;
  }

  final void a(int paramInt)
  {
    if (!this.k);
    while (true)
    {
      return;
      if (k.a)
        Log.v("BackStackEntry", "Bump nesting in " + this + " by " + paramInt);
      for (b localb = this.b; localb != null; localb = localb.a)
      {
        Fragment localFragment1 = localb.d;
        localFragment1.r = (paramInt + localFragment1.r);
        if (k.a)
          Log.v("BackStackEntry", "Bump nesting of " + localb.d + " to " + localb.d.r);
        if (localb.i != null)
          for (int i1 = -1 + localb.i.size(); i1 >= 0; i1--)
          {
            Fragment localFragment2 = (Fragment)localb.i.get(i1);
            localFragment2.r = (paramInt + localFragment2.r);
            if (k.a)
              Log.v("BackStackEntry", "Bump nesting of " + localFragment2 + " to " + localFragment2.r);
          }
      }
    }
  }

  final void a(b paramb)
  {
    if (this.b == null)
    {
      this.c = paramb;
      this.b = paramb;
    }
    while (true)
    {
      paramb.e = this.e;
      paramb.f = this.f;
      paramb.g = this.g;
      paramb.h = this.h;
      this.d = (1 + this.d);
      return;
      paramb.b = this.c;
      this.c.a = paramb;
      this.c = paramb;
    }
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mName=");
    paramPrintWriter.print(this.m);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.o);
    paramPrintWriter.print(" mCommitted=");
    paramPrintWriter.println(this.n);
    if (this.i != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTransition=#");
      paramPrintWriter.print(Integer.toHexString(this.i));
      paramPrintWriter.print(" mTransitionStyle=#");
      paramPrintWriter.println(Integer.toHexString(this.j));
    }
    if ((this.e != 0) || (this.f != 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mEnterAnim=#");
      paramPrintWriter.print(Integer.toHexString(this.e));
      paramPrintWriter.print(" mExitAnim=#");
      paramPrintWriter.println(Integer.toHexString(this.f));
    }
    if ((this.g != 0) || (this.h != 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mPopEnterAnim=#");
      paramPrintWriter.print(Integer.toHexString(this.g));
      paramPrintWriter.print(" mPopExitAnim=#");
      paramPrintWriter.println(Integer.toHexString(this.h));
    }
    if ((this.p != 0) || (this.q != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.p));
      paramPrintWriter.print(" mBreadCrumbTitleText=");
      paramPrintWriter.println(this.q);
    }
    if ((this.r != 0) || (this.s != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.r));
      paramPrintWriter.print(" mBreadCrumbShortTitleText=");
      paramPrintWriter.println(this.s);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str = paramString + "    ";
      for (b localb = this.b; localb != null; localb = localb.a)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  Op #");
        paramPrintWriter.print(0);
        paramPrintWriter.println(":");
        paramPrintWriter.print(str);
        paramPrintWriter.print("cmd=");
        paramPrintWriter.print(localb.c);
        paramPrintWriter.print(" fragment=");
        paramPrintWriter.println(localb.d);
        if ((localb.e != 0) || (localb.f != 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("enterAnim=#");
          paramPrintWriter.print(Integer.toHexString(localb.e));
          paramPrintWriter.print(" exitAnim=#");
          paramPrintWriter.println(Integer.toHexString(localb.f));
        }
        if ((localb.g != 0) || (localb.h != 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("popEnterAnim=#");
          paramPrintWriter.print(Integer.toHexString(localb.g));
          paramPrintWriter.print(" popExitAnim=#");
          paramPrintWriter.println(Integer.toHexString(localb.h));
        }
        if ((localb.i != null) && (localb.i.size() > 0))
        {
          int i1 = 0;
          if (i1 < localb.i.size())
          {
            paramPrintWriter.print(str);
            if (localb.i.size() == 1)
              paramPrintWriter.print("Removed: ");
            while (true)
            {
              paramPrintWriter.println(localb.i.get(i1));
              i1++;
              break;
              paramPrintWriter.println("Removed:");
              paramPrintWriter.print(str);
              paramPrintWriter.print("  #");
              paramPrintWriter.print(0);
              paramPrintWriter.print(": ");
            }
          }
        }
      }
    }
  }

  public final void b()
  {
    if (k.a)
      Log.v("BackStackEntry", "popFromBackStack: " + this);
    a(-1);
    b localb = this.c;
    if (localb != null)
    {
      switch (localb.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.c);
      case 1:
        Fragment localFragment8 = localb.d;
        localFragment8.E = localb.h;
        this.a.a(localFragment8, k.c(this.i), this.j);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.b;
        break;
        Fragment localFragment6 = localb.d;
        localFragment6.E = localb.h;
        this.a.a(localFragment6, k.c(this.i), this.j);
        if (localb.i != null)
        {
          for (int i1 = 0; i1 < localb.i.size(); i1++)
          {
            Fragment localFragment7 = (Fragment)localb.i.get(i1);
            localFragment7.E = localb.g;
            this.a.a(localFragment7, false);
          }
          Fragment localFragment5 = localb.d;
          localFragment5.E = localb.g;
          this.a.a(localFragment5, false);
          continue;
          Fragment localFragment4 = localb.d;
          localFragment4.E = localb.g;
          this.a.c(localFragment4, k.c(this.i), this.j);
          continue;
          Fragment localFragment3 = localb.d;
          localFragment3.E = localb.h;
          this.a.b(localFragment3, k.c(this.i), this.j);
          continue;
          Fragment localFragment2 = localb.d;
          localFragment2.E = localb.g;
          this.a.e(localFragment2, k.c(this.i), this.j);
          continue;
          Fragment localFragment1 = localb.d;
          localFragment1.E = localb.g;
          this.a.d(localFragment1, k.c(this.i), this.j);
        }
      }
    }
    this.a.a(this.a.n, k.c(this.i), this.j, true);
    if (this.o >= 0)
    {
      this.a.b(this.o);
      this.o = -1;
    }
  }

  public final void run()
  {
    if (k.a)
      Log.v("BackStackEntry", "Run: " + this);
    if ((this.k) && (this.o < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    a(1);
    b localb = this.b;
    if (localb != null)
    {
      switch (localb.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.c);
      case 1:
        Fragment localFragment8 = localb.d;
        localFragment8.E = localb.e;
        this.a.a(localFragment8, false);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.a;
        break;
        Fragment localFragment6 = localb.d;
        if (this.a.g != null)
          for (int i1 = 0; i1 < this.a.g.size(); i1++)
          {
            Fragment localFragment7 = (Fragment)this.a.g.get(i1);
            if (k.a)
              Log.v("BackStackEntry", "OP_REPLACE: adding=" + localFragment6 + " old=" + localFragment7);
            if (localFragment7.v == localFragment6.v)
            {
              if (localb.i == null)
                localb.i = new ArrayList();
              localb.i.add(localFragment7);
              localFragment7.E = localb.f;
              if (this.k)
              {
                localFragment7.r = (1 + localFragment7.r);
                if (k.a)
                  Log.v("BackStackEntry", "Bump nesting of " + localFragment7 + " to " + localFragment7.r);
              }
              this.a.a(localFragment7, this.i, this.j);
            }
          }
        localFragment6.E = localb.e;
        this.a.a(localFragment6, false);
        continue;
        Fragment localFragment5 = localb.d;
        localFragment5.E = localb.f;
        this.a.a(localFragment5, this.i, this.j);
        continue;
        Fragment localFragment4 = localb.d;
        localFragment4.E = localb.f;
        this.a.b(localFragment4, this.i, this.j);
        continue;
        Fragment localFragment3 = localb.d;
        localFragment3.E = localb.e;
        this.a.c(localFragment3, this.i, this.j);
        continue;
        Fragment localFragment2 = localb.d;
        localFragment2.E = localb.f;
        this.a.d(localFragment2, this.i, this.j);
        continue;
        Fragment localFragment1 = localb.d;
        localFragment1.E = localb.e;
        this.a.e(localFragment1, this.i, this.j);
      }
    }
    this.a.a(this.a.n, this.i, this.j, true);
    if (this.k)
      this.a.b(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.a
 * JD-Core Version:    0.6.2
 */