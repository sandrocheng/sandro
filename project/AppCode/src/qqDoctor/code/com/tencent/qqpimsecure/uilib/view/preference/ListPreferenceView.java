package com.tencent.qqpimsecure.uilib.view.preference;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

public class ListPreferenceView extends PreferenceView
{
  private RadioButtonDialog dialog;
  private int itemSelectIndex;
  private Activity mActivity;
  private String[] mEntries;
  private String[] mEntryValues;
  private int[] mIcons;
  protected OnListPreferenceChangeListener preferenceChangeListener;

  public ListPreferenceView(Activity paramActivity, Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
    this.mActivity = paramActivity;
  }

  public ListPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  private void showListDialog()
  {
    if ((this.mEntries == null) && (this.mIcons == null));
    ArrayList localArrayList;
    do
    {
      return;
      if (this.mEntries == null);
      for (int i = this.mIcons.length; ; i = this.mEntries.length)
      {
        localArrayList = new ArrayList();
        for (int j = 0; j < i; j++)
        {
          RadioButtonMode localRadioButtonMode = new RadioButtonMode();
          if (this.mEntries != null)
            localRadioButtonMode.setRadioButtonName(this.mEntries[j]);
          if (this.mIcons != null)
            localRadioButtonMode.setRadioButtonImageId(this.mIcons[j]);
          localRadioButtonMode.setRadioEventCode(this.mEntryValues[j]);
          localArrayList.add(localRadioButtonMode);
        }
      }
    }
    while ((this.dialog != null) && (this.dialog.isShowing()));
    if (this.mActivity != null)
    {
      this.dialog = new RadioButtonDialog(this.mActivity);
      label160: this.dialog.setDataAdapter(localArrayList, this.itemSelectIndex);
      if ((this.titleView == null) || (this.titleView.getText() == null))
        break label246;
      this.dialog.setTitle(this.titleView.getText());
    }
    while (true)
    {
      this.dialog.setOnItemClickListener(new ListPreferenceView.1(this));
      this.dialog.show();
      break;
      this.dialog = new RadioButtonDialog(this.context);
      break label160;
      label246: this.dialog.setTitle(getResources().getString(2131428602));
    }
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903217, null, false);
  }

  public void doClickEvent()
  {
    if (isEnabled())
      showListDialog();
  }

  public String[] getEntries()
  {
    return this.mEntries;
  }

  public String getEntry()
  {
    if ((this.mEntries == null) || (this.itemSelectIndex >= this.mEntries.length) || (this.itemSelectIndex < 0));
    for (String str = ""; ; str = this.mEntries[this.itemSelectIndex])
      return str;
  }

  public String getEntryValue()
  {
    if ((this.mEntryValues == null) || (this.itemSelectIndex >= this.mEntryValues.length) || (this.itemSelectIndex < 0));
    for (String str = ""; ; str = this.mEntryValues[this.itemSelectIndex])
      return str;
  }

  public int getIcon()
  {
    if ((this.mIcons == null) || (this.itemSelectIndex >= this.mIcons.length) || (this.itemSelectIndex < 0));
    for (int i = -1; ; i = this.mIcons[this.itemSelectIndex])
      return i;
  }

  public int[] getIcons()
  {
    return this.mIcons;
  }

  public int getItemSelectIndex()
  {
    return this.itemSelectIndex;
  }

  public void onBindView(View paramView)
  {
    super.onBindView(paramView);
  }

  public void setEntries(String[] paramArrayOfString)
  {
    this.mEntries = paramArrayOfString;
  }

  public void setEntryValues(String[] paramArrayOfString)
  {
    this.mEntryValues = paramArrayOfString;
  }

  public void setIcons(int[] paramArrayOfInt)
  {
    this.mIcons = paramArrayOfInt;
  }

  public void setItemSelectIndex(int paramInt)
  {
    this.itemSelectIndex = paramInt;
  }

  public void setOnPreferenceChangeListener(OnListPreferenceChangeListener paramOnListPreferenceChangeListener)
  {
    this.preferenceChangeListener = paramOnListPreferenceChangeListener;
  }

  public static abstract interface OnListPreferenceChangeListener
  {
    public abstract boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView
 * JD-Core Version:    0.6.2
 */