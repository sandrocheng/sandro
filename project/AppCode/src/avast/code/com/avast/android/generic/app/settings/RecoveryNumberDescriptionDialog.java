package com.avast.android.generic.app.settings;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.p;
import android.support.v4.app.DialogFragment;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.al;
import com.avast.android.generic.z;

public class RecoveryNumberDescriptionDialog extends DialogFragment
{
  private ae a;
  private p b;
  private BroadcastReceiver c;
  private Object d;

  private void a()
  {
    if (getFragmentManager() != null)
    {
      SetRecoveryNumberDialog localSetRecoveryNumberDialog = new SetRecoveryNumberDialog();
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("after_pin_setup", getArguments().getBoolean("after_pin_setup", false));
      localSetRecoveryNumberDialog.setArguments(localBundle);
      localSetRecoveryNumberDialog.show(getFragmentManager(), "dialog_recovery_number");
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.b.a(this.c, new IntentFilter("com.avast.android.generic.app.settings.CLOSE_RECOVERY_DESCRIPTION"));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = p.a(getActivity());
    this.c = new a(this);
    this.a = ((ae)ad.a(getActivity(), ae.class));
    this.d = PasswordDialog.a(getActivity(), t.Q, new b(this));
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    boolean bool = getArguments().getBoolean("after_pin_setup", false);
    if (bool);
    for (int i = z.bB; ; i = z.an)
    {
      localBuilder.setMessage(i);
      localBuilder.setPositiveButton(z.cd, new c(this));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setInverseBackgroundForced(true);
      localAlertDialog.setOnShowListener(new d(this, localAlertDialog, bool));
      return localAlertDialog;
    }
  }

  public void onDetach()
  {
    super.onDetach();
    this.b.a(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.RecoveryNumberDescriptionDialog
 * JD-Core Version:    0.6.2
 */