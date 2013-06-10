package android.support.v4.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.c.a;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final HashMap N = new HashMap();
  boolean A;
  boolean B;
  boolean C = true;
  boolean D;
  int E;
  ViewGroup F;
  View G;
  View H;
  boolean I;
  boolean J = true;
  t K;
  boolean L;
  boolean M;
  int a = 0;
  View b;
  int c;
  Bundle d;
  SparseArray e;
  int f = -1;
  String g;
  Bundle h;
  Fragment i;
  int j = -1;
  int k;
  boolean l;
  boolean m;
  boolean n;
  boolean o;
  boolean p;
  boolean q;
  int r;
  k s;
  public f t;
  int u;
  int v;
  String w;
  boolean x;
  boolean y;
  boolean z;

  public static Fragment a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, null);
  }

  public static Fragment a(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass = (Class)N.get(paramString);
      if (localClass == null)
      {
        localClass = paramContext.getClassLoader().loadClass(paramString);
        N.put(paramString, localClass);
      }
      Fragment localFragment = (Fragment)localClass.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(localFragment.getClass().getClassLoader());
        localFragment.h = paramBundle;
      }
      return localFragment;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new d("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new d("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new d("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localIllegalAccessException);
    }
  }

  public static void d()
  {
  }

  public static Animation h()
  {
    return null;
  }

  public static void j()
  {
  }

  public static void l()
  {
  }

  public static void r()
  {
  }

  public static void s()
  {
  }

  public static void t()
  {
  }

  public static boolean u()
  {
    return false;
  }

  public static void v()
  {
  }

  public static boolean w()
  {
    return false;
  }

  final void A()
  {
    n();
    if (this.K != null)
      this.K.f();
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    return null;
  }

  final void a()
  {
    if (this.e != null)
    {
      this.H.restoreHierarchyState(this.e);
      this.e = null;
    }
  }

  final void a(int paramInt)
  {
    this.f = paramInt;
    this.g = ("android:fragment:" + this.f);
  }

  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final void a(Intent paramIntent)
  {
    if (this.t == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.t.startActivityFromFragment(this, paramIntent, 5);
  }

  public void a(Bundle paramBundle)
  {
    this.D = true;
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.u));
    paramPrintWriter.print(" mContainerId#=");
    paramPrintWriter.print(Integer.toHexString(this.v));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.w);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.a);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.f);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.g);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.r);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.l);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.m);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.n);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.o);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.p);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.x);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.y);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.C);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.B);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.z);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.A);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.J);
    if (this.s != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.s);
    }
    if (this.t != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(this.t);
    }
    if (this.h != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.h);
    }
    if (this.d != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.d);
    }
    if (this.e != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.e);
    }
    if (this.i != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.i);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.k);
    }
    if (this.E != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(this.E);
    }
    if (this.F != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.F);
    }
    if (this.G != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.G);
    }
    if (this.H != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.G);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(this.b);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(this.c);
    }
    if (this.K != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.K.a(paramString + "  ", paramPrintWriter);
    }
  }

  final boolean b()
  {
    if (this.r > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final f c()
  {
    return this.t;
  }

  public final LayoutInflater e()
  {
    return this.t.getLayoutInflater();
  }

  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  public final void f()
  {
    this.D = true;
  }

  public final void g()
  {
    this.D = true;
  }

  public final int hashCode()
  {
    return super.hashCode();
  }

  public final void i()
  {
    this.D = true;
  }

  public final void k()
  {
    this.D = true;
  }

  public final void m()
  {
    this.D = true;
  }

  public void n()
  {
    this.D = true;
  }

  public final void o()
  {
    this.D = true;
    if (!this.M)
    {
      this.M = true;
      this.K = this.t.a(this.f, this.L, false);
    }
    if (this.K != null)
      this.K.h();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.D = true;
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.t.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public void onLowMemory()
  {
    this.D = true;
  }

  final void p()
  {
    this.f = -1;
    this.g = null;
    this.l = false;
    this.m = false;
    this.n = false;
    this.o = false;
    this.p = false;
    this.q = false;
    this.r = 0;
    this.s = null;
    this.t = null;
    this.u = 0;
    this.v = 0;
    this.w = null;
    this.x = false;
    this.y = false;
    this.A = false;
    this.K = null;
    this.L = false;
    this.M = false;
  }

  public final void q()
  {
    this.D = true;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a.a(this, localStringBuilder);
    if (this.f >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.f);
    }
    if (this.u != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.u));
    }
    if (this.w != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.w);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  final void x()
  {
    this.D = true;
    if (!this.L)
    {
      this.L = true;
      if (!this.M)
      {
        this.M = true;
        this.K = this.t.a(this.f, this.L, false);
      }
      if (this.K != null)
        this.K.b();
    }
    if (this.K != null)
      this.K.g();
  }

  final void y()
  {
    this.D = true;
  }

  final void z()
  {
    if (this.L)
    {
      this.L = false;
      if (!this.M)
      {
        this.M = true;
        this.K = this.t.a(this.f, this.L, false);
      }
      if (this.K != null)
      {
        if (this.t.g)
          break label69;
        this.K.c();
      }
    }
    while (true)
    {
      return;
      label69: this.K.d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment
 * JD-Core Version:    0.6.2
 */