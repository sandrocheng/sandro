package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.app.filter.core.q;
import java.util.ArrayList;

public class FilterSmsPickerFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private t a;

  public void a(m paramm, Cursor paramCursor)
  {
    if (this.a == null)
    {
      this.a = new t(getActivity(), paramCursor);
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
    return "/ms/filter/group/contacts/smsPicker";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getLoaderManager().initLoader(1, null, this);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new q(getActivity());
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903119, paramViewGroup, false);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - 1;
    Intent localIntent = new Intent();
    Cursor localCursor = (Cursor)this.a.getItem(i);
    ArrayList localArrayList1 = this.a.a(localCursor);
    if (localArrayList1.size() > 0)
      localIntent.putStringArrayListExtra("contact_uris", localArrayList1);
    ArrayList localArrayList2 = this.a.b(localCursor);
    if (localArrayList2.size() > 0)
      localIntent.putStringArrayListExtra("numbers", localArrayList2);
    getActivity().setResult(-1, localIntent);
    j();
  }

  public void onLoaderReset(m paramm)
  {
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (this.a == null)
      getView().findViewById(2131165482).setVisibility(0);
    LayoutInflater localLayoutInflater = getActivity().getLayoutInflater();
    getListView().addHeaderView(localLayoutInflater.inflate(2130903172, getListView(), false), null, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterSmsPickerFragment
 * JD-Core Version:    0.6.2
 */