package com.keniu.security.util;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.android.internal.R.styleable;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.u;

public abstract class CustomDialogPreference extends Preference
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, u
{
  private aq o;
  private CharSequence p;
  private CharSequence q;
  private Drawable r;
  private CharSequence s;
  private CharSequence t;
  private int u;
  private Dialog v;
  private int w;

  public CustomDialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842897);
  }

  public CustomDialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.DialogPreference, paramInt, 0);
    this.p = localTypedArray.getString(0);
    if (this.p == null)
      this.p = w();
    this.q = localTypedArray.getString(1);
    this.r = localTypedArray.getDrawable(2);
    this.s = localTypedArray.getString(3);
    this.t = localTypedArray.getString(4);
    this.u = localTypedArray.getResourceId(5, this.u);
    localTypedArray.recycle();
    c(2130903092);
  }

  private void a(int paramInt)
  {
    this.q = D().getString(paramInt);
  }

  private static void a(Dialog paramDialog)
  {
    paramDialog.getWindow().setSoftInputMode(21);
  }

  private void a(Drawable paramDrawable)
  {
    this.r = paramDrawable;
  }

  private CharSequence b()
  {
    return this.p;
  }

  private void b(View paramView)
  {
    View localView = paramView.findViewById(16908299);
    if (localView != null)
    {
      CharSequence localCharSequence = this.q;
      if (TextUtils.isEmpty(localCharSequence))
        break label57;
      if ((localView instanceof TextView))
        ((TextView)localView).setText(localCharSequence);
    }
    label57: for (int i = 0; ; i = 8)
    {
      if (localView.getVisibility() != i)
        localView.setVisibility(i);
      return;
    }
  }

  private void e(Bundle paramBundle)
  {
    Context localContext = D();
    this.w = -2;
    this.o = new aq(localContext, (byte)0).a(this.p).a(this.r).a(this.s, this).b(this.t, this);
    View localView1 = J_();
    if (localView1 != null)
    {
      View localView2 = localView1.findViewById(16908299);
      if (localView2 != null)
      {
        CharSequence localCharSequence = this.q;
        int i = 8;
        if (!TextUtils.isEmpty(localCharSequence))
        {
          if ((localView2 instanceof TextView))
            ((TextView)localView2).setText(localCharSequence);
          i = 0;
        }
        if (localView2.getVisibility() != i)
          localView2.setVisibility(i);
      }
      this.o.a(localView1);
    }
    while (true)
    {
      ap localap = this.o.c();
      this.v = localap;
      if (paramBundle != null)
        localap.onRestoreInstanceState(paramBundle);
      localap.setOnDismissListener(this);
      localap.show();
      return;
      this.o.b(this.q);
    }
  }

  private void e(CharSequence paramCharSequence)
  {
    this.s = paramCharSequence;
  }

  private void f(CharSequence paramCharSequence)
  {
    this.t = paramCharSequence;
  }

  private CharSequence g()
  {
    return this.q;
  }

  private void g(int paramInt)
  {
    this.r = D().getResources().getDrawable(paramInt);
  }

  private Drawable h()
  {
    return this.r;
  }

  private void h(int paramInt)
  {
    this.t = D().getString(paramInt);
  }

  private CharSequence i()
  {
    return this.s;
  }

  private CharSequence j()
  {
    return this.t;
  }

  private int l()
  {
    return this.u;
  }

  private static void m()
  {
  }

  private static boolean n()
  {
    return false;
  }

  private Dialog o()
  {
    return this.v;
  }

  protected View J_()
  {
    if (this.u == 0);
    for (View localView = null; ; localView = ((LayoutInflater)D().getSystemService("layout_inflater")).inflate(this.u, null))
      return localView;
  }

  protected final void K_()
  {
    e(null);
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(CustomDialogPreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      CustomDialogPreference.SavedState localSavedState = (CustomDialogPreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      if (localSavedState.a)
        e(localSavedState.b);
    }
  }

  protected void a(boolean paramBoolean)
  {
  }

  public final void b(int paramInt)
  {
    this.u = paramInt;
  }

  public final void c(CharSequence paramCharSequence)
  {
    this.p = paramCharSequence;
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    if ((this.v == null) || (!this.v.isShowing()));
    while (true)
    {
      return localObject;
      CustomDialogPreference.SavedState localSavedState = new CustomDialogPreference.SavedState((Parcelable)localObject);
      localSavedState.a = true;
      localSavedState.b = this.v.onSaveInstanceState();
      localObject = localSavedState;
    }
  }

  public final void d(CharSequence paramCharSequence)
  {
    this.q = paramCharSequence;
  }

  public final void e()
  {
    this.p = D().getString(2131428250);
  }

  public final void f()
  {
    this.s = D().getString(2131428994);
  }

  public final void k()
  {
    if ((this.v == null) || (!this.v.isShowing()));
    while (true)
    {
      return;
      this.v.dismiss();
    }
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.w = paramInt;
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    this.v = null;
    if (this.w == -1);
    for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.CustomDialogPreference
 * JD-Core Version:    0.6.2
 */