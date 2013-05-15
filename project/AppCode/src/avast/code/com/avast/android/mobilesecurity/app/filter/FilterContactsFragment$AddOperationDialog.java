package com.avast.android.mobilesecurity.app.filter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.avast.android.generic.util.al;
import java.util.ArrayList;
import java.util.HashMap;

public class FilterContactsFragment$AddOperationDialog extends DialogFragment
{
  public FilterContactsFragment$AddOperationDialog(FilterContactsFragment paramFilterContactsFragment)
  {
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    CharSequence[] arrayOfCharSequence = new CharSequence[6];
    arrayOfCharSequence[0] = getString(2131492914);
    arrayOfCharSequence[1] = getString(2131493538);
    arrayOfCharSequence[2] = getString(2131493539);
    arrayOfCharSequence[3] = getString(2131492913);
    arrayOfCharSequence[4] = getString(2131493540);
    arrayOfCharSequence[5] = getString(2131493541);
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(2131493536));
    ArrayList localArrayList = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("name", arrayOfCharSequence[0]);
    localHashMap1.put("image", Integer.valueOf(2130837769));
    localArrayList.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("name", arrayOfCharSequence[1]);
    localHashMap2.put("image", Integer.valueOf(2130837769));
    localArrayList.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("name", arrayOfCharSequence[2]);
    localHashMap3.put("image", Integer.valueOf(2130837769));
    localArrayList.add(localHashMap3);
    HashMap localHashMap4 = new HashMap();
    localHashMap4.put("name", arrayOfCharSequence[3]);
    localHashMap4.put("image", Integer.valueOf(2130837767));
    localArrayList.add(localHashMap4);
    HashMap localHashMap5 = new HashMap();
    localHashMap5.put("name", arrayOfCharSequence[4]);
    localHashMap5.put("image", Integer.valueOf(2130837768));
    localArrayList.add(localHashMap5);
    HashMap localHashMap6 = new HashMap();
    localHashMap6.put("name", arrayOfCharSequence[5]);
    localHashMap6.put("image", Integer.valueOf(2130837770));
    localArrayList.add(localHashMap6);
    ListView localListView = new ListView(localContext);
    localListView.setAdapter(new SimpleAdapter(localContext, localArrayList, 2130903168, new String[] { "name", "image" }, new int[] { 2131165504, 2131165601 }));
    localListView.setOnItemClickListener(new g(this));
    localBuilder.setView(localListView);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterContactsFragment.AddOperationDialog
 * JD-Core Version:    0.6.2
 */