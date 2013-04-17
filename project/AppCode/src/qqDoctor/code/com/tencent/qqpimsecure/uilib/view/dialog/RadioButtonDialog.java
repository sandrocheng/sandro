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
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.ui.adapter.RadioButtonAdapter;
import java.util.ArrayList;
import java.util.List;

public class RadioButtonDialog extends Dialog
{
  private ListView bodyList;
  private View contentView;
  private int contextItemPosition;
  private int[] exPosition;
  private LinearLayout footerLayout;
  private Context mContext;
  private ArrayList<RadioButtonMode> menuList;
  private RadioButtonAdapter radioButtonAdapter;
  private ImageView titleIcon;
  private LinearLayout titleLayout;
  private TextView titleText;

  public RadioButtonDialog(Context paramContext)
  {
    super(paramContext, 2131492890);
    this.mContext = paramContext;
    this.contentView = LayoutInflater.from(this.mContext).inflate(2130903129, null);
    this.titleIcon = new ImageView(this.mContext);
    this.titleText = new TextView(this.mContext);
    this.titleLayout = ((LinearLayout)this.contentView.findViewById(2131230931));
    this.bodyList = ((ListView)this.contentView.findViewById(2131231059));
    this.bodyList.setPadding(0, 0, 0, 0);
    this.footerLayout = ((LinearLayout)this.contentView.findViewById(2131230933));
    setIcon(2130838143);
    setTitle(2131427392);
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

  public AdapterView.OnItemClickListener getOnItemClickListener()
  {
    return this.bodyList.getOnItemClickListener();
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

  public void setDataAdapter(ArrayList<RadioButtonMode> paramArrayList, int paramInt)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      int i = 0;
      if (i < paramArrayList.size())
      {
        if (paramInt == i)
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
      this.radioButtonAdapter = new RadioButtonAdapter(this.mContext, localArrayList);
      this.bodyList.setAdapter(this.radioButtonAdapter);
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

  public void setFooterContextView(View paramView)
  {
    this.footerLayout.setVisibility(0);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    localLayoutParams.topMargin = 10;
    localLayoutParams.bottomMargin = 20;
    this.footerLayout.addView(paramView, localLayoutParams);
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
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog
 * JD-Core Version:    0.6.2
 */