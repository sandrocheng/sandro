package com.ijinshan.kpref;

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
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public abstract class DialogPreference extends Preference
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

  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842897);
  }

  public DialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
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
  }

  private static void a(Dialog paramDialog)
  {
    paramDialog.getWindow().setSoftInputMode(37);
  }

  private void b(int paramInt)
  {
    this.q = D().getString(paramInt);
  }

  private void c(CharSequence paramCharSequence)
  {
    this.p = paramCharSequence;
  }

  private void d(CharSequence paramCharSequence)
  {
    this.q = paramCharSequence;
  }

  private void e(Bundle paramBundle)
  {
    Context localContext = D();
    this.w = -2;
    this.o = new aq(localContext, (byte)0).a(this.p).a(this.r).a(this.s, this).b(this.t, this);
    View localView = I_();
    if (localView != null)
    {
      b(localView);
      this.o.a(localView);
    }
    while (true)
    {
      a(this.o);
      I().a(this);
      ap localap = this.o.c();
      this.v = localap;
      if (paramBundle != null)
        localap.onRestoreInstanceState(paramBundle);
      if (i())
        localap.getWindow().setSoftInputMode(37);
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

  private void g(int paramInt)
  {
    this.r = D().getResources().getDrawable(paramInt);
  }

  private CharSequence l()
  {
    return this.p;
  }

  private CharSequence m()
  {
    return this.q;
  }

  private CharSequence n()
  {
    return this.s;
  }

  private CharSequence o()
  {
    return this.t;
  }

  private int q()
  {
    return this.u;
  }

  protected View I_()
  {
    if (this.u == 0);
    for (View localView = null; ; localView = ((LayoutInflater)D().getSystemService("layout_inflater")).inflate(this.u, null))
      return localView;
  }

  protected final void K_()
  {
    e(null);
  }

  public final void a(int paramInt)
  {
    this.u = paramInt;
  }

  protected void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(DialogPreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      DialogPreference.SavedState localSavedState = (DialogPreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      if (localSavedState.a)
        e(localSavedState.b);
    }
  }

  protected void a(aq paramaq)
  {
  }

  protected void a(boolean paramBoolean)
  {
  }

  public final void b()
  {
    this.p = D().getString(2131428024);
  }

  protected void b(View paramView)
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

  protected Parcelable d()
  {
    Object localObject = super.d();
    if ((this.v == null) || (!this.v.isShowing()));
    while (true)
    {
      return localObject;
      DialogPreference.SavedState localSavedState = new DialogPreference.SavedState((Parcelable)localObject);
      localSavedState.a = true;
      localSavedState.b = this.v.onSaveInstanceState();
      localObject = localSavedState;
    }
  }

  public final void e()
  {
    this.r = null;
  }

  public final Drawable f()
  {
    return this.r;
  }

  public final void g()
  {
    this.s = D().getString(17039370);
  }

  public final void h()
  {
    this.t = D().getString(17039360);
  }

  protected boolean i()
  {
    return false;
  }

  public final Dialog j()
  {
    return this.v;
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
    I().b(this);
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
 * Qualified Name:     com.ijinshan.kpref.DialogPreference
 * JD-Core Version:    0.6.2
 */