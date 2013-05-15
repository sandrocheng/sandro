package com.avast.android.mobilesecurity.app.scanner;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.ga.TrackedDialogFragment;

public class ConfirmResolveAllFragment extends TrackedDialogFragment
{
  private View a;
  private TextView b;
  private TextView c;
  private TextView d;

  private void b()
  {
    int i = getArguments().getInt("com.avast.android.mobilesecurity.app.scanner.APPS");
    int j = getArguments().getInt("com.avast.android.mobilesecurity.app.scanner.FILES");
    int k = getArguments().getInt("com.avast.android.mobilesecurity.app.scanner.IGNORE");
    TextView localTextView1 = this.b;
    Resources localResources1 = getResources();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    localTextView1.setText(localResources1.getQuantityString(2131689493, i, arrayOfObject1));
    TextView localTextView2 = this.b;
    int m;
    int n;
    label145: TextView localTextView6;
    int i1;
    if (i > 0)
    {
      m = 0;
      localTextView2.setVisibility(m);
      TextView localTextView3 = this.c;
      Resources localResources2 = getResources();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      localTextView3.setText(localResources2.getQuantityString(2131689494, j, arrayOfObject2));
      TextView localTextView4 = this.c;
      if (j <= 0)
        break label221;
      n = 0;
      localTextView4.setVisibility(n);
      TextView localTextView5 = this.d;
      Resources localResources3 = getResources();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(k);
      localTextView5.setText(localResources3.getQuantityString(2131689495, k, arrayOfObject3));
      localTextView6 = this.d;
      i1 = 0;
      if (k <= 0)
        break label228;
    }
    while (true)
    {
      localTextView6.setVisibility(i1);
      return;
      m = 8;
      break;
      label221: n = 8;
      break label145;
      label228: i1 = 8;
    }
  }

  public String a()
  {
    return "/ms/scanner/confirmResolveAll";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b();
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    this.a = LayoutInflater.from(localContext).inflate(2130903088, null, false);
    AlertDialog localAlertDialog = new AlertDialog.Builder(localContext).setTitle(getText(2131493414)).setCancelable(true).setPositiveButton(getText(2131492963), new b(this)).setNegativeButton(getText(2131492964), new a(this)).setInverseBackgroundForced(true).create();
    localAlertDialog.setView(this.a);
    this.b = ((TextView)this.a.findViewById(2131165348));
    this.c = ((TextView)this.a.findViewById(2131165349));
    this.d = ((TextView)this.a.findViewById(2131165303));
    return localAlertDialog;
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }

  public void setTargetFragment(Fragment paramFragment, int paramInt)
  {
    if (!(paramFragment instanceof ap))
      throw new ClassCastException("fragment must implement YesNoCallback");
    super.setTargetFragment(paramFragment, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ConfirmResolveAllFragment
 * JD-Core Version:    0.6.2
 */