package com.avast.android.mobilesecurity.app.scanner;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.avast.android.generic.util.m;

public class DeleteFileActivity$DialogFragment extends DialogFragment
{
  public DeleteFileActivity$DialogFragment(DeleteFileActivity paramDeleteFileActivity)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    m.c("DeleteFileActivity$DialogFragment onCancel()");
    ((DeleteFileActivity)getActivity()).finish();
    super.onCancel(paramDialogInterface);
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    String str = DeleteFileActivity.a((DeleteFileActivity)getActivity()).toString().replace("file://", "");
    return new AlertDialog.Builder(getActivity()).setTitle(2131493405).setMessage(getString(2131493403, new Object[] { str })).setPositiveButton(2131492963, new e(this)).setNegativeButton(2131492964, new d(this)).setNeutralButton(2131492966, new c(this)).setCancelable(true).create();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.DeleteFileActivity.DialogFragment
 * JD-Core Version:    0.6.2
 */