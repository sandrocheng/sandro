package com.avast.android.generic.ui;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.a.a;
import com.avast.android.generic.ui.widget.PasswordTextView;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.s;
import com.avast.android.generic.v;
import com.avast.android.generic.z;

public class ChangePasswordDialog extends DialogFragment
{
  private PasswordTextView a;
  private PasswordTextView b;
  private TextView c;
  private ImageView d;
  private ImageView e;
  private boolean f;

  private TextWatcher a()
  {
    return new g(this);
  }

  private void a(int paramInt)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null)
    {
      s locals = (s)ad.a(localFragmentActivity, s.class);
      if (locals != null)
        locals.a(paramInt);
    }
  }

  public static void a(FragmentManager paramFragmentManager, boolean paramBoolean)
  {
    ChangePasswordDialog localChangePasswordDialog = new ChangePasswordDialog();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("enableProtection", paramBoolean);
    localChangePasswordDialog.setArguments(localBundle);
    localChangePasswordDialog.show(paramFragmentManager, "dialog");
  }

  private boolean a(String paramString1, String paramString2)
  {
    if ((paramString1.length() >= 4) && (paramString1.length() <= 6) && (paramString1.equals(paramString2)) && (TextUtils.isDigitsOnly(paramString1)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    a(t.aT);
  }

  @TargetApi(8)
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(z.M));
    View localView = LayoutInflater.from(localContext).inflate(v.s, null, false);
    this.a = ((PasswordTextView)localView.findViewById(t.av));
    this.b = ((PasswordTextView)localView.findViewById(t.aw));
    this.d = ((ImageView)localView.findViewById(t.aE));
    this.e = ((ImageView)localView.findViewById(t.aD));
    this.c = ((TextView)localView.findViewById(t.Y));
    TextWatcher localTextWatcher = a();
    this.a.addTextChangedListener(localTextWatcher);
    this.b.addTextChangedListener(localTextWatcher);
    this.d.setVisibility(4);
    this.e.setVisibility(4);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(6);
    this.a.setFilters(arrayOfInputFilter);
    this.b.setFilters(arrayOfInputFilter);
    TextView localTextView1 = (TextView)localView.findViewById(t.aY);
    a locala = new a(localTextView1);
    locala.setStartTime(9223372036854775807L);
    localTextView1.setAnimation(locala);
    TextView localTextView2 = (TextView)localView.findViewById(t.I);
    CharSequence localCharSequence1 = getText(z.cw);
    CharSequence localCharSequence2 = getText(z.av);
    localTextView2.setText(localCharSequence1);
    localTextView2.setOnClickListener(new b(this, locala, localTextView1, localTextView2, localCharSequence2, localCharSequence1));
    localBuilder.setView(localView);
    localBuilder.setPositiveButton(z.i, new c(this));
    localBuilder.setNegativeButton(z.e, new d(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.setOnShowListener(new e(this, localAlertDialog));
    return localAlertDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.ChangePasswordDialog
 * JD-Core Version:    0.6.2
 */