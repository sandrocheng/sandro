package com.avast.android.generic.ui.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.o;
import com.avast.android.generic.util.al;

public class LanguageSelectorRow$LanguageSelectDialog extends DialogFragment
{
  public static void a(FragmentManager paramFragmentManager)
  {
    if (paramFragmentManager.findFragmentByTag("dialog") == null)
      new LanguageSelectDialog().show(paramFragmentManager, "dialog");
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setItems(o.a, new i(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.LanguageSelectorRow.LanguageSelectDialog
 * JD-Core Version:    0.6.2
 */