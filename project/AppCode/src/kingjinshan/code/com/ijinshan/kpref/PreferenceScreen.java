package com.ijinshan.kpref;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

public final class PreferenceScreen extends PreferenceGroup
  implements DialogInterface.OnDismissListener, AdapterView.OnItemClickListener
{
  private ListAdapter o;
  private Dialog p;
  private ListView q;

  public PreferenceScreen(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 16842891);
  }

  private void e(Bundle paramBundle)
  {
    Context localContext = D();
    if (this.q != null)
      this.q.setAdapter(null);
    this.q = new ListView(localContext);
    a(this.q);
    CharSequence localCharSequence = w();
    if (TextUtils.isEmpty(localCharSequence));
    for (int i = 16973830; ; i = 16973829)
    {
      Dialog localDialog = new Dialog(localContext, i);
      this.p = localDialog;
      localDialog.setContentView(this.q);
      if (!TextUtils.isEmpty(localCharSequence))
        localDialog.setTitle(localCharSequence);
      localDialog.setOnDismissListener(this);
      if (paramBundle != null)
        localDialog.onRestoreInstanceState(paramBundle);
      I().a(localDialog);
      localDialog.show();
      return;
    }
  }

  private ListAdapter g()
  {
    if (this.o == null)
      this.o = new p(this);
    return this.o;
  }

  private ListAdapter h()
  {
    return new p(this);
  }

  private Dialog i()
  {
    return this.p;
  }

  protected final void K_()
  {
    if ((r() != null) || (b() == 0));
    while (true)
    {
      return;
      e(null);
    }
  }

  protected final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(PreferenceScreen.SavedState.class)))
      super.a(paramParcelable);
    while (true)
    {
      return;
      PreferenceScreen.SavedState localSavedState = (PreferenceScreen.SavedState)paramParcelable;
      super.a(localSavedState.getSuperState());
      if (localSavedState.a)
        e(localSavedState.b);
    }
  }

  public final void a(ListView paramListView)
  {
    paramListView.setOnItemClickListener(this);
    paramListView.setAdapter(g());
    J();
  }

  protected final Parcelable d()
  {
    Object localObject = super.d();
    Dialog localDialog = this.p;
    if ((localDialog == null) || (!localDialog.isShowing()));
    while (true)
    {
      return localObject;
      PreferenceScreen.SavedState localSavedState = new PreferenceScreen.SavedState((Parcelable)localObject);
      localSavedState.a = true;
      localSavedState.b = localDialog.onSaveInstanceState();
      localObject = localSavedState;
    }
  }

  protected final boolean e()
  {
    return false;
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.p = null;
    I().b(paramDialogInterface);
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = g().getItem(paramInt);
    if (!(localObject instanceof Preference));
    while (true)
    {
      return;
      ((Preference)localObject).a(this);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.PreferenceScreen
 * JD-Core Version:    0.6.2
 */