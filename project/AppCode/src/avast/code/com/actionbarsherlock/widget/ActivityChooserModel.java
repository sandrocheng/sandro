package com.actionbarsherlock.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class ActivityChooserModel extends DataSetObservable
{
  private static final String ATTRIBUTE_ACTIVITY = "activity";
  private static final String ATTRIBUTE_TIME = "time";
  private static final String ATTRIBUTE_WEIGHT = "weight";
  private static final boolean DEBUG = false;
  private static final int DEFAULT_ACTIVITY_INFLATION = 5;
  private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0F;
  public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
  public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
  private static final String HISTORY_FILE_EXTENSION = ".xml";
  private static final int INVALID_INDEX = -1;
  private static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
  private static final Executor SERIAL_EXECUTOR = Executors.newSingleThreadExecutor();
  private static final String TAG_HISTORICAL_RECORD = "historical-record";
  private static final String TAG_HISTORICAL_RECORDS = "historical-records";
  private static final Map sDataModelRegistry;
  private static final Object sRegistryLock = new Object();
  private final List mActivites = new ArrayList();
  private ActivityChooserModel.OnChooseActivityListener mActivityChoserModelPolicy;
  private ActivityChooserModel.ActivitySorter mActivitySorter = new ActivityChooserModel.DefaultSorter(this, null);
  private boolean mCanReadHistoricalData = true;
  private final Context mContext;
  private final Handler mHandler = new Handler();
  private final List mHistoricalRecords = new ArrayList();
  private boolean mHistoricalRecordsChanged = true;
  private final String mHistoryFileName;
  private int mHistoryMaxSize = 50;
  private final Object mInstanceLock = new Object();
  private Intent mIntent;
  private boolean mReadShareHistoryCalled = false;

  static
  {
    sDataModelRegistry = new HashMap();
  }

  private ActivityChooserModel(Context paramContext, String paramString)
  {
    this.mContext = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")));
    for (this.mHistoryFileName = (paramString + ".xml"); ; this.mHistoryFileName = paramString)
      return;
  }

  private boolean addHisoricalRecord(ActivityChooserModel.HistoricalRecord paramHistoricalRecord)
  {
    synchronized (this.mInstanceLock)
    {
      boolean bool = this.mHistoricalRecords.add(paramHistoricalRecord);
      if (bool)
      {
        this.mHistoricalRecordsChanged = true;
        pruneExcessiveHistoricalRecordsLocked();
        persistHistoricalData();
        sortActivities();
      }
      return bool;
    }
  }

  public static ActivityChooserModel get(Context paramContext, String paramString)
  {
    synchronized (sRegistryLock)
    {
      ActivityChooserModel localActivityChooserModel = (ActivityChooserModel)sDataModelRegistry.get(paramString);
      if (localActivityChooserModel == null)
      {
        localActivityChooserModel = new ActivityChooserModel(paramContext, paramString);
        sDataModelRegistry.put(paramString, localActivityChooserModel);
      }
      localActivityChooserModel.readHistoricalData();
      return localActivityChooserModel;
    }
  }

  private void loadActivitiesLocked()
  {
    this.mActivites.clear();
    if (this.mIntent != null)
    {
      List localList = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
      int i = localList.size();
      for (int j = 0; j < i; j++)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(j);
        this.mActivites.add(new ActivityChooserModel.ActivityResolveInfo(this, localResolveInfo));
      }
      sortActivities();
    }
    while (true)
    {
      return;
      notifyChanged();
    }
  }

  // ERROR //
  private void persistHistoricalData()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 99	com/actionbarsherlock/widget/ActivityChooserModel:mInstanceLock	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 119	com/actionbarsherlock/widget/ActivityChooserModel:mReadShareHistoryCalled	Z
    //   11: ifne +18 -> 29
    //   14: new 242	java/lang/IllegalStateException
    //   17: dup
    //   18: ldc 244
    //   20: invokespecial 247	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   23: athrow
    //   24: astore_2
    //   25: aload_1
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    //   29: aload_0
    //   30: getfield 121	com/actionbarsherlock/widget/ActivityChooserModel:mHistoricalRecordsChanged	Z
    //   33: ifne +8 -> 41
    //   36: aload_1
    //   37: monitorexit
    //   38: goto +42 -> 80
    //   41: aload_0
    //   42: iconst_0
    //   43: putfield 121	com/actionbarsherlock/widget/ActivityChooserModel:mHistoricalRecordsChanged	Z
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 117	com/actionbarsherlock/widget/ActivityChooserModel:mCanReadHistoricalData	Z
    //   51: aload_0
    //   52: getfield 158	com/actionbarsherlock/widget/ActivityChooserModel:mHistoryFileName	Ljava/lang/String;
    //   55: invokestatic 140	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   58: ifne +20 -> 78
    //   61: getstatic 95	com/actionbarsherlock/widget/ActivityChooserModel:SERIAL_EXECUTOR	Ljava/util/concurrent/Executor;
    //   64: new 249	com/actionbarsherlock/widget/ActivityChooserModel$HistoryPersister
    //   67: dup
    //   68: aload_0
    //   69: aconst_null
    //   70: invokespecial 250	com/actionbarsherlock/widget/ActivityChooserModel$HistoryPersister:<init>	(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$1;)V
    //   73: invokeinterface 256 2 0
    //   78: aload_1
    //   79: monitorexit
    //   80: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	27	24	finally
    //   29	80	24	finally
  }

  private void pruneExcessiveHistoricalRecordsLocked()
  {
    List localList = this.mHistoricalRecords;
    int i = localList.size() - this.mHistoryMaxSize;
    if (i <= 0);
    while (true)
    {
      return;
      this.mHistoricalRecordsChanged = true;
      for (int j = 0; j < i; j++)
        ((ActivityChooserModel.HistoricalRecord)localList.remove(0));
    }
  }

  private void readHistoricalData()
  {
    synchronized (this.mInstanceLock)
    {
      if ((!this.mCanReadHistoricalData) || (this.mHistoricalRecordsChanged))
      {
        this.mCanReadHistoricalData = false;
        this.mReadShareHistoryCalled = true;
        if (!TextUtils.isEmpty(this.mHistoryFileName))
          SERIAL_EXECUTOR.execute(new ActivityChooserModel.HistoryLoader(this, null));
      }
    }
  }

  private void sortActivities()
  {
    synchronized (this.mInstanceLock)
    {
      if ((this.mActivitySorter != null) && (!this.mActivites.isEmpty()))
      {
        this.mActivitySorter.sort(this.mIntent, this.mActivites, Collections.unmodifiableList(this.mHistoricalRecords));
        notifyChanged();
      }
      return;
    }
  }

  public Intent chooseActivity(int paramInt)
  {
    ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo = (ActivityChooserModel.ActivityResolveInfo)this.mActivites.get(paramInt);
    ComponentName localComponentName = new ComponentName(localActivityResolveInfo.resolveInfo.activityInfo.packageName, localActivityResolveInfo.resolveInfo.activityInfo.name);
    Intent localIntent1 = new Intent(this.mIntent);
    localIntent1.setComponent(localComponentName);
    if (this.mActivityChoserModelPolicy != null)
    {
      Intent localIntent2 = new Intent(localIntent1);
      if (this.mActivityChoserModelPolicy.onChooseActivity(this, localIntent2))
        localIntent1 = null;
    }
    while (true)
    {
      return localIntent1;
      addHisoricalRecord(new ActivityChooserModel.HistoricalRecord(localComponentName, System.currentTimeMillis(), 1.0F));
    }
  }

  public ResolveInfo getActivity(int paramInt)
  {
    synchronized (this.mInstanceLock)
    {
      ResolveInfo localResolveInfo = ((ActivityChooserModel.ActivityResolveInfo)this.mActivites.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }

  public int getActivityCount()
  {
    synchronized (this.mInstanceLock)
    {
      int i = this.mActivites.size();
      return i;
    }
  }

  public int getActivityIndex(ResolveInfo paramResolveInfo)
  {
    List localList = this.mActivites;
    int i = localList.size();
    int j = 0;
    if (j < i)
      if (((ActivityChooserModel.ActivityResolveInfo)localList.get(j)).resolveInfo != paramResolveInfo);
    for (int k = j; ; k = -1)
    {
      return k;
      j++;
      break;
    }
  }

  public ResolveInfo getDefaultActivity()
  {
    ResolveInfo localResolveInfo;
    synchronized (this.mInstanceLock)
    {
      if (!this.mActivites.isEmpty())
        localResolveInfo = ((ActivityChooserModel.ActivityResolveInfo)this.mActivites.get(0)).resolveInfo;
      else
        localResolveInfo = null;
    }
    return localResolveInfo;
  }

  public int getHistoryMaxSize()
  {
    synchronized (this.mInstanceLock)
    {
      int i = this.mHistoryMaxSize;
      return i;
    }
  }

  public int getHistorySize()
  {
    synchronized (this.mInstanceLock)
    {
      int i = this.mHistoricalRecords.size();
      return i;
    }
  }

  public Intent getIntent()
  {
    synchronized (this.mInstanceLock)
    {
      Intent localIntent = this.mIntent;
      return localIntent;
    }
  }

  public void setActivitySorter(ActivityChooserModel.ActivitySorter paramActivitySorter)
  {
    synchronized (this.mInstanceLock)
    {
      if (this.mActivitySorter != paramActivitySorter)
      {
        this.mActivitySorter = paramActivitySorter;
        sortActivities();
      }
    }
  }

  public void setDefaultActivity(int paramInt)
  {
    ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo1 = (ActivityChooserModel.ActivityResolveInfo)this.mActivites.get(paramInt);
    ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo2 = (ActivityChooserModel.ActivityResolveInfo)this.mActivites.get(0);
    if (localActivityResolveInfo2 != null);
    for (float f = 5.0F + (localActivityResolveInfo2.weight - localActivityResolveInfo1.weight); ; f = 1.0F)
    {
      addHisoricalRecord(new ActivityChooserModel.HistoricalRecord(new ComponentName(localActivityResolveInfo1.resolveInfo.activityInfo.packageName, localActivityResolveInfo1.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
      return;
    }
  }

  public void setHistoryMaxSize(int paramInt)
  {
    synchronized (this.mInstanceLock)
    {
      if (this.mHistoryMaxSize != paramInt)
      {
        this.mHistoryMaxSize = paramInt;
        pruneExcessiveHistoricalRecordsLocked();
        sortActivities();
      }
    }
  }

  public void setIntent(Intent paramIntent)
  {
    synchronized (this.mInstanceLock)
    {
      if (this.mIntent != paramIntent)
      {
        this.mIntent = paramIntent;
        loadActivitiesLocked();
      }
    }
  }

  public void setOnChooseActivityListener(ActivityChooserModel.OnChooseActivityListener paramOnChooseActivityListener)
  {
    this.mActivityChoserModelPolicy = paramOnChooseActivityListener;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel
 * JD-Core Version:    0.6.2
 */