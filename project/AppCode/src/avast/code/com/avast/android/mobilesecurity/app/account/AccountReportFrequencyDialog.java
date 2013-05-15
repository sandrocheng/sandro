package com.avast.android.mobilesecurity.app.account;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.util.al;

public class AccountReportFrequencyDialog extends DialogFragment
{
  public static AccountReportFrequencyDialog a(FragmentManager paramFragmentManager)
  {
    AccountReportFrequencyDialog localAccountReportFrequencyDialog = new AccountReportFrequencyDialog();
    localAccountReportFrequencyDialog.show(paramFragmentManager, "dialog");
    return localAccountReportFrequencyDialog;
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setItems(2131623939, new a(this)).setInverseBackgroundForced(true);
    return localBuilder.create();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.AccountReportFrequencyDialog
 * JD-Core Version:    0.6.2
 */