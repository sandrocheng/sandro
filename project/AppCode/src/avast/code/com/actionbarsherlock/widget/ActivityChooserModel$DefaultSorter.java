package com.actionbarsherlock.widget;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class ActivityChooserModel$DefaultSorter
  implements ActivityChooserModel.ActivitySorter
{
  private static final float WEIGHT_DECAY_COEFFICIENT = 0.95F;
  private final Map mPackageNameToActivityMap = new HashMap();

  private ActivityChooserModel$DefaultSorter(ActivityChooserModel paramActivityChooserModel)
  {
  }

  public void sort(Intent paramIntent, List paramList1, List paramList2)
  {
    Map localMap = this.mPackageNameToActivityMap;
    localMap.clear();
    int i = paramList1.size();
    for (int j = 0; j < i; j++)
    {
      ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo2 = (ActivityChooserModel.ActivityResolveInfo)paramList1.get(j);
      localActivityResolveInfo2.weight = 0.0F;
      localMap.put(localActivityResolveInfo2.resolveInfo.activityInfo.packageName, localActivityResolveInfo2);
    }
    int k = -1 + paramList2.size();
    float f1 = 1.0F;
    int m = k;
    if (m >= 0)
    {
      ActivityChooserModel.HistoricalRecord localHistoricalRecord = (ActivityChooserModel.HistoricalRecord)paramList2.get(m);
      ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo1 = (ActivityChooserModel.ActivityResolveInfo)localMap.get(localHistoricalRecord.activity.getPackageName());
      if (localActivityResolveInfo1 == null)
        break label178;
      localActivityResolveInfo1.weight += f1 * localHistoricalRecord.weight;
    }
    label178: for (float f2 = 0.95F * f1; ; f2 = f1)
    {
      m--;
      f1 = f2;
      break;
      Collections.sort(paramList1);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.DefaultSorter
 * JD-Core Version:    0.6.2
 */