package com.ijinshan.kinghelper.firewall;

import android.app.ExpandableListActivity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.af;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FirewallCommonServiceQueryActivity extends ExpandableListActivity
  implements ExpandableListView.OnChildClickListener
{
  private static String a = "commonnum.db";
  private static String b = "classlist";
  private static String c = "name";
  private static String d = "idx";
  private static String e = "table";
  private static String f = "_id";
  private static String g = "number";
  private static String h = "create table if not exists classlist( name VARCHAR(500),idx INTEGER )";
  private SQLiteDatabase i = null;
  private Cursor j = null;
  private List k;
  private s l = null;

  private void c()
  {
    this.i = SQLiteDatabase.openOrCreateDatabase(new File(getFilesDir().getAbsolutePath(), a).getPath(), null);
    this.i.execSQL(h);
  }

  private void d()
  {
    this.j = this.i.query(b, null, null, null, null, null, null);
    this.k = new ArrayList();
    if (this.j.moveToFirst())
      do
      {
        String str = e + this.j.getInt(this.j.getColumnIndex(d));
        Cursor localCursor = this.i.query(str, null, null, null, null, null, f);
        this.k.add(localCursor);
      }
      while (this.j.moveToNext());
  }

  public boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    Cursor localCursor = (Cursor)this.k.get(paramInt1);
    localCursor.moveToPosition(paramInt2);
    af.d(this, localCursor.getString(localCursor.getColumnIndex(g)));
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903040);
    ((TextView)findViewById(2131230727)).setText(2131427349);
    if (paramBundle == null)
      a.i(this, "telman_cmnquery");
    this.i = SQLiteDatabase.openOrCreateDatabase(new File(getFilesDir().getAbsolutePath(), a).getPath(), null);
    this.i.execSQL(h);
    d();
    this.l = new s(this, this.j, this.k, this);
    getExpandableListView().setAdapter(this.l);
    getExpandableListView().setOnChildClickListener(this);
    getExpandableListView().setSelector(2130837790);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallCommonServiceQueryActivity
 * JD-Core Version:    0.6.2
 */