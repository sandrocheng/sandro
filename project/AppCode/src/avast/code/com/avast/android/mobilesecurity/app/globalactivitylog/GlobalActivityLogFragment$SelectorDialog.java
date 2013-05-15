package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.util.al;

public class GlobalActivityLogFragment$SelectorDialog extends DialogFragment
{
  private String[] a;
  private boolean[] b;

  public GlobalActivityLogFragment$SelectorDialog()
  {
  }

  private GlobalActivityLogFragment$SelectorDialog(String[] paramArrayOfString, boolean[] paramArrayOfBoolean)
  {
    this.b = paramArrayOfBoolean;
    this.a = paramArrayOfString;
  }

  public static void a(FragmentManager paramFragmentManager, String[] paramArrayOfString, boolean[] paramArrayOfBoolean)
  {
    if (paramFragmentManager.findFragmentByTag("selector_row_dialog") == null)
      new SelectorDialog(paramArrayOfString, paramArrayOfBoolean).show(paramFragmentManager, "selector_row_dialog");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.a = paramBundle.getStringArray("mEntriesNames");
      this.b = paramBundle.getBooleanArray("mSelected");
    }
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setMultiChoiceItems(this.a, this.b, new s(this));
    localBuilder.setPositiveButton(2131492965, new t(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArray("mEntriesNames", this.a);
    paramBundle.putBooleanArray("mSelected", this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.GlobalActivityLogFragment.SelectorDialog
 * JD-Core Version:    0.6.2
 */