package com.tencent.qqpimsecure.uilib.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ContextMenuListMode;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.ContextMenuAdapter;
import java.util.ArrayList;
import java.util.List;

public class ContextMenuDialog extends Dialog
{
  private ListView bodyList;
  private View contentView;
  private int contextItemPosition;
  private ContextMenuAdapter contextMenuAdapter;
  private Context mContext;
  private ArrayList<ContextMenuModel> menuList;
  private ImageView titleIcon;
  private LinearLayout titleLayout;
  private TextView titleText;

  public ContextMenuDialog(Context paramContext)
  {
    super(paramContext, 2131492890);
    this.mContext = paramContext;
    this.contentView = LayoutInflater.from(this.mContext).inflate(2130903129, null);
    this.titleIcon = new ImageView(this.mContext);
    this.titleText = new TextView(this.mContext);
    this.titleLayout = ((LinearLayout)this.contentView.findViewById(2131230931));
    this.bodyList = ((ListView)this.contentView.findViewById(2131231059));
    this.bodyList.setPadding(0, 0, 0, 0);
    setIcon(2130838143);
    setTitle(2131427392);
  }

  public int getContextItemPosition()
  {
    return this.contextItemPosition;
  }

  public ContextMenuModel getItem(int paramInt)
  {
    if ((this.menuList == null) || (paramInt < 0) || (paramInt >= this.menuList.size()));
    for (ContextMenuModel localContextMenuModel = null; ; localContextMenuModel = (ContextMenuModel)this.menuList.get(paramInt))
      return localContextMenuModel;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new DisplayMetrics();
    int i = this.mContext.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = ((int)(0.9D * i));
    super.setContentView(this.contentView, localLayoutParams);
  }

  public void setContextItemPosition(int paramInt)
  {
    this.contextItemPosition = paramInt;
  }

  public void setDataAdapter(ArrayList<ContextMenuModel> paramArrayList)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      ArrayList localArrayList1 = new ArrayList();
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        ContextMenuListMode localContextMenuListMode = new ContextMenuListMode();
        localContextMenuListMode.setContextMenuName(((ContextMenuModel)paramArrayList.get(i)).name);
        localContextMenuListMode.setMarkType(((ContextMenuModel)paramArrayList.get(i)).markType);
        localArrayList1.add(localContextMenuListMode);
      }
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(new ListModel(localArrayList1, null, 1, false));
      this.contextMenuAdapter = new ContextMenuAdapter(this.mContext, localArrayList2);
      this.bodyList.setAdapter(this.contextMenuAdapter);
      ((ContextMenuAdapter)this.bodyList.getAdapter()).notifyDataSetChanged();
      this.menuList = paramArrayList;
    }
  }

  public void setIcon(int paramInt)
  {
    this.titleLayout.removeView(this.titleIcon);
    this.titleLayout.setVisibility(0);
    this.titleIcon.setImageResource(paramInt);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.titleLayout.removeView(this.titleIcon);
    this.titleLayout.addView(this.titleIcon, localLayoutParams);
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.bodyList.setOnItemClickListener(paramOnItemClickListener);
  }

  public void setTitle(int paramInt)
  {
    setTitle(this.mContext.getResources().getString(paramInt));
  }

  public void setTitle(String paramString)
  {
    this.titleLayout.setVisibility(0);
    this.titleText.setText(paramString);
    this.titleText.setTextColor(this.mContext.getResources().getColor(2131296282));
    this.titleText.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.titleLayout.removeView(this.titleText);
    this.titleLayout.addView(this.titleText, localLayoutParams);
  }

  public void show()
  {
    super.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog
 * JD-Core Version:    0.6.2
 */