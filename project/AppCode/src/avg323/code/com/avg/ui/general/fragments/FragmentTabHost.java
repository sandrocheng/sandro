package com.avg.ui.general.fragments;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.o;
import android.support.v4.app.z;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private o d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private h g;
  private boolean h;

  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }

  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  private z a(String paramString, z paramz)
  {
    Object localObject1 = null;
    int i = 0;
    Object localObject2;
    if (i < this.a.size())
    {
      localObject2 = (h)this.a.get(i);
      if (!h.b((h)localObject2).equals(paramString))
        break label202;
    }
    while (true)
    {
      i++;
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        throw new IllegalStateException("No tab known for tag " + paramString);
      if (this.g != localObject1)
      {
        if (paramz == null)
          paramz = this.d.a();
        if ((this.g != null) && (h.a(this.g) != null))
          paramz.b(h.a(this.g));
        if (localObject1 != null)
        {
          if (h.a(localObject1) != null)
            break label190;
          h.a(localObject1, Fragment.a(this.c, h.c(localObject1).getName(), h.d(localObject1)));
          paramz.a(this.e, h.a(localObject1), h.b(localObject1));
        }
      }
      while (true)
      {
        this.g = localObject1;
        return paramz;
        label190: paramz.c(h.a(localObject1));
      }
      label202: localObject2 = localObject1;
    }
  }

  private void a()
  {
    if (this.b == null)
    {
      this.b = ((FrameLayout)findViewById(this.e));
      if (this.b == null)
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
    }
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.e = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    super.setOnTabChangedListener(this);
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      TabWidget localTabWidget = new TabWidget(paramContext);
      localTabWidget.setId(16908307);
      localTabWidget.setOrientation(0);
      localLinearLayout.addView(localTabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      FrameLayout localFrameLayout1 = new FrameLayout(paramContext);
      localFrameLayout1.setId(16908305);
      localLinearLayout.addView(localFrameLayout1, new LinearLayout.LayoutParams(0, 0, 0.0F));
      FrameLayout localFrameLayout2 = new FrameLayout(paramContext);
      this.b = localFrameLayout2;
      this.b.setId(this.e);
      localLinearLayout.addView(localFrameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }

  public void a(Context paramContext, o paramo, int paramInt)
  {
    super.setup();
    this.c = paramContext;
    this.d = paramo;
    this.e = paramInt;
    a();
    this.b.setId(paramInt);
    if (getId() == -1)
      setId(16908306);
  }

  public void a(TabHost.TabSpec paramTabSpec, Class paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new f(this.c));
    String str = paramTabSpec.getTag();
    h localh = new h(str, paramClass, paramBundle);
    if (this.h)
    {
      h.a(localh, this.d.a(str));
      if ((h.a(localh) != null) && (!h.a(localh).m()))
      {
        z localz = this.d.a();
        localz.b(h.a(localh));
        localz.a();
      }
    }
    this.a.add(localh);
    addTab(paramTabSpec);
  }

  public Fragment[] getAllFragments()
  {
    int i = 0;
    int j = 0;
    int k = 0;
    while (j < this.a.size())
    {
      if (h.a((h)this.a.get(j)) != null)
        k++;
      j++;
    }
    Fragment[] arrayOfFragment = new Fragment[k];
    for (int m = 0; m < this.a.size(); m++)
      if (h.a((h)this.a.get(m)) != null)
      {
        int n = i + 1;
        arrayOfFragment[i] = h.a((h)this.a.get(m));
        i = n;
      }
    return arrayOfFragment;
  }

  public Fragment getCurrenTabFragment()
  {
    if (this.g == null);
    for (Fragment localFragment = null; ; localFragment = h.a(this.g))
      return localFragment;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    z localz1 = null;
    int i = 0;
    if (i < this.a.size())
    {
      h localh = (h)this.a.get(i);
      h.a(localh, this.d.a(h.b(localh)));
      if ((h.a(localh) != null) && (!h.a(localh).m()))
      {
        if (!h.b(localh).equals(str))
          break label98;
        this.g = localh;
      }
      while (true)
      {
        i++;
        break;
        label98: if (localz1 == null)
          localz1 = this.d.a();
        localz1.b(h.a(localh));
      }
    }
    this.h = true;
    z localz2 = a(str, localz1);
    if (localz2 != null)
    {
      localz2.a();
      this.d.b();
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.h = false;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    FragmentTabHost.SavedState localSavedState = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setCurrentTabByTag(localSavedState.a);
  }

  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    localSavedState.a = getCurrentTabTag();
    return localSavedState;
  }

  public void onTabChanged(String paramString)
  {
    if (this.h)
    {
      z localz = a(paramString, null);
      if (localz != null)
        localz.a();
    }
    if (this.f != null)
      this.f.onTabChanged(paramString);
  }

  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.f = paramOnTabChangeListener;
  }

  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.fragments.FragmentTabHost
 * JD-Core Version:    0.6.2
 */