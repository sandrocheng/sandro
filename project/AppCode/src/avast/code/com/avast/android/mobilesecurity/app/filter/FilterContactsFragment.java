package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.provider.ContactsContract.Contacts;
import android.support.v4.a.m;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.CustomNumberDialog;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.s;
import com.avast.android.generic.util.x;
import com.avast.android.mobilesecurity.i;
import com.avast.android.mobilesecurity.j;
import java.util.ArrayList;
import java.util.Iterator;

public class FilterContactsFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private Uri a;
  private h b;
  private x c;
  private Handler.Callback d = new d(this);

  private void a()
  {
    new CustomNumberDialog().show(getFragmentManager(), "dialog_custom_number");
  }

  private void a(int paramInt)
  {
    long l = i.a(this.a);
    ContentResolver localContentResolver = getActivity().getContentResolver();
    switch (paramInt)
    {
    default:
    case 4:
    case 5:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      if (!d().b)
      {
        ContentValues localContentValues3 = new ContentValues();
        localContentValues3.put("hiddenNumbers", Integer.valueOf(1));
        this.c.a(j.a(l), localContentValues3);
        ContentValues localContentValues4 = new ContentValues();
        localContentValues4.put("type", Integer.valueOf(22));
        localContentResolver.insert(this.a, localContentValues4);
        continue;
        if (!d().a)
        {
          ContentValues localContentValues1 = new ContentValues();
          localContentValues1.put("unknownNumbers", Integer.valueOf(1));
          this.c.a(j.a(l), localContentValues1);
          ContentValues localContentValues2 = new ContentValues();
          localContentValues2.put("type", Integer.valueOf(21));
          localContentResolver.insert(this.a, localContentValues2);
          continue;
          Intent localIntent = new Intent("android.intent.action.PICK");
          localIntent.setData(ContactsContract.Contacts.CONTENT_URI);
          startActivityForResult(localIntent, 0);
          continue;
          startActivityForResult(new Intent(getActivity(), FilterSmsPickerActivity.class), 1);
          continue;
          startActivityForResult(new Intent(getActivity(), FilterCallLogPickerActivity.class), 2);
          continue;
          a();
        }
      }
    }
  }

  private void a(int paramInt, long paramLong)
  {
    long l = i.a(this.a);
    Cursor localCursor = (Cursor)this.b.getItem(paramInt);
    int i = localCursor.getInt(localCursor.getColumnIndex("type"));
    getActivity().getContentResolver().delete(i.a(l, paramLong), null, null);
    if (i == 22)
    {
      ContentValues localContentValues1 = new ContentValues();
      localContentValues1.put("hiddenNumbers", Integer.valueOf(0));
      this.c.a(j.a(l), localContentValues1);
    }
    if (i == 21)
    {
      ContentValues localContentValues2 = new ContentValues();
      localContentValues2.put("unknownNumbers", Integer.valueOf(0));
      this.c.a(j.a(l), localContentValues2);
    }
  }

  private void a(ContentResolver paramContentResolver, String paramString)
  {
    String str = com.avast.android.mobilesecurity.app.filter.core.d.a(paramString, true);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("phone", str);
    localContentValues.put("type", Integer.valueOf(10));
    paramContentResolver.insert(this.a, localContentValues);
  }

  private void a(Intent paramIntent)
  {
    ContentResolver localContentResolver = getActivity().getContentResolver();
    Cursor localCursor = localContentResolver.query(paramIntent.getData(), null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
      {
        String str = localCursor.getString(localCursor.getColumnIndex("lookup"));
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("lookupKey", str);
        localContentValues.put("type", Integer.valueOf(0));
        localContentResolver.insert(this.a, localContentValues);
      }
      localCursor.close();
    }
  }

  private void a(Cursor paramCursor)
  {
    if (paramCursor.getCount() == 0)
    {
      getView().findViewById(2131165480).setVisibility(0);
      getView().findViewById(2131165389).setVisibility(8);
    }
    while (true)
    {
      return;
      getView().findViewById(2131165480).setVisibility(8);
      getView().findViewById(2131165389).setVisibility(0);
    }
  }

  private void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = com.avast.android.mobilesecurity.app.filter.core.d.a(paramString); ; str = com.avast.android.mobilesecurity.app.filter.core.d.a(paramString, false))
    {
      b(getActivity().getContentResolver(), str);
      return;
    }
  }

  private void b(ContentResolver paramContentResolver, String paramString)
  {
    if (CustomNumberDialog.a(paramString, true))
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("phone", paramString);
      localContentValues.put("type", Integer.valueOf(10));
      paramContentResolver.insert(this.a, localContentValues);
    }
  }

  private void b(Intent paramIntent)
  {
    ContentResolver localContentResolver = getActivity().getContentResolver();
    ContentValues localContentValues = new ContentValues();
    if (paramIntent.hasExtra("contact_uris"))
    {
      Iterator localIterator2 = paramIntent.getStringArrayListExtra("contact_uris").iterator();
      while (localIterator2.hasNext())
      {
        Cursor localCursor = localContentResolver.query(Uri.parse((String)localIterator2.next()), new String[] { "lookup" }, null, null, null);
        if (localCursor != null)
        {
          if (localCursor.moveToFirst())
          {
            localContentValues.put("lookupKey", localCursor.getString(localCursor.getColumnIndex("lookup")));
            localContentValues.put("type", Integer.valueOf(0));
            localContentResolver.insert(this.a, localContentValues);
          }
          localCursor.close();
        }
      }
    }
    if (paramIntent.hasExtra("numbers"))
    {
      Iterator localIterator1 = paramIntent.getStringArrayListExtra("numbers").iterator();
      while (localIterator1.hasNext())
        a(localContentResolver, (String)localIterator1.next());
    }
  }

  private void c()
  {
    new FilterContactsFragment.AddOperationDialog(this).show(getFragmentManager(), "dialog_add_operation");
  }

  private void c(Intent paramIntent)
  {
    ContentResolver localContentResolver = getActivity().getContentResolver();
    ContentValues localContentValues = new ContentValues();
    if (paramIntent.getData() != null)
    {
      Cursor localCursor = localContentResolver.query(paramIntent.getData(), new String[] { "lookup" }, null, null, null);
      if (localCursor != null)
      {
        if (localCursor.moveToFirst())
        {
          localContentValues.put("lookupKey", localCursor.getString(localCursor.getColumnIndex("lookup")));
          localContentValues.put("type", Integer.valueOf(0));
          localContentResolver.insert(this.a, localContentValues);
        }
        localCursor.close();
      }
    }
    while (true)
    {
      return;
      if (paramIntent.hasExtra("number"))
        a(localContentResolver, paramIntent.getStringExtra("number"));
    }
  }

  private com.avast.android.mobilesecurity.app.filter.core.e d()
  {
    long l = i.a(this.a);
    return com.avast.android.mobilesecurity.app.filter.core.d.a(getActivity(), l);
  }

  public void a(m paramm, Cursor paramCursor)
  {
    this.b.changeCursor(paramCursor);
    if (paramCursor != null)
      a(paramCursor);
  }

  public String f()
  {
    return "/ms/filter/group/contacts";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setChoiceMode(1);
    registerForContextMenu(getListView());
    ((s)ad.a(getActivity(), s.class)).a(2131165217, this.d);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ((BaseActivity)getActivity()).a(true);
    if ((paramInt2 == -1) && (paramIntent != null))
    {
      if (paramInt1 != 0)
        break label30;
      a(paramIntent);
    }
    while (true)
    {
      return;
      label30: if (paramInt1 == 1)
        b(paramIntent);
      else if (paramInt1 == 2)
        c(paramIntent);
    }
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
      a(localAdapterContextMenuInfo.position, localAdapterContextMenuInfo.id);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = new h(this, getActivity());
    this.c = new x(getActivity().getContentResolver(), null);
    setListAdapter(this.b);
    this.a = BaseActivity.a(getArguments()).getData();
    if (this.a == null)
      j();
    while (true)
    {
      return;
      getLoaderManager().initLoader(1, null, this);
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getActivity().getMenuInflater().inflate(2131755008, paramContextMenu);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new android.support.v4.a.f(getActivity(), this.a, null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903117, paramViewGroup, false);
    localViewGroup.findViewById(2131165481).setOnClickListener(new e(this));
    ((TextView)localViewGroup.findViewById(2131165275)).setText(d().c + ": " + getText(2131493534));
    localViewGroup.findViewById(2131165479).setOnClickListener(new f(this));
    return localViewGroup;
  }

  public void onDestroy()
  {
    super.onDestroy();
    ((s)ad.a(getActivity(), s.class)).b(2131165217, this.d);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    Cursor localCursor = (Cursor)this.b.getItem(paramInt);
    String str = localCursor.getString(localCursor.getColumnIndex("lookupKey"));
    if (str != null)
    {
      localIntent.setData(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str));
      getActivity().startActivity(localIntent);
    }
  }

  public void onLoaderReset(m paramm)
  {
    this.b.changeCursor(null);
  }

  public void onResume()
  {
    super.onResume();
    ((BaseActivity)getActivity()).a(false);
  }

  public void onStart()
  {
    super.onStart();
  }

  public void onStop()
  {
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.FilterContactsFragment
 * JD-Core Version:    0.6.2
 */