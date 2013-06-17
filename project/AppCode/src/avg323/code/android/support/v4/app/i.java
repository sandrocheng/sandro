package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
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
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class i extends Activity
{
  final Handler a = new j(this);
  final q b = new q();
  final n c = new k(this);
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  HashMap l;
  af m;

  private static String a(View paramView)
  {
    char c1 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    switch (paramView.getVisibility())
    {
    default:
      localStringBuilder.append(c2);
    case 0:
    case 4:
    case 8:
    }
    while (true)
    {
      char c3;
      label108: char c4;
      label126: char c5;
      label143: char c6;
      label161: char c7;
      label179: char c8;
      label197: char c9;
      label215: label236: char c10;
      label253: int n;
      Resources localResources;
      if (paramView.isFocusable())
      {
        c3 = c1;
        localStringBuilder.append(c3);
        if (!paramView.isEnabled())
          break label533;
        c4 = 'E';
        localStringBuilder.append(c4);
        if (!paramView.willNotDraw())
          break label539;
        c5 = c2;
        localStringBuilder.append(c5);
        if (!paramView.isHorizontalScrollBarEnabled())
          break label546;
        c6 = 'H';
        localStringBuilder.append(c6);
        if (!paramView.isVerticalScrollBarEnabled())
          break label552;
        c7 = 'V';
        localStringBuilder.append(c7);
        if (!paramView.isClickable())
          break label558;
        c8 = 'C';
        localStringBuilder.append(c8);
        if (!paramView.isLongClickable())
          break label564;
        c9 = 'L';
        localStringBuilder.append(c9);
        localStringBuilder.append(' ');
        if (!paramView.isFocused())
          break label570;
        localStringBuilder.append(c1);
        if (!paramView.isSelected())
          break label575;
        c10 = 'S';
        localStringBuilder.append(c10);
        if (paramView.isPressed())
          c2 = 'P';
        localStringBuilder.append(c2);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        n = paramView.getId();
        if (n != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(n));
          localResources = paramView.getResources();
          if ((n != 0) && (localResources != null))
            switch (0xFF000000 & n)
            {
            default:
            case 2130706432:
            case 16777216:
            }
        }
      }
      try
      {
        String str1 = localResources.getResourcePackageName(n);
        while (true)
        {
          String str2 = localResources.getResourceTypeName(n);
          String str3 = localResources.getResourceEntryName(n);
          localStringBuilder.append(" ");
          localStringBuilder.append(str1);
          localStringBuilder.append(":");
          localStringBuilder.append(str2);
          localStringBuilder.append("/");
          localStringBuilder.append(str3);
          label485: localStringBuilder.append("}");
          return localStringBuilder.toString();
          localStringBuilder.append('V');
          break;
          localStringBuilder.append('I');
          break;
          localStringBuilder.append('G');
          break;
          c3 = c2;
          break label108;
          label533: c4 = c2;
          break label126;
          label539: c5 = 'D';
          break label143;
          label546: c6 = c2;
          break label161;
          label552: c7 = c2;
          break label179;
          label558: c8 = c2;
          break label197;
          label564: c9 = c2;
          break label215;
          label570: c1 = c2;
          break label236;
          label575: c10 = c2;
          break label253;
          str1 = "app";
          continue;
          str1 = "android";
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        break label485;
      }
    }
  }

  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null)
      paramPrintWriter.println("null");
    while (true)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int n = localViewGroup.getChildCount();
        if (n > 0)
        {
          String str = paramString + "  ";
          for (int i1 = 0; i1 < n; i1++)
            a(str, paramPrintWriter, localViewGroup.getChildAt(i1));
        }
      }
    }
  }

  af a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.l == null)
      this.l = new HashMap();
    af localaf = (af)this.l.get(paramString);
    if (localaf == null)
      if (paramBoolean2)
      {
        localaf = new af(paramString, this, paramBoolean1);
        this.l.put(paramString, localaf);
      }
    while (true)
    {
      return localaf;
      localaf.a(this);
    }
  }

  protected void a()
  {
    this.b.m();
  }

  public void a(Fragment paramFragment)
  {
  }

  public void a(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
      super.startActivityForResult(paramIntent, -1);
    while (true)
    {
      return;
      if ((0xFFFF0000 & paramInt) != 0)
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
      super.startActivityForResult(paramIntent, (1 + paramFragment.o << 16) + (0xFFFF & paramInt));
    }
  }

  void a(String paramString)
  {
    if (this.l != null)
    {
      af localaf = (af)this.l.get(paramString);
      if ((localaf != null) && (!localaf.g))
      {
        localaf.h();
        this.l.remove(paramString);
      }
    }
  }

  void a(boolean paramBoolean)
  {
    if (!this.g)
    {
      this.g = true;
      this.h = paramBoolean;
      this.a.removeMessages(1);
      e();
    }
  }

  public Object b()
  {
    return null;
  }

  public Object c()
  {
    m localm = (m)getLastNonConfigurationInstance();
    if (localm != null);
    for (Object localObject = localm.b; ; localObject = null)
      return localObject;
  }

  public void d()
  {
    if (Build.VERSION.SDK_INT >= 11)
      a.a(this);
    while (true)
    {
      return;
      this.i = true;
    }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    if (Build.VERSION.SDK_INT >= 11);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.d);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.e);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.f);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.g);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.k);
    if (this.m != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.m)));
      paramPrintWriter.println(":");
      this.m.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.b.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }

  void e()
  {
    if (this.k)
    {
      this.k = false;
      if (this.m != null)
      {
        if (this.h)
          break label41;
        this.m.c();
      }
    }
    while (true)
    {
      this.b.p();
      return;
      label41: this.m.d();
    }
  }

  public o f()
  {
    return this.b;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.b.i();
    int n = paramInt1 >> 16;
    int i1;
    if (n != 0)
    {
      i1 = n - 1;
      if ((this.b.f == null) || (i1 < 0) || (i1 >= this.b.f.size()))
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
    }
    while (true)
    {
      return;
      Fragment localFragment = (Fragment)this.b.f.get(i1);
      if (localFragment == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
      }
      else
      {
        localFragment.a(0xFFFF & paramInt1, paramInt2, paramIntent);
        continue;
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
    }
  }

  public void onBackPressed()
  {
    if (!this.b.c())
      finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.b.a(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.b.a(this, this.c, null);
    if (getLayoutInflater().getFactory() == null)
      getLayoutInflater().setFactory(this);
    super.onCreate(paramBundle);
    m localm = (m)getLastNonConfigurationInstance();
    if (localm != null)
      this.l = localm.e;
    Parcelable localParcelable;
    q localq;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localq = this.b;
      if (localm == null)
        break label100;
    }
    label100: for (ArrayList localArrayList = localm.d; ; localArrayList = null)
    {
      localq.a(localParcelable, localArrayList);
      this.b.j();
      return;
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    boolean bool;
    if (paramInt == 0)
    {
      bool = super.onCreatePanelMenu(paramInt, paramMenu) | this.b.a(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT < 11);
    }
    while (true)
    {
      return bool;
      bool = true;
      continue;
      bool = super.onCreatePanelMenu(paramInt, paramMenu);
    }
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString));
    Object localObject;
    for (View localView = super.onCreateView(paramString, paramContext, paramAttributeSet); ; localView = ((Fragment)localObject).R)
    {
      return localView;
      String str1 = paramAttributeSet.getAttributeValue(null, "class");
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, l.a);
      if (str1 == null)
        str1 = localTypedArray.getString(0);
      int n = localTypedArray.getResourceId(1, -1);
      String str2 = localTypedArray.getString(2);
      localTypedArray.recycle();
      int i1 = 0;
      if (0 != 0)
        i1 = null.getId();
      if ((i1 == -1) && (n == -1) && (str2 == null))
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
      localObject = null;
      if (n != -1)
        localObject = this.b.a(n);
      if ((localObject == null) && (str2 != null))
        localObject = this.b.a(str2);
      if ((localObject == null) && (i1 != -1))
        localObject = this.b.a(i1);
      if (q.a)
        Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(n) + " fname=" + str1 + " existing=" + localObject);
      int i2;
      if (localObject == null)
      {
        Fragment localFragment = Fragment.a(this, str1);
        localFragment.x = true;
        if (n != 0)
        {
          i2 = n;
          localFragment.F = i2;
          localFragment.G = i1;
          localFragment.H = str2;
          localFragment.y = true;
          localFragment.B = this.b;
          localFragment.a(this, paramAttributeSet, localFragment.m);
          this.b.a(localFragment, true);
          localObject = localFragment;
        }
      }
      while (true)
      {
        if (((Fragment)localObject).R != null)
          break label532;
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        i2 = i1;
        break;
        if (((Fragment)localObject).y)
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(n) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i1) + " with another fragment for " + str1);
        ((Fragment)localObject).y = true;
        if (!((Fragment)localObject).L)
          ((Fragment)localObject).a(this, paramAttributeSet, ((Fragment)localObject).m);
        this.b.b((Fragment)localObject);
      }
      label532: if (n != 0)
        ((Fragment)localObject).R.setId(n);
      if (((Fragment)localObject).R.getTag() == null)
        ((Fragment)localObject).R.setTag(str2);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    a(false);
    this.b.r();
    if (this.m != null)
      this.m.h();
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
    this.b.s();
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
        bool = this.b.a(paramMenuItem);
        break;
      case 6:
        bool = this.b.b(paramMenuItem);
      }
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.b.i();
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
      this.b.b(paramMenu);
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.e = false;
    if (this.a.hasMessages(2))
    {
      this.a.removeMessages(2);
      a();
    }
    this.b.n();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.a.removeMessages(2);
    a();
    this.b.e();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.i)
      {
        this.i = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      boolean bool2 = super.onPreparePanel(paramInt, paramView, paramMenu) | this.b.a(paramMenu);
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
    this.e = true;
    this.b.e();
  }

  public final Object onRetainNonConfigurationInstance()
  {
    if (this.f)
      a(true);
    Object localObject1 = b();
    ArrayList localArrayList = this.b.g();
    HashMap localHashMap = this.l;
    int n = 0;
    if (localHashMap != null)
    {
      af[] arrayOfaf = new af[this.l.size()];
      this.l.values().toArray(arrayOfaf);
      n = 0;
      if (arrayOfaf != null)
      {
        int i1 = 0;
        if (n < arrayOfaf.length)
        {
          af localaf = arrayOfaf[n];
          if (localaf.g)
            i1 = 1;
          while (true)
          {
            n++;
            break;
            localaf.h();
            this.l.remove(localaf.d);
          }
        }
        n = i1;
      }
    }
    Object localObject2;
    if ((localArrayList == null) && (n == 0) && (localObject1 == null))
      localObject2 = null;
    while (true)
    {
      return localObject2;
      localObject2 = new m();
      ((m)localObject2).a = null;
      ((m)localObject2).b = localObject1;
      ((m)localObject2).c = null;
      ((m)localObject2).d = localArrayList;
      ((m)localObject2).e = this.l;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.b.h();
    if (localParcelable != null)
      paramBundle.putParcelable("android:support:fragments", localParcelable);
  }

  protected void onStart()
  {
    super.onStart();
    this.f = false;
    this.g = false;
    this.a.removeMessages(1);
    if (!this.d)
    {
      this.d = true;
      this.b.k();
    }
    this.b.i();
    this.b.e();
    if (!this.k)
    {
      this.k = true;
      if (this.m == null)
        break label162;
      this.m.b();
    }
    while (true)
    {
      this.j = true;
      this.b.l();
      if (this.l == null)
        break;
      af[] arrayOfaf = new af[this.l.size()];
      this.l.values().toArray(arrayOfaf);
      int n = 0;
      if (arrayOfaf == null)
        break;
      while (n < arrayOfaf.length)
      {
        af localaf = arrayOfaf[n];
        localaf.e();
        localaf.g();
        n++;
      }
      label162: if (!this.j)
      {
        this.m = a(null, this.k, false);
        if ((this.m != null) && (!this.m.f))
          this.m.b();
      }
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.f = true;
    this.a.sendEmptyMessage(1);
    this.b.o();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.i
 * JD-Core Version:    0.6.2
 */