package com.avast.android.generic.app.passwordrecovery;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.avast.android.generic.util.al;
import com.avast.android.generic.z;

public class RecoveryResultDialog extends DialogFragment
{
  private boolean a;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null);
    for (this.a = getArguments().getBoolean("result", false); ; this.a = false)
      return;
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setTitle(getString(z.Z));
    if (this.a)
      localBuilder.setMessage(z.cb);
    while (true)
    {
      localBuilder.setPositiveButton(z.i, new k(this));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setInverseBackgroundForced(true);
      return localAlertDialog;
      localBuilder.setMessage(z.aH);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.RecoveryResultDialog
 * JD-Core Version:    0.6.2
 */