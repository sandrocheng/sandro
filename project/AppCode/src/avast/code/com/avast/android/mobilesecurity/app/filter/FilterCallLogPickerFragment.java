package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.app.filter.core.a;

public class FilterCallLogPickerFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private b a;

  public void a(m paramm, Cursor paramCursor)
  {
    if (this.a == null)
    {
      TextView localTextView = (TextView)getLayoutInflater(null).inflate(2130903166, getListView(), false);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(((a)paramm).f());
      localTextView.setText(getString(2131493551, arrayOfObject));
      getListView().addHeaderView(localTextView);
      this.a = new b(getActivity(), paramCursor);
      setListAdapter(this.a);
      getView().findViewById(2131165482).setVisibility(8);
    }
    while (true)
    {
      return;
      this.a.swapCursor(paramCursor).close();
    }
  }

  public String f()
  {
    return "/ms/filter/group/contacts/callLogPicker";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getLoaderManager().initLoader(1, null, this);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new a(getActivity());
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903118, paramViewGroup, false);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
      return;
    int i = paramInt - 1;
    Intent localIntent = new Intent();
    Cursor localCursor = (Cursor)this.a.getItem(i);
    Uri localUri = this.a.a(localCursor);
    if (localUri != null)
      localIntent.setData(localUri);
    while (true)
    {
      getActivity().setResult(-1, localIntent);
      j();
      break;
      localIntent.putExtra("number", this.a.b(localCursor));
    }
  }

  public void onLoaderReset(m paramm)
  {
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (this.a == null)
      getView().findViewById(2131165482).setVisibility(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterCallLogPickerFragment
 * JD-Core Version:    0.6.2
 */