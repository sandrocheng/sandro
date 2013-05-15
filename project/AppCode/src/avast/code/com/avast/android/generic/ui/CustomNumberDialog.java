package com.avast.android.generic.ui;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.avast.android.generic.t;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@TargetApi(8)
public class CustomNumberDialog extends DialogFragment
{
  private static final Pattern a = Pattern.compile("[0-9+()\\-#]*");
  private static final Pattern b = Pattern.compile("[0-9+()\\-#.*]*");
  private EditText c;
  private TextView d;
  private CheckBox e;
  private View f;
  private boolean g;

  private void a(View paramView)
  {
    this.c = ((EditText)paramView.findViewById(t.H));
    this.d = ((TextView)paramView.findViewById(t.l));
    this.e = ((CheckBox)paramView.findViewById(t.aN));
    this.f = paramView.findViewById(t.aj);
    if (this.g)
    {
      this.e.setVisibility(8);
      a(false);
    }
    while (true)
    {
      this.c.addTextChangedListener(new s(this));
      return;
      a(this.e.isChecked());
      this.e.setOnCheckedChangeListener(new r(this));
    }
  }

  private void a(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
      if (!b(paramCharSequence.toString(), this.e.isChecked()))
      {
        this.d.setText(z.aZ);
        this.d.setVisibility(0);
      }
    while (true)
    {
      return;
      if (!a(paramCharSequence.toString()))
      {
        this.d.setText(z.cq);
        this.d.setVisibility(0);
      }
      else if (PhoneNumberUtils.isEmergencyNumber(paramCharSequence.toString()))
      {
        this.d.setText(z.am);
        this.d.setVisibility(0);
      }
      else
      {
        this.d.setVisibility(8);
        continue;
        this.d.setVisibility(8);
      }
    }
  }

  private void a(boolean paramBoolean)
  {
    View localView = this.f;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }

  private static boolean a(String paramString)
  {
    boolean bool = true;
    if (paramString.contains("*"))
      if (paramString.replaceAll("[^0-9]", "").length() < 4);
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (paramString.length() < 6)
        bool = false;
    }
  }

  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = b(paramString, paramBoolean);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = a(paramString);
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
  }

  private static boolean b(String paramString, boolean paramBoolean)
  {
    if (((paramBoolean) && (!b.matcher(paramString).matches())) || ((!paramBoolean) && (!a.matcher(paramString).matches())));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null);
    for (this.g = getArguments().getBoolean("disable_wildcards", false); ; this.g = false)
      return;
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(z.br));
    localBuilder.setPositiveButton(z.i, new n(this));
    localBuilder.setNegativeButton(z.e, new o(this));
    View localView = LayoutInflater.from(localContext).inflate(v.h, null, false);
    a(localView);
    localBuilder.setView(localView);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.setOnShowListener(new p(this, localAlertDialog));
    return localAlertDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.CustomNumberDialog
 * JD-Core Version:    0.6.2
 */