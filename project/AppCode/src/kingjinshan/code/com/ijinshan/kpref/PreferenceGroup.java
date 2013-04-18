package com.ijinshan.kpref;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.android.internal.R.styleable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class PreferenceGroup extends Preference
  implements g
{
  private List o = new ArrayList();
  private boolean p = true;
  private int q = 0;
  private boolean r = false;

  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PreferenceGroup, paramInt, 0);
    this.p = localTypedArray.getBoolean(0, this.p);
    localTypedArray.recycle();
  }

  private void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  private boolean e(Preference paramPreference)
  {
    try
    {
      paramPreference.K();
      boolean bool = this.o.remove(paramPreference);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean g()
  {
    return this.p;
  }

  private void h()
  {
    try
    {
      List localList = this.o;
      for (int i = localList.size() - 1; i >= 0; i--)
        e((Preference)localList.get(0));
      H();
      return;
    }
    finally
    {
    }
  }

  protected final void J()
  {
    super.J();
    this.r = true;
    int i = b();
    for (int j = 0; j < i; j++)
      a(j).J();
  }

  protected final void K()
  {
    super.K();
    this.r = false;
  }

  public final Preference a(int paramInt)
  {
    return (Preference)this.o.get(paramInt);
  }

  protected boolean a(Preference paramPreference)
  {
    if (!super.x())
      paramPreference.c(false);
    return true;
  }

  public final int b()
  {
    return this.o.size();
  }

  protected final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    int i = b();
    for (int j = 0; j < i; j++)
      a(j).b(paramBundle);
  }

  public final void b(Preference paramPreference)
  {
    c(paramPreference);
  }

  public final Preference c(CharSequence paramCharSequence)
  {
    Object localObject;
    if (TextUtils.equals(A(), paramCharSequence))
      localObject = this;
    while (true)
    {
      return localObject;
      int i = b();
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label87;
        localObject = a(j);
        String str = ((Preference)localObject).A();
        if ((str != null) && (str.equals(paramCharSequence)))
          break;
        if ((localObject instanceof PreferenceGroup))
        {
          localObject = ((PreferenceGroup)localObject).c(paramCharSequence);
          if (localObject != null)
            break;
        }
      }
      label87: localObject = null;
    }
  }

  public final void c(boolean paramBoolean)
  {
    super.c(paramBoolean);
    int i = b();
    for (int j = 0; j < i; j++)
      a(j).c(paramBoolean);
  }

  public final boolean c(Preference paramPreference)
  {
    boolean bool;
    if (this.o.contains(paramPreference))
      bool = true;
    while (true)
    {
      return bool;
      if (paramPreference.v() == 2147483647)
      {
        if (this.p)
        {
          int j = this.q;
          this.q = (j + 1);
          paramPreference.d(j);
        }
        if ((paramPreference instanceof PreferenceGroup))
          ((PreferenceGroup)paramPreference).p = this.p;
      }
      int i = Collections.binarySearch(this.o, paramPreference);
      if (i < 0)
        i = i * -1 - 1;
      if (!a(paramPreference))
      {
        bool = false;
        continue;
      }
      try
      {
        this.o.add(i, paramPreference);
        paramPreference.a(I());
        if (this.r)
          paramPreference.J();
        H();
        bool = true;
      }
      finally
      {
      }
    }
  }

  protected final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    int i = b();
    for (int j = 0; j < i; j++)
      a(j).d(paramBundle);
  }

  public final boolean d(Preference paramPreference)
  {
    boolean bool = e(paramPreference);
    H();
    return bool;
  }

  protected boolean e()
  {
    return true;
  }

  final void f()
  {
    try
    {
      Collections.sort(this.o);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.PreferenceGroup
 * JD-Core Version:    0.6.2
 */