package android.support.v4.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class b extends z
  implements Runnable
{
  final q a;
  c b;
  c c;
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
  int o = -1;
  int p;
  CharSequence q;
  int r;
  CharSequence s;

  public b(q paramq)
  {
    this.a = paramq;
  }

  private void a(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    paramFragment.B = this.a;
    if (paramString != null)
    {
      if ((paramFragment.H != null) && (!paramString.equals(paramFragment.H)))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.H + " now " + paramString);
      paramFragment.H = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((paramFragment.F != 0) && (paramFragment.F != paramInt1))
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.F + " now " + paramInt1);
      paramFragment.F = paramInt1;
      paramFragment.G = paramInt1;
    }
    c localc = new c();
    localc.c = paramInt2;
    localc.d = paramFragment;
    a(localc);
  }

  public int a()
  {
    return a(false);
  }

  int a(boolean paramBoolean)
  {
    if (this.n)
      throw new IllegalStateException("commit already called");
    if (q.a)
    {
      Log.v("FragmentManager", "Commit: " + this);
      a("  ", null, new PrintWriter(new android.support.v4.c.b("FragmentManager")), null);
    }
    this.n = true;
    if (this.k);
    for (this.o = this.a.a(this); ; this.o = -1)
    {
      this.a.a(this, paramBoolean);
      return this.o;
    }
  }

  public z a(int paramInt)
  {
    this.i = paramInt;
    return this;
  }

  public z a(int paramInt, Fragment paramFragment, String paramString)
  {
    a(paramInt, paramFragment, paramString, 1);
    return this;
  }

  public z a(Fragment paramFragment)
  {
    c localc = new c();
    localc.c = 3;
    localc.d = paramFragment;
    a(localc);
    return this;
  }

  public z a(Fragment paramFragment, String paramString)
  {
    a(0, paramFragment, paramString, 1);
    return this;
  }

  void a(c paramc)
  {
    if (this.b == null)
    {
      this.c = paramc;
      this.b = paramc;
    }
    while (true)
    {
      paramc.e = this.e;
      paramc.f = this.f;
      paramc.g = this.g;
      paramc.h = this.h;
      this.d = (1 + this.d);
      return;
      paramc.b = this.c;
      this.c.a = paramc;
      this.c = paramc;
    }
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a(paramString, paramPrintWriter, true);
  }

  public void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
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
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str1 = paramString + "    ";
      c localc1 = this.b;
      int i1 = 0;
      c localc2 = localc1;
      while (localc2 != null)
      {
        String str2;
        int i2;
        switch (localc2.c)
        {
        default:
          str2 = "cmd=" + localc2.c;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str2);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(localc2.d);
          if (paramBoolean)
          {
            if ((localc2.e != 0) || (localc2.f != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localc2.e));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localc2.f));
            }
            if ((localc2.g != 0) || (localc2.h != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localc2.g));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localc2.h));
            }
          }
          if ((localc2.i == null) || (localc2.i.size() <= 0))
            break label785;
          i2 = 0;
          label623: if (i2 >= localc2.i.size())
            break label785;
          paramPrintWriter.print(str1);
          if (localc2.i.size() == 1)
            paramPrintWriter.print("Removed: ");
          break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (true)
        {
          paramPrintWriter.println(localc2.i.get(i2));
          i2++;
          break label623;
          str2 = "NULL";
          break;
          str2 = "ADD";
          break;
          str2 = "REPLACE";
          break;
          str2 = "REMOVE";
          break;
          str2 = "HIDE";
          break;
          str2 = "SHOW";
          break;
          str2 = "DETACH";
          break;
          str2 = "ATTACH";
          break;
          if (i2 == 0)
            paramPrintWriter.println("Removed:");
          paramPrintWriter.print(str1);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label785: localc2 = localc2.a;
        i1++;
      }
    }
  }

  public int b()
  {
    return a(true);
  }

  public z b(int paramInt, Fragment paramFragment, String paramString)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    a(paramInt, paramFragment, paramString, 2);
    return this;
  }

  public z b(Fragment paramFragment)
  {
    c localc = new c();
    localc.c = 6;
    localc.d = paramFragment;
    a(localc);
    return this;
  }

  void b(int paramInt)
  {
    if (!this.k);
    while (true)
    {
      return;
      if (q.a)
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      for (c localc = this.b; localc != null; localc = localc.a)
      {
        if (localc.d != null)
        {
          Fragment localFragment2 = localc.d;
          localFragment2.A = (paramInt + localFragment2.A);
          if (q.a)
            Log.v("FragmentManager", "Bump nesting of " + localc.d + " to " + localc.d.A);
        }
        if (localc.i != null)
          for (int i1 = -1 + localc.i.size(); i1 >= 0; i1--)
          {
            Fragment localFragment1 = (Fragment)localc.i.get(i1);
            localFragment1.A = (paramInt + localFragment1.A);
            if (q.a)
              Log.v("FragmentManager", "Bump nesting of " + localFragment1 + " to " + localFragment1.A);
          }
      }
    }
  }

  public void b(boolean paramBoolean)
  {
    if (q.a)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      a("  ", null, new PrintWriter(new android.support.v4.c.b("FragmentManager")), null);
    }
    b(-1);
    c localc = this.c;
    if (localc != null)
    {
      switch (localc.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localc.c);
      case 1:
        Fragment localFragment8 = localc.d;
        localFragment8.P = localc.h;
        this.a.a(localFragment8, q.c(this.i), this.j);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localc = localc.b;
        break;
        Fragment localFragment6 = localc.d;
        if (localFragment6 != null)
        {
          localFragment6.P = localc.h;
          this.a.a(localFragment6, q.c(this.i), this.j);
        }
        if (localc.i != null)
        {
          for (int i1 = 0; i1 < localc.i.size(); i1++)
          {
            Fragment localFragment7 = (Fragment)localc.i.get(i1);
            localFragment7.P = localc.g;
            this.a.a(localFragment7, false);
          }
          Fragment localFragment5 = localc.d;
          localFragment5.P = localc.g;
          this.a.a(localFragment5, false);
          continue;
          Fragment localFragment4 = localc.d;
          localFragment4.P = localc.g;
          this.a.c(localFragment4, q.c(this.i), this.j);
          continue;
          Fragment localFragment3 = localc.d;
          localFragment3.P = localc.h;
          this.a.b(localFragment3, q.c(this.i), this.j);
          continue;
          Fragment localFragment2 = localc.d;
          localFragment2.P = localc.g;
          this.a.e(localFragment2, q.c(this.i), this.j);
          continue;
          Fragment localFragment1 = localc.d;
          localFragment1.P = localc.g;
          this.a.d(localFragment1, q.c(this.i), this.j);
        }
      }
    }
    if (paramBoolean)
      this.a.a(this.a.n, q.c(this.i), this.j, true);
    if (this.o >= 0)
    {
      this.a.b(this.o);
      this.o = -1;
    }
  }

  public z c(Fragment paramFragment)
  {
    c localc = new c();
    localc.c = 7;
    localc.d = paramFragment;
    a(localc);
    return this;
  }

  public String c()
  {
    return this.m;
  }

  public void run()
  {
    if (q.a)
      Log.v("FragmentManager", "Run: " + this);
    if ((this.k) && (this.o < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    b(1);
    c localc = this.b;
    if (localc != null)
    {
      switch (localc.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localc.c);
      case 1:
        Fragment localFragment9 = localc.d;
        localFragment9.P = localc.e;
        this.a.a(localFragment9, false);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localc = localc.a;
        break;
        Fragment localFragment6 = localc.d;
        Fragment localFragment7;
        if (this.a.g != null)
        {
          int i1 = 0;
          localFragment7 = localFragment6;
          if (i1 < this.a.g.size())
          {
            Fragment localFragment8 = (Fragment)this.a.g.get(i1);
            if (q.a)
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localFragment7 + " old=" + localFragment8);
            if ((localFragment7 == null) || (localFragment8.G == localFragment7.G))
            {
              if (localFragment8 != localFragment7)
                break label318;
              localFragment7 = null;
              localc.d = null;
            }
            while (true)
            {
              i1++;
              break;
              label318: if (localc.i == null)
                localc.i = new ArrayList();
              localc.i.add(localFragment8);
              localFragment8.P = localc.f;
              if (this.k)
              {
                localFragment8.A = (1 + localFragment8.A);
                if (q.a)
                  Log.v("FragmentManager", "Bump nesting of " + localFragment8 + " to " + localFragment8.A);
              }
              this.a.a(localFragment8, this.i, this.j);
            }
          }
        }
        else
        {
          localFragment7 = localFragment6;
        }
        if (localFragment7 != null)
        {
          localFragment7.P = localc.e;
          this.a.a(localFragment7, false);
          continue;
          Fragment localFragment5 = localc.d;
          localFragment5.P = localc.f;
          this.a.a(localFragment5, this.i, this.j);
          continue;
          Fragment localFragment4 = localc.d;
          localFragment4.P = localc.f;
          this.a.b(localFragment4, this.i, this.j);
          continue;
          Fragment localFragment3 = localc.d;
          localFragment3.P = localc.e;
          this.a.c(localFragment3, this.i, this.j);
          continue;
          Fragment localFragment2 = localc.d;
          localFragment2.P = localc.f;
          this.a.d(localFragment2, this.i, this.j);
          continue;
          Fragment localFragment1 = localc.d;
          localFragment1.P = localc.e;
          this.a.e(localFragment1, this.i, this.j);
        }
      }
    }
    this.a.a(this.a.n, this.i, this.j, true);
    if (this.k)
      this.a.b(this);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.o >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.o);
    }
    if (this.m != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.m);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.b
 * JD-Core Version:    0.6.2
 */