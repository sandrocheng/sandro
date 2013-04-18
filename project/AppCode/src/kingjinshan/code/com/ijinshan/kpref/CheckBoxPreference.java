package com.ijinshan.kpref;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.TextView;
import com.android.internal.R.styleable;

public class CheckBoxPreference extends Preference
{
  private CharSequence o;
  private CharSequence p;
  private boolean q;
  private boolean r;
  private AccessibilityManager s;
  private boolean t;

  public CheckBoxPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842895);
  }

  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CheckBoxPreference, paramInt, 0);
    this.o = localTypedArray.getString(0);
    this.p = localTypedArray.getString(1);
    this.t = localTypedArray.getBoolean(2, false);
    localTypedArray.recycle();
    this.s = ((AccessibilityManager)D().getSystemService("accessibility"));
  }

  private void c(CharSequence paramCharSequence)
  {
    this.o = paramCharSequence;
    if (this.q)
      G();
  }

  private void d(CharSequence paramCharSequence)
  {
    this.p = paramCharSequence;
    if (!this.q)
      G();
  }

  private CharSequence e()
  {
    return this.o;
  }

  private CharSequence f()
  {
    return this.p;
  }

  private void g(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }

  private boolean g()
  {
    return this.t;
  }

  protected final void K_()
  {
    super.K_();
    boolean bool;
    if (!this.q)
    {
      bool = true;
      this.r = true;
      if (b(Boolean.valueOf(bool)))
        break label35;
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label35: a(bool);
    }
  }

  protected final Object a(TypedArray paramTypedArray, int paramInt)
  {
    return Boolean.valueOf(paramTypedArray.getBoolean(paramInt, false));
  }

  public final void a(int paramInt)
  {
    this.o = D().getString(paramInt);
    if (this.q)
      G();
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(CheckBoxPreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      CheckBoxPreference.SavedState localSavedState = (CheckBoxPreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      a(localSavedState.a);
    }
  }

  protected void a(View paramView)
  {
    super.a(paramView);
    View localView = paramView.findViewById(16908289);
    if ((localView != null) && ((localView instanceof Checkable)))
    {
      ((Checkable)localView).setChecked(this.q);
      if ((this.r) && (this.s.isEnabled()) && (localView.isEnabled()))
      {
        this.r = false;
        localView.sendAccessibilityEventUnchecked(AccessibilityEvent.obtain(1));
      }
    }
    TextView localTextView = (TextView)paramView.findViewById(16908304);
    int i;
    if (localTextView != null)
    {
      if ((!this.q) || (this.o == null))
        break label161;
      localTextView.setText(this.o);
      i = 0;
    }
    while (true)
    {
      if (i != 0)
      {
        CharSequence localCharSequence = p();
        if (localCharSequence != null)
        {
          localTextView.setText(localCharSequence);
          i = 0;
        }
      }
      if (i == 0);
      for (int j = 0; ; j = 8)
      {
        if (j != localTextView.getVisibility())
          localTextView.setVisibility(j);
        return;
        label161: if ((this.q) || (this.p == null))
          break label196;
        localTextView.setText(this.p);
        i = 0;
        break;
      }
      label196: i = 1;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.q != paramBoolean)
    {
      this.q = paramBoolean;
      e(paramBoolean);
      d(c());
      G();
    }
  }

  protected final void a(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean);
    for (boolean bool = f(this.q); ; bool = ((Boolean)paramObject).booleanValue())
    {
      a(bool);
      return;
    }
  }

  public final void b(int paramInt)
  {
    this.p = D().getString(paramInt);
    if (!this.q)
      G();
  }

  public final boolean b()
  {
    return this.q;
  }

  public final boolean c()
  {
    boolean bool1;
    if (this.t)
    {
      bool1 = this.q;
      if ((!bool1) && (!super.c()))
        break label44;
    }
    label44: for (boolean bool2 = true; ; bool2 = false)
    {
      return bool2;
      if (!this.q)
      {
        bool1 = true;
        break;
      }
      bool1 = false;
      break;
    }
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    if (B());
    while (true)
    {
      return localObject;
      CheckBoxPreference.SavedState localSavedState = new CheckBoxPreference.SavedState((Parcelable)localObject);
      localSavedState.a = this.q;
      localObject = localSavedState;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.CheckBoxPreference
 * JD-Core Version:    0.6.2
 */