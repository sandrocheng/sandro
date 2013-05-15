package com.avast.android.generic.ui.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.util.al;

public class SelectorRow$SelectorDialog extends DialogFragment
{
  private String[] a;
  private int b;
  private int c;

  public SelectorRow$SelectorDialog()
  {
  }

  private SelectorRow$SelectorDialog(int paramInt1, String[] paramArrayOfString, int paramInt2)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.a = paramArrayOfString;
  }

  public static void a(FragmentManager paramFragmentManager, int paramInt1, String[] paramArrayOfString, int paramInt2)
  {
    if (paramFragmentManager.findFragmentByTag("selector_row_dialog") == null)
      new SelectorDialog(paramInt1, paramArrayOfString, paramInt2).show(paramFragmentManager, "selector_row_dialog");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.a = paramBundle.getStringArray("mEntriesNames");
      this.b = paramBundle.getInt("mMessageId");
      this.c = paramBundle.getInt("mSelected");
    }
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setSingleChoiceItems(this.a, this.c, new w(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArray("mEntriesNames", this.a);
    paramBundle.putInt("mMessageId", this.b);
    paramBundle.putInt("mSelected", this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.SelectorRow.SelectorDialog
 * JD-Core Version:    0.6.2
 */