package com.tencent.qqpimsecure.uilib.view.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import dv;
import java.util.List;

public class ListDialog extends AlertDialog
{
  private List<String> dataList = null;
  private ListView listView = null;
  private dv mCallback = null;
  private Context mContext = null;
  private int msgID = 0;
  private int width;
  private int xPos;
  private int yPos;

  public ListDialog(Context paramContext, int paramInt1, int paramInt2, int paramInt3, List<String> paramList, dv paramdv)
  {
    super(paramContext);
    this.dataList = paramList;
    this.mContext = paramContext;
    this.xPos = paramInt1;
    this.yPos = paramInt2;
    this.width = paramInt3;
    this.mCallback = paramdv;
  }

  private boolean isOutOfBounds(MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    View localView = getWindow().getDecorView();
    localView.invalidate();
    if ((i < 0) || (j < 0) || (i > localView.getWidth()) || (j > localView.getHeight()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MyListAdapter localMyListAdapter = new MyListAdapter(this.dataList);
    this.listView = new ListView(this.mContext);
    this.listView.setDividerHeight(0);
    getWindow().setContentView(this.listView);
    this.listView.setAdapter(localMyListAdapter);
    this.listView.setBackgroundColor(2131296331);
    this.listView.setSelector(2131296331);
    this.listView.setOnItemClickListener(new ListDialog.1(this));
    getWindow().setLayout(-2, -2);
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(this.width, -2, this.xPos, this.yPos, 2, 0, -1);
    localLayoutParams.gravity = 51;
    getWindow().setAttributes(localLayoutParams);
    getWindow().setBackgroundDrawableResource(2131296329);
    setCanceledOnTouchOutside(true);
  }

  protected void onStart()
  {
    super.onStart();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (isOutOfBounds(paramMotionEvent)))
      cancel();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  class MyListAdapter extends BaseAdapter
  {
    private List<String> data;

    public MyListAdapter()
    {
      Object localObject;
      this.data = localObject;
    }

    public int getCount()
    {
      if (this.data != null);
      for (int i = this.data.size(); ; i = 0)
        return i;
    }

    public Object getItem(int paramInt)
    {
      if ((this.data != null) && (paramInt < this.data.size()));
      for (Object localObject = this.data.get(paramInt); ; localObject = null)
        return localObject;
    }

    public long getItemId(int paramInt)
    {
      return 0L;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView1 = ListDialog.this.getLayoutInflater().inflate(2130903280, paramViewGroup, false);
      DataHolder localDataHolder1 = (DataHolder)localView1.getTag();
      DataHolder localDataHolder2;
      if (localDataHolder1 == null)
      {
        localDataHolder2 = new DataHolder(null);
        localDataHolder2.tagAccount = ((TextView)localView1.findViewById(2131231511));
        localView1.setTag(localDataHolder2);
      }
      try
      {
        String str = (String)this.data.get(paramInt);
        if (paramInt == 0)
          localDataHolder2.tagAccount.setBackgroundResource(2130838051);
        while (true)
        {
          localDataHolder2.tagAccount.setText(str);
          localView2 = localView1;
          break;
          if (paramInt == -1 + this.data.size())
            localDataHolder2.tagAccount.setBackgroundResource(2130838045);
          else
            localDataHolder2.tagAccount.setBackgroundResource(2130838048);
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          localView2 = null;
          break;
          localDataHolder2 = localDataHolder1;
        }
        return localView2;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        while (true)
          View localView2 = null;
      }
    }

    class DataHolder
    {
      TextView tagAccount;

      private DataHolder()
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.ListDialog
 * JD-Core Version:    0.6.2
 */