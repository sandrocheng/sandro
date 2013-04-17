package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class DialCommonPhoneExAdapter extends BaseExpandableListAdapter
{
  private HashMap<String, ArrayList<UsefulNumberEntity>> formChildrenList = new HashMap();
  private Context mContext;
  private StringBuffer morePhoneNumberSB = new StringBuffer();

  public DialCommonPhoneExAdapter(Context paramContext, HashMap<String, ArrayList<UsefulNumberEntity>> paramHashMap)
  {
    this.mContext = paramContext;
    this.formChildrenList = paramHashMap;
  }

  public Object getChild(int paramInt1, int paramInt2)
  {
    return null;
  }

  public long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }

  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    Object localObject;
    if (paramView == null)
    {
      localView = ((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903284, null);
      localObject = new ViewBodyHolder();
      ((ViewBodyHolder)localObject).phone_name = ((TextView)localView.findViewById(2131231531));
      ((ViewBodyHolder)localObject).phone_number = ((TextView)localView.findViewById(2131231532));
      ((ViewBodyHolder)localObject).mLayoutchild = ((LinearLayout)localView);
      localView.setTag(localObject);
    }
    while (true)
    {
      ((ViewBodyHolder)localObject).mLayoutchild.setBackgroundResource(2130837721);
      String str = (String)this.formChildrenList.keySet().toArray()[paramInt1];
      UsefulNumberEntity localUsefulNumberEntity = (UsefulNumberEntity)((ArrayList)this.formChildrenList.get(str)).get(paramInt2);
      ((ViewBodyHolder)localObject).phone_name.setText(localUsefulNumberEntity.getName());
      ((ViewBodyHolder)localObject).phone_number.setText(localUsefulNumberEntity.getNumber());
      return localView;
      ViewBodyHolder localViewBodyHolder = (ViewBodyHolder)paramView.getTag();
      localView = paramView;
      localObject = localViewBodyHolder;
    }
  }

  public int getChildrenCount(int paramInt)
  {
    String str = (String)this.formChildrenList.keySet().toArray()[paramInt];
    return ((ArrayList)this.formChildrenList.get(str)).size();
  }

  public Object getGroup(int paramInt)
  {
    return null;
  }

  public int getGroupCount()
  {
    return this.formChildrenList.keySet().size();
  }

  public long getGroupId(int paramInt)
  {
    return 0L;
  }

  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    DialCommonPhoneGroupModeHolder localDialCommonPhoneGroupModeHolder;
    if (paramView == null)
    {
      View localView = ((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903285, null);
      localDialCommonPhoneGroupModeHolder = new DialCommonPhoneGroupModeHolder();
      localDialCommonPhoneGroupModeHolder.mLayout = ((LinearLayout)localView);
      localDialCommonPhoneGroupModeHolder.mInfoGroupText = ((TextView)localView.findViewById(2131231534));
      localDialCommonPhoneGroupModeHolder.mInfoGroupMoreInfoText = ((TextView)localView.findViewById(2131231535));
      localDialCommonPhoneGroupModeHolder.mInfoGroupImage = ((ImageView)localView.findViewById(2131231536));
      localView.setTag(localDialCommonPhoneGroupModeHolder);
      paramView = localView;
      if (!paramBoolean)
        break label316;
      localDialCommonPhoneGroupModeHolder.mInfoGroupImage.setBackgroundResource(2130837892);
      localDialCommonPhoneGroupModeHolder.mLayout.setBackgroundColor(this.mContext.getResources().getColor(2131296294));
    }
    while (true)
    {
      String str = (String)this.formChildrenList.keySet().toArray()[paramInt];
      int j = ((ArrayList)this.formChildrenList.get(str)).size();
      localDialCommonPhoneGroupModeHolder.mInfoGroupText.setText(str + " (" + j + ")");
      this.morePhoneNumberSB.delete(0, this.morePhoneNumberSB.length());
      while ((i < ((ArrayList)this.formChildrenList.get(str)).size()) && (i < 3))
      {
        this.morePhoneNumberSB.append(((UsefulNumberEntity)((ArrayList)this.formChildrenList.get(str)).get(i)).name);
        if (i < 2)
          this.morePhoneNumberSB.append("、");
        i++;
      }
      localDialCommonPhoneGroupModeHolder = (DialCommonPhoneGroupModeHolder)paramView.getTag();
      break;
      label316: localDialCommonPhoneGroupModeHolder.mInfoGroupImage.setBackgroundResource(2130837891);
      localDialCommonPhoneGroupModeHolder.mLayout.setBackgroundResource(2130837920);
    }
    localDialCommonPhoneGroupModeHolder.mInfoGroupMoreInfoText.setText(this.morePhoneNumberSB.toString());
    return paramView;
  }

  public boolean hasStableIds()
  {
    return false;
  }

  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }

  public static class DialCommonPhoneChildModeHolder
  {
    public TextView mInfoChildText;
  }

  public static class DialCommonPhoneGroupModeHolder
  {
    ImageView mInfoGroupImage;
    TextView mInfoGroupMoreInfoText;
    TextView mInfoGroupText;
    LinearLayout mLayout;
  }

  public static class ViewBodyHolder
  {
    public LinearLayout mLayoutchild;
    TextView phone_name;
    TextView phone_number;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.DialCommonPhoneExAdapter
 * JD-Core Version:    0.6.2
 */