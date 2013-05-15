package com.avast.android.mobilesecurity.app.filter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.util.al;
import com.avast.android.mobilesecurity.j;

public class SmsBlockOfferActivity$GroupSelectDialog extends DialogFragment
{
  private Dialog a(int[] paramArrayOfInt, String[] paramArrayOfString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setTitle(2131493566);
    localBuilder.setItems(paramArrayOfString, new ab(this, paramArrayOfInt));
    localBuilder.setOnCancelListener(new ac(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }

  public static void a(FragmentManager paramFragmentManager)
  {
    if (paramFragmentManager.findFragmentByTag("dialog") == null)
      new GroupSelectDialog().show(paramFragmentManager, "dialog");
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Cursor localCursor = getActivity().getContentResolver().query(j.a(), new String[] { "_id", "name" }, null, null, null);
    int[] arrayOfInt;
    String[] arrayOfString1;
    if (localCursor != null)
    {
      arrayOfInt = new int[1 + localCursor.getCount()];
      String[] arrayOfString2 = new String[1 + localCursor.getCount()];
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("_id");
        int j = localCursor.getColumnIndex("name");
        int k = 1;
        do
        {
          arrayOfInt[k] = localCursor.getInt(i);
          arrayOfString2[k] = localCursor.getString(j);
          k++;
        }
        while (localCursor.moveToNext());
      }
      localCursor.close();
      arrayOfString1 = arrayOfString2;
    }
    while (true)
    {
      if (arrayOfInt == null)
      {
        arrayOfInt = new int[1];
        arrayOfString1 = new String[1];
      }
      arrayOfInt[0] = -1;
      arrayOfString1[0] = getString(2131493533);
      return a(arrayOfInt, arrayOfString1);
      arrayOfString1 = null;
      arrayOfInt = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.SmsBlockOfferActivity.GroupSelectDialog
 * JD-Core Version:    0.6.2
 */