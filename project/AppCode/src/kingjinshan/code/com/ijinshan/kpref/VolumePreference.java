package com.ijinshan.kpref;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.Window;
import android.widget.SeekBar;
import com.android.internal.R.styleable;

public class VolumePreference extends SeekBarPreference
  implements View.OnKeyListener, w
{
  private static final String o = "VolumePreference";
  private int p;
  private aa q;

  public VolumePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.VolumePreference, 0, 0);
    this.p = 0;
    localTypedArray.recycle();
  }

  private void b(int paramInt)
  {
    this.p = paramInt;
  }

  private void l()
  {
    I().b(this);
    if (this.q != null)
    {
      Dialog localDialog = j();
      if ((localDialog != null) && (localDialog.isShowing()))
      {
        View localView = localDialog.getWindow().getDecorView().findViewById(16908784);
        if (localView != null)
          localView.setOnKeyListener(null);
        this.q.b();
      }
      this.q.a();
      this.q = null;
    }
  }

  public final void a()
  {
    l();
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(VolumePreference.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      VolumePreference.SavedState localSavedState = (VolumePreference.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      if (this.q != null)
        this.q.b(localSavedState.a());
    }
  }

  protected final void a(aa paramaa)
  {
    if ((this.q != null) && (paramaa != this.q))
      this.q.c();
  }

  protected final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if ((!paramBoolean) && (this.q != null))
      this.q.b();
    l();
  }

  protected final void b(View paramView)
  {
    super.b(paramView);
    SeekBar localSeekBar = (SeekBar)paramView.findViewById(16908784);
    this.q = new aa(this, D(), localSeekBar, this.p);
    I().a(this);
    paramView.setOnKeyListener(this);
    paramView.setFocusableInTouchMode(true);
    paramView.requestFocus();
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    if (B());
    while (true)
    {
      return localObject;
      VolumePreference.SavedState localSavedState = new VolumePreference.SavedState((Parcelable)localObject);
      if (this.q != null)
        this.q.a(localSavedState.a());
      localObject = localSavedState;
    }
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (this.q == null)
      bool = true;
    while (true)
    {
      label10: return bool;
      if (paramKeyEvent.getAction() == 0);
      for (int i = 1; ; i = 0)
        switch (paramInt)
        {
        default:
          bool = false;
          break label10;
        case 25:
        case 24:
        }
      if (i != 0)
        this.q.a(-1);
      bool = true;
      continue;
      if (i != 0)
        this.q.a(1);
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.VolumePreference
 * JD-Core Version:    0.6.2
 */