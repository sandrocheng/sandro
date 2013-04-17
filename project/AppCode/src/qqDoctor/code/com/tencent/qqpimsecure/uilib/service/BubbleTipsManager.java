package com.tencent.qqpimsecure.uilib.service;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class BubbleTipsManager
{
  public static final byte BubbleType_CountTopButton = 2;
  public static final byte BubbleType_LongPressed = 3;
  public static final byte BubbleType_Other = 5;
  public static final byte BubbleType_Setting = 4;
  public static final byte BubbleType_TopButton = 1;
  public static final byte Direction_Down_Bubble = 2;
  public static final byte Direction_Frame_Bubble = 3;
  public static final byte Direction_Up_Bubble = 1;
  private final String BUBBLE_DATA = "bubble_data";
  private final String BUBBLE_DATA_PRE = "bubble_data_pre";
  private final String DAEDPARENT_KEY_LIST = "dead_parent_key_list";
  private final String LONGPRESSED_TIMES = "long_pressed_times";
  private final int POP_SHOW_TIME = 1;
  private final String TOPBUTTON_TIMES = "top_button_times";
  private View anchorView;
  private ArrayList<BubbleModel> bubbleModelList;
  private int bubbleOffX;
  private int bubbleOffY;
  private TextView bubbleTextView;
  private View bubbleView;
  private int countTopButtonTimes;
  private ArrayList<String> deadParentKeyList;
  private SharedPreferences.Editor editor;
  private final String groupStr = ",";
  public Handler handler = new BubbleTipsManager.4(this);
  private boolean isShowDone;
  private int longPressedTimes;
  private Context mContext;
  private PopupWindow pop;
  private int popShowTime = 6;
  private final int popupViewHeight = 60;
  private final int popupWidth = 150;
  private int secondCount;
  private SharedPreferences setting;
  private int settingTimes;
  private final String subStr = "&";
  public Timer timer;
  private int topButtonTimes;
  private final int totalBubbleTypeTimes = 2;

  public BubbleTipsManager(Context paramContext)
  {
    this.mContext = paramContext;
    this.setting = this.mContext.getSharedPreferences("bubble_data_pre", 0);
    this.editor = this.setting.edit();
    this.bubbleModelList = new ArrayList();
    this.deadParentKeyList = new ArrayList();
    initBubbleData();
    this.bubbleView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903122, null);
    this.bubbleTextView = ((TextView)this.bubbleView.findViewById(2131230909));
    this.pop = new PopupWindow(this.mContext);
    this.pop.setWidth(-2);
    this.pop.setHeight(-2);
    this.pop.setContentView(this.bubbleView);
    this.pop.setTouchable(false);
    this.pop.setBackgroundDrawable(new BitmapDrawable());
    this.pop.setOnDismissListener(new BubbleTipsManager.1(this));
    this.pop.setOutsideTouchable(true);
  }

  private void countBubbleType(byte paramByte)
  {
    switch (paramByte)
    {
    case 2:
    default:
    case 1:
    case 3:
    }
    while (true)
    {
      return;
      this.topButtonTimes = (1 + this.topButtonTimes);
      new StringBuilder("BubbleTipsManager countBubbleType topButtonTimes ").append(this.topButtonTimes).toString();
      continue;
      this.longPressedTimes = (1 + this.longPressedTimes);
    }
  }

  private void dismissPOP()
  {
    if ((this.pop != null) && (this.pop.isShowing()))
    {
      this.secondCount = 0;
      View localView = this.bubbleView;
      Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968583);
      localAnimation.setAnimationListener(new BubbleTipsManager.3(this));
      localView.startAnimation(localAnimation);
    }
  }

  private ArrayList<BubbleModel> getBubbleData()
  {
    return getBubbleDataListArray(this.setting.getString("bubble_data", null));
  }

  private ArrayList<BubbleModel> getBubbleDataListArray(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    new StringBuilder("BubbleTipsManager getBubbleDataListArray bubbleDataStr ").append(paramString).toString();
    if ((paramString == null) || (paramString.equals("")));
    while (true)
    {
      return localArrayList;
      int i = paramString.indexOf(",");
      while (i != -1)
      {
        BubbleModel localBubbleModel = new BubbleModel();
        String str1 = paramString.substring(0, i);
        new StringBuilder("BubbleTipsManager getBubbleDataListArray subBubbleStr ").append(str1).toString();
        int j = str1.indexOf("&");
        String str2 = str1;
        int k = j;
        int m = 0;
        while (k != -1)
        {
          if (m == 0)
          {
            localBubbleModel.parentKey = str2.substring(0, k);
            new StringBuilder("BubbleTipsManager getBubbleDataListArray parentKey ").append(localBubbleModel.parentKey).toString();
          }
          while (true)
          {
            if (k >= -1 + str2.length())
              break label351;
            str2 = str2.substring(k + 1);
            k = str2.indexOf("&");
            m++;
            break;
            if (m == 1)
            {
              localBubbleModel.lastIndex = Integer.parseInt(str2.substring(0, k));
              new StringBuilder("BubbleTipsManager getBubbleDataListArray lastIndex ").append(localBubbleModel.lastIndex).toString();
            }
            else if (m % 2 == 0)
            {
              localBubbleModel.bubbleKeyList.add(str2.substring(0, k));
              new StringBuilder("BubbleTipsManager getBubbleDataListArray key ").append(str2.substring(0, k)).toString();
            }
            else
            {
              localBubbleModel.bubbleTimesList.add(Integer.valueOf(Integer.parseInt(str2.substring(0, k))));
              new StringBuilder("BubbleTipsManager getBubbleDataListArray times ").append(Integer.parseInt(str2.substring(0, k))).toString();
            }
          }
          label351: k = -1;
        }
        int n = localBubbleModel.bubbleKeyList.size();
        new StringBuilder("BubbleTipsManager getBubbleDataListArray size ").append(n).toString();
        for (int i1 = 0; i1 < n; i1++)
        {
          localBubbleModel.bubbleMessageList.add(null);
          localBubbleModel.bubbleTypeList.add(null);
          localBubbleModel.bubbleDirectionList.add(null);
          localBubbleModel.bubbleOffXList.add(null);
          localBubbleModel.bubbleOffYList.add(null);
          localBubbleModel.bubbleViewList.add(null);
        }
        localArrayList.add(localBubbleModel);
        if (i < -1 + paramString.length())
        {
          paramString = paramString.substring(i + 1);
          i = paramString.indexOf(",");
        }
        else
        {
          i = -1;
        }
      }
    }
  }

  private String getBubbleDataStr(ArrayList<BubbleModel> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramArrayList.size() == 0);
    for (String str = null; ; str = localStringBuffer.toString())
    {
      return str;
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        BubbleModel localBubbleModel = (BubbleModel)paramArrayList.get(i);
        localStringBuffer.append(localBubbleModel.parentKey);
        localStringBuffer.append("&");
        localStringBuffer.append(localBubbleModel.lastIndex);
        localStringBuffer.append("&");
        for (int j = 0; j < localBubbleModel.bubbleKeyList.size(); j++)
        {
          localStringBuffer.append((String)localBubbleModel.bubbleKeyList.get(j));
          localStringBuffer.append("&");
          localStringBuffer.append(localBubbleModel.bubbleTimesList.get(j));
          localStringBuffer.append("&");
        }
        localStringBuffer.append(",");
      }
      new StringBuilder(" getMonthUsedStr ").append(localStringBuffer.toString()).toString();
    }
  }

  private ArrayList<String> getDeadParentKeyKist()
  {
    String str = this.setting.getString("dead_parent_key_list", null);
    if ((str == null) || (str.equals("")));
    for (ArrayList localArrayList = this.deadParentKeyList; ; localArrayList = this.deadParentKeyList)
    {
      return localArrayList;
      new StringBuilder("getMonthUsedArray deadParentStr ").append(str).toString();
      int i = str.indexOf("&");
      while (i != -1)
      {
        this.deadParentKeyList.add(str.substring(0, i));
        if (i < -1 + str.length())
        {
          str = str.substring(i + 1);
          i = str.indexOf("&");
        }
        else
        {
          i = -1;
        }
      }
    }
  }

  private int getLongPressedTimes()
  {
    return this.setting.getInt("long_pressed_times", 0);
  }

  private PopupWindow getNextBubble(BubbleModel paramBubbleModel)
  {
    do
    {
      paramBubbleModel.currentIndex = (1 + paramBubbleModel.lastIndex);
      if (paramBubbleModel.currentIndex >= paramBubbleModel.bubbleTimesList.size())
        paramBubbleModel.currentIndex = 0;
      if (!isBubbleTypeOut(((Byte)paramBubbleModel.bubbleTypeList.get(paramBubbleModel.currentIndex)).byteValue()))
        break;
      paramBubbleModel.lastIndex = paramBubbleModel.currentIndex;
      paramBubbleModel.bubbleTimesList.set(paramBubbleModel.currentIndex, Integer.valueOf(1 + ((Integer)paramBubbleModel.bubbleTimesList.get(paramBubbleModel.currentIndex)).intValue()));
    }
    while ((paramBubbleModel.currentIndex != -1 + paramBubbleModel.bubbleTimesList.size()) || (((Integer)paramBubbleModel.bubbleTimesList.get(paramBubbleModel.currentIndex)).intValue() < 2));
    this.deadParentKeyList.add(paramBubbleModel.parentKey);
    for (PopupWindow localPopupWindow = null; ; localPopupWindow = null)
    {
      return localPopupWindow;
      if (((Integer)paramBubbleModel.bubbleTimesList.get(paramBubbleModel.currentIndex)).intValue() < 2)
        break;
      this.deadParentKeyList.add(paramBubbleModel.parentKey);
    }
    paramBubbleModel.lastIndex = paramBubbleModel.currentIndex;
    paramBubbleModel.bubbleTimesList.set(paramBubbleModel.currentIndex, Integer.valueOf(1 + ((Integer)paramBubbleModel.bubbleTimesList.get(paramBubbleModel.currentIndex)).intValue()));
    int i = ((Byte)paramBubbleModel.bubbleDirectionList.get(paramBubbleModel.currentIndex)).byteValue();
    this.anchorView = ((View)paramBubbleModel.bubbleViewList.get(paramBubbleModel.currentIndex));
    int j;
    switch (i)
    {
    default:
      j = 2130837570;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.bubbleView.setBackgroundResource(j);
      this.bubbleTextView.setText((CharSequence)paramBubbleModel.bubbleMessageList.get(paramBubbleModel.currentIndex));
      saveBubbleData();
      this.pop.setContentView(this.bubbleView);
      localPopupWindow = this.pop;
      break;
      j = 2130837571;
      continue;
      j = 2130837570;
      continue;
      j = 2130837850;
    }
  }

  private int getTopButtonTimes()
  {
    return this.setting.getInt("top_button_times", 0);
  }

  private void initBubbleData()
  {
    this.topButtonTimes = getTopButtonTimes();
    new StringBuilder("BubbleTipsManager getTopButtonTimes topButtonTimes ").append(this.topButtonTimes).toString();
    this.longPressedTimes = getLongPressedTimes();
    new StringBuilder("BubbleTipsManager getLongPressedTimes longPressedTimes ").append(this.longPressedTimes).toString();
    this.bubbleModelList = getBubbleData();
    this.deadParentKeyList = getDeadParentKeyKist();
  }

  private boolean isBubbleTypeOut(byte paramByte)
  {
    boolean bool = true;
    switch (paramByte)
    {
    default:
      bool = false;
    case 1:
    case 3:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      return bool;
      new StringBuilder("2 BubbleTipsManager isBubbleTypeOut topButtonTimes ").append(this.topButtonTimes).toString();
      if (this.topButtonTimes < 2)
      {
        bool = false;
        continue;
        if (this.longPressedTimes < 2)
        {
          bool = false;
          continue;
          new StringBuilder("2 BubbleTipsManager isBubbleTypeOut countTopButtonTimes ").append(this.countTopButtonTimes).toString();
          if (this.countTopButtonTimes < 2)
          {
            bool = false;
            continue;
            new StringBuilder("2 BubbleTipsManager isBubbleTypeOut settingTimes ").append(this.settingTimes).toString();
            if (this.settingTimes < 2)
            {
              bool = false;
              continue;
              bool = false;
            }
          }
        }
      }
    }
  }

  private void saveBubbleData()
  {
    setTopButtonTimes(this.topButtonTimes);
    setLongPressedTimes(this.longPressedTimes);
    ArrayList localArrayList = this.bubbleModelList;
    this.editor.putString("bubble_data", getBubbleDataStr(localArrayList)).commit();
    setDeadParentKeyKist(this.deadParentKeyList);
  }

  private void setBubbleData(ArrayList<BubbleModel> paramArrayList)
  {
    this.editor.putString("bubble_data", getBubbleDataStr(paramArrayList)).commit();
  }

  private void setDeadParentKeyKist(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramArrayList.size() == 0)
      this.editor.putString("dead_parent_key_list", "").commit();
    while (true)
    {
      return;
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        localStringBuffer.append((String)paramArrayList.get(i));
        localStringBuffer.append("&");
      }
      new StringBuilder(" setDeadParentKeyKist ").append(localStringBuffer.toString()).toString();
      this.editor.putString("dead_parent_key_list", localStringBuffer.toString()).commit();
    }
  }

  private void setLongPressedTimes(int paramInt)
  {
    new StringBuilder("BubbleTipsManager setLongPressedTimes longPressedTimes ").append(paramInt).toString();
    this.editor.putInt("long_pressed_times", paramInt).commit();
  }

  private void setTopButtonTimes(int paramInt)
  {
    new StringBuilder("BubbleTipsManager setTopButtonTimes topButtonTimes ").append(paramInt).toString();
    this.editor.putInt("top_button_times", paramInt).commit();
  }

  private void startDismissAnimation(View paramView)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968583);
    localAnimation.setAnimationListener(new BubbleTipsManager.3(this));
    paramView.startAnimation(localAnimation);
  }

  private void startShowAnimation(View paramView)
  {
    paramView.startAnimation(AnimationUtils.loadAnimation(this.mContext, 2130968582));
  }

  public void addByRule(String paramString1, String paramString2, View paramView, byte paramByte1, byte paramByte2, int paramInt1, int paramInt2, String paramString3)
  {
    int i = 0;
    BubbleModel localBubbleModel2;
    int j;
    if (i < this.bubbleModelList.size())
    {
      localBubbleModel2 = (BubbleModel)this.bubbleModelList.get(i);
      if (localBubbleModel2.parentKey.equals(paramString1))
      {
        j = 0;
        label44: if (j < localBubbleModel2.bubbleKeyList.size())
          if (((String)localBubbleModel2.bubbleKeyList.get(j)).equals(paramString2))
          {
            new StringBuilder("BubbleTipsManager tempBubbleModel.bubbleMessageList.size ").append(localBubbleModel2.bubbleMessageList.size()).toString();
            localBubbleModel2.bubbleMessageList.set(j, paramString3);
            localBubbleModel2.bubbleTypeList.set(j, Byte.valueOf(paramByte1));
            localBubbleModel2.bubbleDirectionList.set(j, Byte.valueOf(paramByte2));
            localBubbleModel2.bubbleOffXList.set(j, Integer.valueOf(paramInt1));
            localBubbleModel2.bubbleOffYList.set(j, Integer.valueOf(paramInt2));
            localBubbleModel2.bubbleViewList.set(j, paramView);
          }
      }
    }
    while (true)
    {
      return;
      j++;
      break label44;
      localBubbleModel2.bubbleViewList.add(paramView);
      localBubbleModel2.bubbleKeyList.add(paramString2);
      localBubbleModel2.bubbleMessageList.add(paramString3);
      localBubbleModel2.bubbleDirectionList.add(Byte.valueOf(paramByte2));
      localBubbleModel2.bubbleTypeList.add(Byte.valueOf(paramByte1));
      localBubbleModel2.bubbleTimesList.add(Integer.valueOf(0));
      localBubbleModel2.bubbleOffXList.add(Integer.valueOf(paramInt1));
      localBubbleModel2.bubbleOffYList.add(Integer.valueOf(paramInt2));
      saveBubbleData();
      continue;
      i++;
      break;
      BubbleModel localBubbleModel1 = new BubbleModel();
      localBubbleModel1.parentKey = paramString1;
      localBubbleModel1.bubbleViewList.add(paramView);
      localBubbleModel1.bubbleKeyList.add(paramString2);
      localBubbleModel1.bubbleMessageList.add(paramString3);
      localBubbleModel1.bubbleDirectionList.add(Byte.valueOf(paramByte2));
      localBubbleModel1.bubbleTypeList.add(Byte.valueOf(paramByte1));
      localBubbleModel1.bubbleTimesList.add(Integer.valueOf(0));
      localBubbleModel1.bubbleOffXList.add(Integer.valueOf(paramInt1));
      localBubbleModel1.bubbleOffYList.add(Integer.valueOf(paramInt2));
      this.bubbleModelList.add(localBubbleModel1);
      saveBubbleData();
    }
  }

  public void dismissPOPWithoutAnimation()
  {
    if ((this.pop != null) && (this.pop.isShowing()))
    {
      this.secondCount = 0;
      this.pop.dismiss();
      this.pop.setFocusable(false);
    }
  }

  public void showByRule(String paramString, int paramInt)
  {
    new StringBuilder("BubbleTipsManager showByRule parentKey ").append(paramString).toString();
    if (this.pop.isShowing());
    while (true)
    {
      return;
      this.popShowTime = paramInt;
      ((Activity)this.mContext).runOnUiThread(new BubbleTipsManager.2(this, paramString));
    }
  }

  class BubbleModel
  {
    ArrayList<Byte> bubbleDirectionList = new ArrayList();
    ArrayList<String> bubbleKeyList = new ArrayList();
    ArrayList<String> bubbleMessageList = new ArrayList();
    ArrayList<Integer> bubbleOffXList = new ArrayList();
    ArrayList<Integer> bubbleOffYList = new ArrayList();
    ArrayList<Integer> bubbleTimesList = new ArrayList();
    ArrayList<Byte> bubbleTypeList = new ArrayList();
    ArrayList<View> bubbleViewList = new ArrayList();
    int currentIndex;
    int lastIndex = -1;
    String parentKey;

    public BubbleModel()
    {
    }
  }

  class MyTimeTask extends TimerTask
  {
    private MyTimeTask()
    {
    }

    public void run()
    {
      Message localMessage = new Message();
      localMessage.what = 1;
      BubbleTipsManager.this.handler.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.BubbleTipsManager
 * JD-Core Version:    0.6.2
 */