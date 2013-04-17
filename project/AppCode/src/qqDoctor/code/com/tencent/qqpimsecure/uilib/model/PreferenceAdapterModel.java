package com.tencent.qqpimsecure.uilib.model;

import android.graphics.drawable.Drawable;

public class PreferenceAdapterModel
{
  private String buttonText;
  private boolean canExpand = false;
  private int checkBoxType = 0;
  private String[] entries;
  private String[] entryValues;
  private int[] icons;
  private boolean isChecked;
  private boolean isClickCheckBox;
  private boolean isEnabled = true;
  private boolean isExpand;
  private boolean isOnCheckedNoClick;
  private boolean isShowLine;
  private String key;
  private byte mTagKey;
  private byte preferenceViewType;
  private int selectItemIndex;
  private String summary;
  private int titlBG_ID;
  private String title;
  private Drawable titleIcon;

  public boolean canExpand()
  {
    return this.canExpand;
  }

  public String getButtonText()
  {
    return this.buttonText;
  }

  public int getCheckBoxType()
  {
    return this.checkBoxType;
  }

  public String[] getEntries()
  {
    return this.entries;
  }

  public String getEntry()
  {
    if ((this.entries == null) || (this.selectItemIndex >= this.entries.length) || (this.selectItemIndex < 0));
    for (String str = ""; ; str = this.entries[this.selectItemIndex])
      return str;
  }

  public String getEntryValue()
  {
    if ((this.entryValues == null) || (this.selectItemIndex >= this.entryValues.length) || (this.selectItemIndex < 0));
    for (String str = ""; ; str = this.entryValues[this.selectItemIndex])
      return str;
  }

  public String[] getEntryValues()
  {
    return this.entryValues;
  }

  public int getIcon()
  {
    if ((this.icons == null) || (this.selectItemIndex >= this.icons.length) || (this.selectItemIndex < 0));
    for (int i = -1; ; i = this.icons[this.selectItemIndex])
      return i;
  }

  public int[] getIcons()
  {
    return this.icons;
  }

  public String getKey()
  {
    return this.key;
  }

  public byte getPreferenceViewType()
  {
    return this.preferenceViewType;
  }

  public int getSelectItemIndex()
  {
    return this.selectItemIndex;
  }

  public String getSummary()
  {
    return this.summary;
  }

  public byte getTagKey()
  {
    return this.mTagKey;
  }

  public int getTitlBG_ID()
  {
    return this.titlBG_ID;
  }

  public String getTitle()
  {
    return this.title;
  }

  public Drawable getTitleIcon()
  {
    return this.titleIcon;
  }

  public boolean isChecked()
  {
    return this.isChecked;
  }

  public boolean isClickCheckBox()
  {
    return this.isClickCheckBox;
  }

  public boolean isEnabled()
  {
    return this.isEnabled;
  }

  public boolean isExpand()
  {
    return this.isExpand;
  }

  public boolean isOnCheckedNoClick()
  {
    return this.isOnCheckedNoClick;
  }

  public boolean isShowLine()
  {
    return this.isShowLine;
  }

  public void setButtonText(String paramString)
  {
    this.buttonText = paramString;
  }

  public void setCanExpand(boolean paramBoolean)
  {
    this.canExpand = paramBoolean;
  }

  public void setCheckBoxType(int paramInt)
  {
    this.checkBoxType = paramInt;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.isChecked = paramBoolean;
  }

  public void setClickCheckBox(boolean paramBoolean)
  {
    this.isClickCheckBox = paramBoolean;
  }

  public void setEnabled(boolean paramBoolean)
  {
    this.isEnabled = paramBoolean;
  }

  public void setEntries(String[] paramArrayOfString)
  {
    this.entries = paramArrayOfString;
  }

  public void setEntryValues(String[] paramArrayOfString)
  {
    this.entryValues = paramArrayOfString;
  }

  public void setIcons(int[] paramArrayOfInt)
  {
    this.icons = paramArrayOfInt;
  }

  public void setIsExpand(boolean paramBoolean)
  {
    this.isExpand = paramBoolean;
  }

  public void setKey(String paramString)
  {
    this.key = paramString;
  }

  public void setOnCheckedNoClick(boolean paramBoolean)
  {
    this.isOnCheckedNoClick = paramBoolean;
  }

  public void setPreferenceViewType(byte paramByte)
  {
    this.preferenceViewType = paramByte;
  }

  public void setSelectItemIndex(int paramInt)
  {
    this.selectItemIndex = paramInt;
  }

  public void setShowLine(boolean paramBoolean)
  {
    this.isShowLine = paramBoolean;
  }

  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }

  public void setTagKey(byte paramByte)
  {
    this.mTagKey = paramByte;
  }

  public void setTitlBG_ID(int paramInt)
  {
    this.titlBG_ID = paramInt;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTitleIcon(Drawable paramDrawable)
  {
    this.titleIcon = paramDrawable;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel
 * JD-Core Version:    0.6.2
 */