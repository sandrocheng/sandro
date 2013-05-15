package com.avast.android.mobilesecurity.ui.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.util.al;

public class YesNoDialogFragment extends DialogFragment
{
  private CharSequence a;
  private CharSequence b;
  private y c;

  public void a(CharSequence paramCharSequence)
  {
    this.a = paramCharSequence;
  }

  public void b(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      this.a = paramBundle.getCharSequence("title");
      this.b = paramBundle.getCharSequence("question");
    }
    Context localContext = al.d(getActivity());
    View localView = LayoutInflater.from(localContext).inflate(2130903089, null, false);
    AlertDialog localAlertDialog = new AlertDialog.Builder(localContext).setTitle(this.a).setCancelable(true).setPositiveButton(getText(2131492963), new x(this)).setNegativeButton(getText(2131492964), new w(this)).setView(localView).setInverseBackgroundForced(true).create();
    ((TextView)localView.findViewById(2131165350)).setText(this.b);
    return localAlertDialog;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putCharSequence("title", this.a);
    paramBundle.putCharSequence("question", this.b);
    super.onSaveInstanceState(paramBundle);
  }

  public void setTargetFragment(Fragment paramFragment, int paramInt)
  {
    super.setTargetFragment(paramFragment, paramInt);
    if ((paramFragment instanceof y))
    {
      this.c = ((y)paramFragment);
      return;
    }
    throw new ClassCastException("Target fragment must implement YesNoDialogListener");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.YesNoDialogFragment
 * JD-Core Version:    0.6.2
 */