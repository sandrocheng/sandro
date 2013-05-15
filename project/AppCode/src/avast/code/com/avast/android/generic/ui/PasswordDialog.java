package com.avast.android.generic.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.a.p;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.q;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.PasswordTextView;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.m;
import com.avast.android.generic.z;

public class PasswordDialog extends DialogFragment
{
  public static int a = 1;
  public static int b = 2;
  private com.avast.android.generic.ae c;
  private PasswordTextView d;
  private ImageView e;
  private int f;
  private boolean g;
  private Activity h;
  private com.avast.android.generic.util.s i;
  private ae j;
  private TextView k;
  private TextView l;
  private BroadcastReceiver m;
  private p n;

  public static Handler.Callback a(Context paramContext, int paramInt, ad paramad)
  {
    u localu = new u(paramad);
    ((com.avast.android.generic.util.s)com.avast.android.generic.ad.a(paramContext, com.avast.android.generic.util.s.class)).a(paramInt, localu);
    return localu;
  }

  private void a()
  {
    if (!isAdded());
    while (true)
    {
      return;
      if (com.avast.android.generic.f.b.a.g(getActivity()))
      {
        if (TextUtils.isEmpty(this.c.k()))
        {
          this.k.setText(z.cA);
          this.k.setTextColor(getResources().getColor(q.b));
          this.l.setText(z.t);
          this.l.setVisibility(0);
        }
        else if (com.avast.android.generic.app.passwordrecovery.a.d(getActivity()))
        {
          this.k.setText(z.ci);
          this.k.setTextColor(getResources().getColor(q.c));
        }
        else
        {
          this.k.setOnClickListener(new ab(this));
        }
      }
      else if (!this.c.u())
      {
        this.k.setText(z.cA);
        this.k.setTextColor(getResources().getColor(q.b));
        this.l.setText(z.cD);
        this.l.setVisibility(0);
      }
      else
      {
        this.k.setVisibility(8);
      }
    }
  }

  public static void a(FragmentManager paramFragmentManager, int paramInt)
  {
    m.b(PasswordDialog.class.getSimpleName(), "Showing password dialog.");
    FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
    if ((DialogFragment)paramFragmentManager.findFragmentByTag("passwordDialog") == null)
    {
      PasswordDialog localPasswordDialog = new PasswordDialog();
      Bundle localBundle = new Bundle();
      localBundle.putInt("callbackHandlerId", paramInt);
      localPasswordDialog.setArguments(localBundle);
      localPasswordDialog.show(localFragmentTransaction, "passwordDialog");
    }
  }

  private void b()
  {
    this.e.setVisibility(0);
    int i1 = this.d.a().length();
    if (i1 > 0)
      this.e.setVisibility(0);
    while (true)
    {
      int i2;
      if (i1 >= 4)
      {
        i2 = 0;
        if (i1 <= 6);
      }
      else
      {
        i2 = 1;
      }
      if (i2 != 0)
        this.e.setImageResource(com.avast.android.generic.s.e);
      return;
      this.e.setVisibility(4);
    }
  }

  private void c()
  {
    this.e.setVisibility(0);
    this.e.setImageResource(com.avast.android.generic.s.k);
    if (isAdded());
    try
    {
      dismiss();
      if (this.f > 0)
      {
        Message localMessage = new Message();
        localMessage.what = this.f;
        localMessage.arg1 = a;
        this.i.a(localMessage);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        m.b("Error dismissing password dialog", localException);
    }
  }

  private TextWatcher d()
  {
    return new ac(this);
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.g = true;
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    if (this.f > 0)
    {
      Message localMessage = new Message();
      localMessage.what = this.f;
      localMessage.arg1 = b;
      this.i.a(localMessage);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = ((com.avast.android.generic.ae)com.avast.android.generic.ad.a(getActivity(), com.avast.android.generic.ae.class));
    this.m = new v(this);
    this.n = p.a(getActivity());
    this.n.a(this.m, new IntentFilter("com.avast.android.generic.app.passwordrecovery.ACTION_RECOVERY_INITIATED"));
  }

  @TargetApi(8)
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    this.h = getActivity();
    this.f = getArguments().getInt("callbackHandlerId");
    this.i = ((com.avast.android.generic.util.s)com.avast.android.generic.ad.a(getActivity(), com.avast.android.generic.util.s.class));
    this.j = new ae(this, this.c);
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(z.bw));
    View localView = LayoutInflater.from(localContext).inflate(com.avast.android.generic.v.C, null, false);
    this.d = ((PasswordTextView)localView.findViewById(t.av));
    this.e = ((ImageView)localView.findViewById(t.aE));
    TextWatcher localTextWatcher = d();
    this.d.addTextChangedListener(localTextWatcher);
    this.e.setVisibility(8);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(6);
    this.d.setFilters(arrayOfInputFilter);
    this.k = ((TextView)localView.findViewById(t.c));
    this.l = ((TextView)localView.findViewById(t.ad));
    a();
    localBuilder.setView(localView);
    localBuilder.setPositiveButton(z.i, new w(this));
    localBuilder.setNegativeButton(z.e, new x(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.setOnShowListener(new y(this, localAlertDialog));
    localAlertDialog.setOnKeyListener(new aa(this));
    localAlertDialog.setCancelable(true);
    setCancelable(true);
    localAlertDialog.getWindow().setSoftInputMode(4);
    return localAlertDialog;
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.n.a(this.m);
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    Object localObject = getActivity();
    if (localObject == null)
      localObject = this.h;
    if ((localObject instanceof PasswordActivity))
      ((Activity)localObject).finish();
  }

  public void onResume()
  {
    super.onResume();
    if ((!this.g) && (this.d != null))
      this.d.setText("");
    this.g = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.PasswordDialog
 * JD-Core Version:    0.6.2
 */