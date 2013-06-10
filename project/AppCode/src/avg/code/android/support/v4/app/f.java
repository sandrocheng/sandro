package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public class f extends Activity
{
  final Handler a = new g(this);
  final k b = new k();
  boolean c;
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  boolean j;
  q k;
  t l;

  final t a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.k == null)
      this.k = new q();
    t localt = (t)this.k.a(paramInt);
    if (localt == null)
      if (paramBoolean2)
      {
        localt = new t(this, paramBoolean1);
        this.k.a(paramInt, localt);
      }
    while (true)
    {
      return localt;
      localt.a(this);
    }
  }

  final void a(int paramInt)
  {
    if (this.k != null)
    {
      t localt = (t)this.k.a(paramInt);
      if ((localt != null) && (!localt.f))
      {
        localt.h();
        this.k.b(paramInt);
      }
    }
  }

  final void a(boolean paramBoolean)
  {
    if (!this.f)
    {
      this.f = true;
      this.g = paramBoolean;
      this.a.removeMessages(1);
      if (this.j)
      {
        this.j = false;
        if (this.l != null)
        {
          if (this.g)
            break label66;
          this.l.c();
        }
      }
    }
    while (true)
    {
      this.b.m();
      return;
      label66: this.l.d();
    }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.c);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.d);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.e);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.f);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.j);
    if (this.l != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.l)));
      paramPrintWriter.println(":");
      this.l.a(paramString + "  ", paramPrintWriter);
    }
    this.b.a(paramString, paramFileDescriptor, paramPrintWriter);
  }

  public Object getLastCustomNonConfigurationInstance()
  {
    i locali = (i)getLastNonConfigurationInstance();
    if (locali != null);
    for (Object localObject = locali.b; ; localObject = null)
      return localObject;
  }

  public j getSupportFragmentManager()
  {
    return this.b;
  }

  public r getSupportLoaderManager()
  {
    if (this.l != null);
    for (t localt = this.l; ; localt = this.l)
    {
      return localt;
      this.i = true;
      this.l = a(-1, this.j, true);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int m = paramInt1 >> 16;
    int n;
    if (m != 0)
    {
      n = m - 1;
      if ((this.b.f == null) || (n < 0) || (n >= this.b.f.size()))
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
    }
    while (true)
    {
      return;
      Fragment localFragment = (Fragment)this.b.f.get(n);
      if (localFragment == null)
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
      localFragment.a(0xFFFF & paramInt1, paramInt2, paramIntent);
      continue;
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }

  public void onAttachFragment(Fragment paramFragment)
  {
  }

  public void onBackPressed()
  {
    if (!this.b.b())
      finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.b.a(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    this.b.a(this);
    if (getLayoutInflater().getFactory() == null)
      getLayoutInflater().setFactory(this);
    super.onCreate(paramBundle);
    i locali = (i)getLastNonConfigurationInstance();
    if (locali != null)
      this.k = locali.e;
    Parcelable localParcelable;
    k localk;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localk = this.b;
      if (locali == null)
        break label94;
    }
    label94: for (ArrayList localArrayList = locali.d; ; localArrayList = null)
    {
      localk.a(localParcelable, localArrayList);
      this.b.g();
      return;
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    boolean bool1;
    if (paramInt == 0)
    {
      boolean bool2 = super.onCreatePanelMenu(paramInt, paramMenu);
      k localk = this.b;
      getMenuInflater();
      bool1 = bool2 | localk.p();
      if (Build.VERSION.SDK_INT < 11);
    }
    while (true)
    {
      return bool1;
      bool1 = true;
      continue;
      bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
    }
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString));
    Object localObject;
    for (View localView = super.onCreateView(paramString, paramContext, paramAttributeSet); ; localView = ((Fragment)localObject).G)
    {
      return localView;
      String str1 = paramAttributeSet.getAttributeValue(null, "class");
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, h.a);
      if (str1 == null)
        str1 = localTypedArray.getString(0);
      int m = localTypedArray.getResourceId(1, -1);
      String str2 = localTypedArray.getString(2);
      localTypedArray.recycle();
      localObject = null;
      if (m != -1)
        localObject = this.b.a(m);
      if ((localObject == null) && (str2 != null))
        localObject = this.b.a(str2);
      if (localObject == null)
        localObject = this.b.a(0);
      if (k.a)
        Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(m) + " fname=" + str1 + " existing=" + localObject);
      int n;
      if (localObject == null)
      {
        Fragment localFragment = Fragment.a(this, str1);
        localFragment.o = true;
        if (m != 0)
        {
          n = m;
          localFragment.u = n;
          localFragment.v = 0;
          localFragment.w = str2;
          localFragment.p = true;
          localFragment.s = this.b;
          localFragment.f();
          this.b.a(localFragment, true);
          localObject = localFragment;
        }
      }
      while (true)
      {
        if (((Fragment)localObject).G != null)
          break label445;
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        n = 0;
        break;
        if (((Fragment)localObject).p)
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(m) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + str1);
        ((Fragment)localObject).p = true;
        if (!((Fragment)localObject).A)
          ((Fragment)localObject).f();
        this.b.a((Fragment)localObject);
      }
      label445: if (m != 0)
        ((Fragment)localObject).G.setId(m);
      if (((Fragment)localObject).G.getTag() == null)
        ((Fragment)localObject).G.setTag(str2);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    a(false);
    this.b.n();
    if (this.l != null)
      this.l.h();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      onBackPressed();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    this.b.o();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    boolean bool;
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      bool = true;
    while (true)
    {
      return bool;
      switch (paramInt)
      {
      default:
        bool = false;
        break;
      case 0:
        bool = this.b.r();
        break;
      case 6:
        bool = this.b.s();
      }
    }
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.b.t();
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.d = false;
    if (this.a.hasMessages(2))
    {
      this.a.removeMessages(2);
      this.b.j();
    }
    this.b.k();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.a.removeMessages(2);
    this.b.j();
    this.b.c();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.h)
      {
        this.h = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      boolean bool2 = super.onPreparePanel(paramInt, paramView, paramMenu) | this.b.q();
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = paramMenu.hasVisibleItems();
        bool1 = false;
        if (!bool3);
      }
    }
    for (boolean bool1 = true; ; bool1 = super.onPreparePanel(paramInt, paramView, paramMenu))
      return bool1;
  }

  protected void onResume()
  {
    super.onResume();
    this.a.sendEmptyMessage(2);
    this.d = true;
    this.b.c();
  }

  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }

  public final Object onRetainNonConfigurationInstance()
  {
    if (this.e)
      a(true);
    Object localObject1 = onRetainCustomNonConfigurationInstance();
    ArrayList localArrayList = this.b.d();
    q localq = this.k;
    int m = 0;
    if (localq != null)
    {
      int n = -1 + this.k.a();
      if (n >= 0)
      {
        t localt = (t)this.k.e(n);
        if (localt.f);
        for (int i1 = 1; ; i1 = m)
        {
          n--;
          m = i1;
          break;
          localt.h();
          this.k.c(n);
        }
      }
    }
    Object localObject2;
    if ((localArrayList == null) && (m == 0) && (localObject1 == null))
      localObject2 = null;
    while (true)
    {
      return localObject2;
      localObject2 = new i();
      ((i)localObject2).a = null;
      ((i)localObject2).b = localObject1;
      ((i)localObject2).c = null;
      ((i)localObject2).d = localArrayList;
      ((i)localObject2).e = this.k;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.b.e();
    if (localParcelable != null)
      paramBundle.putParcelable("android:support:fragments", localParcelable);
  }

  protected void onStart()
  {
    super.onStart();
    this.e = false;
    this.f = false;
    this.a.removeMessages(1);
    if (!this.c)
    {
      this.c = true;
      this.b.h();
    }
    this.b.f();
    this.b.c();
    if (!this.j)
    {
      this.j = true;
      if (this.l == null)
        break label141;
      this.l.b();
    }
    while (true)
    {
      this.i = true;
      this.b.i();
      if (this.k == null)
        break;
      for (int m = -1 + this.k.a(); m >= 0; m--)
      {
        t localt = (t)this.k.e(m);
        localt.e();
        localt.g();
      }
      label141: if (!this.i)
        this.l = a(-1, this.j, false);
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.e = true;
    this.a.sendEmptyMessage(1);
    this.b.l();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }

  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
      super.startActivityForResult(paramIntent, -1);
    while (true)
    {
      return;
      if ((0xFFFF0000 & paramInt) != 0)
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
      super.startActivityForResult(paramIntent, (1 + paramFragment.f << 16) + (0xFFFF & paramInt));
    }
  }

  public void supportInvalidateOptionsMenu()
  {
    if (Build.VERSION.SDK_INT >= 11)
      invalidateOptionsMenu();
    while (true)
    {
      return;
      this.h = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.f
 * JD-Core Version:    0.6.2
 */