package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.c.a;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final HashMap a = new HashMap();
  int A;
  q B;
  i C;
  q D;
  Fragment E;
  int F;
  int G;
  String H;
  boolean I;
  boolean J;
  boolean K;
  boolean L;
  boolean M;
  boolean N = true;
  boolean O;
  int P;
  ViewGroup Q;
  View R;
  View S;
  boolean T;
  boolean U = true;
  af V;
  boolean W;
  boolean X;
  int j = 0;
  View k;
  int l;
  Bundle m;
  SparseArray n;
  int o = -1;
  String p;
  Bundle q;
  Fragment r;
  int s = -1;
  int t;
  boolean u;
  boolean v;
  boolean w;
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
      Class localClass = (Class)a.get(paramString);
      if (localClass == null)
      {
        localClass = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass);
      }
      Fragment localFragment = (Fragment)localClass.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(localFragment.getClass().getClassLoader());
        localFragment.q = paramBundle;
      }
      return localFragment;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new g("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new g("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new g("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", localIllegalAccessException);
    }
  }

  void A()
  {
    if (this.D != null)
      this.D.n();
    this.O = false;
    s();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onPause()");
  }

  void B()
  {
    if (this.D != null)
      this.D.o();
    this.O = false;
    d();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onStop()");
  }

  void C()
  {
    if (this.D != null)
      this.D.p();
    if (this.W)
    {
      this.W = false;
      if (!this.X)
      {
        this.X = true;
        this.V = this.C.a(this.p, this.W, false);
      }
      if (this.V != null)
      {
        if (this.C.h)
          break label83;
        this.V.c();
      }
    }
    while (true)
    {
      return;
      label83: this.V.d();
    }
  }

  void D()
  {
    if (this.D != null)
      this.D.q();
    this.O = false;
    e();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onDestroyView()");
    if (this.V != null)
      this.V.f();
  }

  void E()
  {
    if (this.D != null)
      this.D.r();
    this.O = false;
    t();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onDestroy()");
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }

  public Animation a(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }

  public final String a(int paramInt)
  {
    return i().getString(paramInt);
  }

  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  final void a(int paramInt, Fragment paramFragment)
  {
    this.o = paramInt;
    if (paramFragment != null);
    for (this.p = (paramFragment.p + ":" + this.o); ; this.p = ("android:fragment:" + this.o))
      return;
  }

  public void a(Activity paramActivity)
  {
    this.O = true;
  }

  public void a(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.O = true;
  }

  public void a(Intent paramIntent)
  {
    if (this.C == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.C.a(this, paramIntent, -1);
  }

  public void a(Intent paramIntent, int paramInt)
  {
    if (this.C == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.C.a(this, paramIntent, paramInt);
  }

  void a(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (this.D != null)
      this.D.a(paramConfiguration);
  }

  public void a(Bundle paramBundle)
  {
    this.O = true;
  }

  public void a(Menu paramMenu)
  {
  }

  public void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
  }

  public void a(View paramView, Bundle paramBundle)
  {
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.F));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.G));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.H);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.j);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.o);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.p);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.A);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.u);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.v);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.w);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.x);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.y);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.I);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.J);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.N);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.M);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.K);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.L);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.U);
    if (this.B != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.B);
    }
    if (this.C != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(this.C);
    }
    if (this.E != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(this.E);
    }
    if (this.q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.q);
    }
    if (this.m != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.m);
    }
    if (this.n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.n);
    }
    if (this.r != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.r);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.t);
    }
    if (this.P != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(this.P);
    }
    if (this.Q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.Q);
    }
    if (this.R != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.R);
    }
    if (this.S != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.R);
    }
    if (this.k != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(this.k);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(this.l);
    }
    if (this.V != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.V.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if (this.D != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + this.D + ":");
      this.D.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    return false;
  }

  public LayoutInflater b(Bundle paramBundle)
  {
    return this.C.getLayoutInflater();
  }

  View b(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.D != null)
      this.D.i();
    return a(paramLayoutInflater, paramViewGroup, paramBundle);
  }

  public void b()
  {
    this.O = true;
  }

  public void b(Menu paramMenu)
  {
  }

  public void b(boolean paramBoolean)
  {
  }

  boolean b(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool1 = this.I;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = this.M;
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.N;
        bool2 = false;
        if (bool4)
        {
          bool2 = true;
          a(paramMenu, paramMenuInflater);
        }
      }
      if (this.D != null)
        bool2 |= this.D.a(paramMenu, paramMenuInflater);
    }
    return bool2;
  }

  public boolean b(MenuItem paramMenuItem)
  {
    return false;
  }

  public void c()
  {
    this.O = true;
    if (!this.W)
    {
      this.W = true;
      if (!this.X)
      {
        this.X = true;
        this.V = this.C.a(this.p, this.W, false);
      }
      if (this.V != null)
        this.V.b();
    }
  }

  public void c(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.E != null))
      throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
    this.K = paramBoolean;
  }

  boolean c(Menu paramMenu)
  {
    boolean bool1 = this.I;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = this.M;
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.N;
        bool2 = false;
        if (bool4)
        {
          bool2 = true;
          a(paramMenu);
        }
      }
      if (this.D != null)
        bool2 |= this.D.a(paramMenu);
    }
    return bool2;
  }

  boolean c(MenuItem paramMenuItem)
  {
    boolean bool = true;
    if (!this.I)
      if ((!this.M) || (!this.N) || (!a_(paramMenuItem)));
    while (true)
    {
      return bool;
      if ((this.D == null) || (!this.D.a(paramMenuItem)))
        bool = false;
    }
  }

  public void d()
  {
    this.O = true;
  }

  public void d(Bundle paramBundle)
  {
    this.O = true;
  }

  void d(Menu paramMenu)
  {
    if (!this.I)
    {
      if ((this.M) && (this.N))
        b(paramMenu);
      if (this.D != null)
        this.D.b(paramMenu);
    }
  }

  public void d(boolean paramBoolean)
  {
    if (this.M != paramBoolean)
    {
      this.M = paramBoolean;
      if ((l()) && (!o()))
        this.C.d();
    }
  }

  boolean d(MenuItem paramMenuItem)
  {
    boolean bool = true;
    if (!this.I)
      if (!b(paramMenuItem));
    while (true)
    {
      return bool;
      if ((this.D == null) || (!this.D.b(paramMenuItem)))
        bool = false;
    }
  }

  public void e()
  {
    this.O = true;
  }

  public void e(Bundle paramBundle)
  {
  }

  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  final void f(Bundle paramBundle)
  {
    if (this.n != null)
    {
      this.S.restoreHierarchyState(this.n);
      this.n = null;
    }
    this.O = false;
    h(paramBundle);
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onViewStateRestored()");
  }

  final boolean f()
  {
    if (this.A > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int g()
  {
    return this.F;
  }

  public void g(Bundle paramBundle)
  {
    if (this.o >= 0)
      throw new IllegalStateException("Fragment already active");
    this.q = paramBundle;
  }

  public final i h()
  {
    return this.C;
  }

  public void h(Bundle paramBundle)
  {
    this.O = true;
  }

  public final int hashCode()
  {
    return super.hashCode();
  }

  public final Resources i()
  {
    if (this.C == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    return this.C.getResources();
  }

  void i(Bundle paramBundle)
  {
    if (this.D != null)
      this.D.i();
    this.O = false;
    a(paramBundle);
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onCreate()");
    if (paramBundle != null)
    {
      Parcelable localParcelable = paramBundle.getParcelable("android:support:fragments");
      if (localParcelable != null)
      {
        if (this.D == null)
          w();
        this.D.a(localParcelable, null);
        this.D.j();
      }
    }
  }

  public final o j()
  {
    return this.B;
  }

  void j(Bundle paramBundle)
  {
    if (this.D != null)
      this.D.i();
    this.O = false;
    d(paramBundle);
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onActivityCreated()");
    if (this.D != null)
      this.D.k();
  }

  public final o k()
  {
    if (this.D == null)
    {
      w();
      if (this.j < 5)
        break label31;
      this.D.m();
    }
    while (true)
    {
      return this.D;
      label31: if (this.j >= 4)
        this.D.l();
      else if (this.j >= 2)
        this.D.k();
      else if (this.j >= 1)
        this.D.j();
    }
  }

  void k(Bundle paramBundle)
  {
    e(paramBundle);
    if (this.D != null)
    {
      Parcelable localParcelable = this.D.h();
      if (localParcelable != null)
        paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }

  public final boolean l()
  {
    if ((this.C != null) && (this.u));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean m()
  {
    return this.J;
  }

  public final boolean n()
  {
    if ((l()) && (!o()) && (this.R != null) && (this.R.getWindowToken() != null) && (this.R.getVisibility() == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean o()
  {
    return this.I;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.O = true;
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    h().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public void onLowMemory()
  {
    this.O = true;
  }

  public ad p()
  {
    if (this.V != null);
    for (af localaf = this.V; ; localaf = this.V)
    {
      return localaf;
      if (this.C == null)
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
      this.X = true;
      this.V = this.C.a(this.p, this.W, true);
    }
  }

  public View q()
  {
    return this.R;
  }

  public void r()
  {
    this.O = true;
  }

  public void s()
  {
    this.O = true;
  }

  public void t()
  {
    this.O = true;
    if (!this.X)
    {
      this.X = true;
      this.V = this.C.a(this.p, this.W, false);
    }
    if (this.V != null)
      this.V.h();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a.a(this, localStringBuilder);
    if (this.o >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.o);
    }
    if (this.F != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.F));
    }
    if (this.H != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.H);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  void u()
  {
    this.o = -1;
    this.p = null;
    this.u = false;
    this.v = false;
    this.w = false;
    this.x = false;
    this.y = false;
    this.z = false;
    this.A = 0;
    this.B = null;
    this.C = null;
    this.F = 0;
    this.G = 0;
    this.H = null;
    this.I = false;
    this.J = false;
    this.L = false;
    this.V = null;
    this.W = false;
    this.X = false;
  }

  public void v()
  {
  }

  void w()
  {
    this.D = new q();
    this.D.a(this.C, new f(this), this);
  }

  void x()
  {
    if (this.D != null)
    {
      this.D.i();
      this.D.e();
    }
    this.O = false;
    c();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onStart()");
    if (this.D != null)
      this.D.l();
    if (this.V != null)
      this.V.g();
  }

  void y()
  {
    if (this.D != null)
    {
      this.D.i();
      this.D.e();
    }
    this.O = false;
    r();
    if (!this.O)
      throw new ai("Fragment " + this + " did not call through to super.onResume()");
    if (this.D != null)
    {
      this.D.m();
      this.D.e();
    }
  }

  void z()
  {
    onLowMemory();
    if (this.D != null)
      this.D.s();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment
 * JD-Core Version:    0.6.2
 */