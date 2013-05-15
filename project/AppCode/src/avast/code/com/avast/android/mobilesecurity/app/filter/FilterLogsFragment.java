package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.x;
import com.avast.android.generic.util.y;
import com.avast.android.mobilesecurity.app.filter.core.d;
import com.avast.android.mobilesecurity.app.filter.core.e;
import com.avast.android.mobilesecurity.i;
import com.avast.android.mobilesecurity.k;

public class FilterLogsFragment extends TrackedListFragment
  implements y
{
  private q a;
  private x b;
  private Cursor c;
  private Uri d;
  private Button e;

  private e a()
  {
    long l = i.a(this.d);
    return d.a(getActivity(), l);
  }

  private void c()
  {
    this.c.requery();
    this.a.notifyDataSetChanged();
  }

  public void a(int paramInt1, Object paramObject, Cursor paramCursor, Uri paramUri, int paramInt2)
  {
    int i = 1;
    if (getActivity() == null);
    label71: label90: label96: label103: 
    while (true)
    {
      return;
      if (paramInt1 == i)
      {
        if (paramCursor == null)
          break label96;
        getActivity().stopManagingCursor(this.c);
        getActivity().startManagingCursor(paramCursor);
        this.a.changeCursor(paramCursor);
        this.c = paramCursor;
        Button localButton = this.e;
        if (this.c.getCount() <= 0)
          break label90;
        localButton.setEnabled(i);
      }
      while (true)
      {
        if (paramInt1 != 2)
          break label103;
        c();
        break;
        i = 0;
        break label71;
        m.f("Getting log failed!");
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    if (this.c != null)
    {
      getActivity().stopManagingCursor(this.c);
      this.c = null;
    }
    this.b.cancelOperation(1);
    if (this.d == null);
    while (true)
    {
      return;
      this.b.startQuery(1, null, this.d, null, null, null, null);
    }
  }

  public String f()
  {
    return "/ms/filter/logs";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setChoiceMode(1);
    registerForContextMenu(getListView());
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131165754:
    }
    while (true)
    {
      return super.onContextItemSelected(paramMenuItem);
      this.b.startDelete(2, null, k.a(localAdapterContextMenuInfo.id), null, null);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = BaseActivity.a(getArguments()).getData();
    this.a = new q(this, getActivity());
    this.b = new x(getActivity().getContentResolver(), this);
    setListAdapter(this.a);
    a(getArguments());
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getActivity().getMenuInflater().inflate(2131755008, paramContextMenu);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903122, paramViewGroup, false);
    if (this.d.toString().contains("filterGroups"))
      ((TextView)localViewGroup.findViewById(2131165275)).setText(a().c + ": " + getText(2131493373));
    this.e = ((Button)localViewGroup.findViewById(2131165487));
    this.e.setOnClickListener(new p(this));
    return localViewGroup;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Cursor localCursor = (Cursor)this.a.getItem(paramInt);
    int i = localCursor.getInt(localCursor.getColumnIndex("type"));
    String str = localCursor.getString(localCursor.getColumnIndex("phone"));
    if (i == 1)
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW");
      localIntent1.setData(Uri.parse("sms:" + Uri.encode(str)));
      getActivity().startActivity(localIntent1);
    }
    if (i == 0)
    {
      Intent localIntent2 = new Intent("android.intent.action.VIEW");
      localIntent2.setData(Uri.parse("tel:" + Uri.encode(str)));
      getActivity().startActivity(localIntent2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterLogsFragment
 * JD-Core Version:    0.6.2
 */