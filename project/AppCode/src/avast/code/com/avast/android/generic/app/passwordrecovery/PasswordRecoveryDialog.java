package com.avast.android.generic.app.passwordrecovery;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.p;
import android.support.v4.app.DialogFragment;
import com.avast.android.generic.util.al;
import com.avast.android.generic.z;

public class PasswordRecoveryDialog extends DialogFragment
{
  private boolean a = false;
  private ProgressDialog b;
  private BroadcastReceiver c;
  private p d;

  private void a()
  {
    if ((this.b != null) && (isAdded()))
      this.b.hide();
    this.a = false;
    this.b = null;
  }

  private void a(Context paramContext)
  {
    a();
    if (isAdded())
    {
      this.b = new ProgressDialog(paramContext);
      this.b.setMessage(getString(z.U));
      this.b.setCancelable(false);
      this.b.show();
    }
    this.a = true;
  }

  private void a(boolean paramBoolean)
  {
    a();
    RecoveryResultDialog localRecoveryResultDialog = new RecoveryResultDialog();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("result", paramBoolean);
    localRecoveryResultDialog.setArguments(localBundle);
    localRecoveryResultDialog.show(getFragmentManager(), "recovery_result_dialog");
    dismiss();
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (this.a)
      a(getActivity());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
      this.a = paramBundle.getBoolean("progress_showing", false);
    this.c = new c(this);
    this.d = p.a(getActivity());
    this.d.a(this.c, new IntentFilter("com.avast.android.generic.app.passwordrecovery.ACTION_NEW_STATE"));
  }

  @TargetApi(8)
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setTitle(getString(z.Z));
    localBuilder.setMessage(z.bW);
    localBuilder.setPositiveButton(z.O, new d(this));
    localBuilder.setNegativeButton(z.e, new e(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.setOnShowListener(new f(this, localAlertDialog));
    return localAlertDialog;
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.d.a(this.c);
    a();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("progress_showing", this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.PasswordRecoveryDialog
 * JD-Core Version:    0.6.2
 */