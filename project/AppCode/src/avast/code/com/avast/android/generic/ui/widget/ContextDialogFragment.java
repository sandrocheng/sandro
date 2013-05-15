package com.avast.android.generic.ui.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.TextUtils;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.avast.android.generic.t;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;
import java.util.ArrayList;
import java.util.HashMap;

public class ContextDialogFragment extends DialogFragment
{
  private String[] a = new String[0];
  private String b = "";

  public ContextDialogFragment a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public ContextDialogFragment a(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
    return this;
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      this.b = paramBundle.getString("title");
      this.a = paramBundle.getStringArray("items");
    }
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    if (!TextUtils.isEmpty(this.b))
      localBuilder.setTitle(this.b);
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.a.length; i++)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("name", this.a[i]);
      localArrayList.add(localHashMap);
    }
    ListView localListView = new ListView(localContext);
    int j = v.c;
    String[] arrayOfString = { "name" };
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = t.N;
    localListView.setAdapter(new SimpleAdapter(localContext, localArrayList, j, arrayOfString, arrayOfInt));
    localListView.setOnItemClickListener(new e(this));
    localBuilder.setView(localListView);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    return localAlertDialog;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putString("title", this.b);
    paramBundle.putStringArray("items", this.a);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.ContextDialogFragment
 * JD-Core Version:    0.6.2
 */