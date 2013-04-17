package com.tencent.qqpimsecure.uilib.view.dialog;

import aih;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.ArrayList;
import java.util.List;

public class MultiSelectDialog extends Dialog
{
  private ListView bodyList;
  private LinearLayout buttonViewGroup;
  private View contentView;
  private int contextItemPosition;
  private int[] exPosition;
  private Context mContext;
  private ArrayList<RadioButtonMode> menuList;
  private aih multiSelectDialogAdapter;
  private ButtonView negativeButton;
  private ButtonView neutralButton;
  private ButtonView positiveButton;
  private LinearLayout space_bar;
  private ImageView titleIcon;
  private LinearLayout titleLayout;
  private TextView titleText;

  public MultiSelectDialog(Context paramContext)
  {
    super(paramContext, 2131492890);
    this.mContext = paramContext;
    this.contentView = LayoutInflater.from(this.mContext).inflate(2130903175, null);
    this.titleIcon = new ImageView(this.mContext);
    this.titleText = new TextView(this.mContext);
    this.titleLayout = ((LinearLayout)this.contentView.findViewById(2131230985));
    this.bodyList = ((ListView)this.contentView.findViewById(2131231059));
    this.buttonViewGroup = ((LinearLayout)this.contentView.findViewById(2131230989));
    this.space_bar = ((LinearLayout)this.contentView.findViewById(2131230753));
    setIcon(2130838143);
    setTitle(2131427392);
    this.bodyList.setPadding(0, 0, 0, 0);
    this.bodyList.setOnItemClickListener(new MultiSelectDialog.1(this));
  }

  public boolean[] getCheckStationArray()
  {
    boolean[] arrayOfBoolean = new boolean[this.multiSelectDialogAdapter.getDataList().size()];
    for (int i = 0; i < arrayOfBoolean.length; i++)
      arrayOfBoolean[i] = ((RadioButtonMode)this.multiSelectDialogAdapter.getDataList().get(i)).isSelected();
    return arrayOfBoolean;
  }

  public int getContextItemPosition()
  {
    return this.contextItemPosition;
  }

  public int[] getEXContextItemPosition()
  {
    return this.exPosition;
  }

  public RadioButtonMode getItem(int paramInt)
  {
    if ((this.menuList == null) || (paramInt < 0) || (paramInt >= this.menuList.size()));
    for (RadioButtonMode localRadioButtonMode = null; ; localRadioButtonMode = (RadioButtonMode)this.menuList.get(paramInt))
      return localRadioButtonMode;
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

  public void setDataAdapter(ArrayList<RadioButtonMode> paramArrayList, boolean[] paramArrayOfBoolean)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      int i = 0;
      if (i < paramArrayList.size())
      {
        if (paramArrayOfBoolean[i] != 0)
          ((RadioButtonMode)paramArrayList.get(i)).setSelected(true);
        while (true)
        {
          i++;
          break;
          ((RadioButtonMode)paramArrayList.get(i)).setSelected(false);
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(paramArrayList, null, 1, false));
      this.multiSelectDialogAdapter = new aih(this.mContext, localArrayList);
      this.bodyList.setAdapter(this.multiSelectDialogAdapter);
      ((BaseAdapter)this.bodyList.getAdapter()).notifyDataSetChanged();
      this.menuList = paramArrayList;
    }
  }

  public void setEXContextItemPosition(int paramInt1, int paramInt2)
  {
    if (this.exPosition == null)
      this.exPosition = new int[2];
    this.exPosition[0] = paramInt1;
    this.exPosition[1] = paramInt2;
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

  public void setNegativeButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.negativeButton = new ButtonView(this.mContext, paramInt2);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.negativeButton.setText(this.mContext.getResources().getString(paramInt1));
    this.negativeButton.setOnClickListener(paramOnClickListener);
    this.negativeButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.gravity = 16;
    this.buttonViewGroup.removeView(this.negativeButton);
    this.buttonViewGroup.addView(this.negativeButton, localLayoutParams);
  }

  public void setNeutralButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.neutralButton = new ButtonView(this.mContext, paramInt2);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.neutralButton.setText(this.mContext.getResources().getString(paramInt1));
    this.neutralButton.setOnClickListener(paramOnClickListener);
    this.neutralButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.gravity = 16;
    this.buttonViewGroup.removeView(this.neutralButton);
    this.buttonViewGroup.addView(this.neutralButton, localLayoutParams);
  }

  public void setPositiveButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    this.positiveButton = new ButtonView(this.mContext, paramInt2);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.positiveButton.setText(this.mContext.getResources().getString(paramInt1));
    this.positiveButton.setOnClickListener(paramOnClickListener);
    this.positiveButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    this.buttonViewGroup.removeView(this.positiveButton);
    this.buttonViewGroup.addView(this.positiveButton, localLayoutParams);
  }

  public void setTitle(int paramInt)
  {
    setTitle(this.mContext.getResources().getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.titleLayout.setVisibility(0);
    this.titleText.setText(paramCharSequence);
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
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.MultiSelectDialog
 * JD-Core Version:    0.6.2
 */