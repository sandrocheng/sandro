package com.avast.android.mobilesecurity.app.filter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.al;
import com.avast.android.mobilesecurity.t;

public class LGWarningDialog extends DialogFragment
{
  private static String a = "dialog_lg_warning_callblock";

  public static void a(Context paramContext, FragmentManager paramFragmentManager)
  {
    if (a(paramContext));
    while (true)
    {
      return;
      FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
      if ((DialogFragment)paramFragmentManager.findFragmentByTag("dialog") == null)
        new LGWarningDialog().show(localFragmentTransaction, "dialog");
    }
  }

  public static boolean a(Context paramContext)
  {
    return ((t)ad.a(paramContext, t.class)).b(a, false);
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(2131493555));
    localBuilder.setMessage(2131493556);
    localBuilder.setPositiveButton(2131492965, new v(this, localContext));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.setCanceledOnTouchOutside(true);
    return localAlertDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.LGWarningDialog
 * JD-Core Version:    0.6.2
 */