package com.avast.android.generic.app.account;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.p;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.t;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;

public class AccountDisconnectDialog extends DialogFragment
{
  public static AccountDisconnectDialog a(FragmentManager paramFragmentManager)
  {
    AccountDisconnectDialog localAccountDisconnectDialog = new AccountDisconnectDialog();
    localAccountDisconnectDialog.show(paramFragmentManager, "dialog");
    return localAccountDisconnectDialog;
  }

  private void a()
  {
    p.a(getActivity()).a(new Intent("com.avast.android.generic.app.account.ACTION_DISCONNECT_CONFIRMED"));
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    View localView = LayoutInflater.from(localContext).inflate(v.F, null, false);
    TextView localTextView = (TextView)localView.findViewById(t.X);
    if (com.avast.android.generic.util.z.c(getActivity()))
      localTextView.setVisibility(0);
    while (true)
    {
      return new AlertDialog.Builder(localContext).setTitle(getString(com.avast.android.generic.z.au)).setView(localView).setPositiveButton(com.avast.android.generic.z.O, new b(this)).setNegativeButton(com.avast.android.generic.z.Q, new a(this)).setInverseBackgroundForced(true).create();
      localTextView.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.AccountDisconnectDialog
 * JD-Core Version:    0.6.2
 */