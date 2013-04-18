package cn.com.wali.zft;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.widget.Toast;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Timer;

public final class plugin
{
  private static ArrayList cbs = new ArrayList(1);
  private static plugin instance;
  private SemantemeAnalyzer analyzer;
  private int asyn_state = 0;
  private Context mContext;
  private int sms_count = 0;
  private String test = null;
  private Timer timeout;

  static
  {
    System.loadLibrary("p");
  }

  private plugin(Context paramContext)
  {
    this.mContext = paramContext;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("cn.com.wali.zft.plugin.var");
    this.mContext.registerReceiver(new VarChange(), localIntentFilter);
  }

  private native int Asyn(String paramString1, String paramString2, HashMap paramHashMap);

  public static int Init(Context paramContext, String paramString1, String paramString2)
  {
    if (instance == null)
      instance = new plugin(paramContext);
    return instance.init(paramContext, paramString1, paramString2);
  }

  private void asyn_timeout()
  {
    if (this.analyzer != null)
    {
      this.analyzer.Release();
      this.analyzer = null;
    }
    if (this.timeout != null)
    {
      this.timeout.cancel();
      this.timeout = null;
    }
    try
    {
      Iterator localIterator = cbs.iterator();
      while (true)
      {
        boolean bool = localIterator.hasNext();
        if (!bool)
          break;
        try
        {
          ((ZftPluginCallBack)localIterator.next()).Sync_Timeout();
          localIterator.remove();
        }
        catch (Exception localException2)
        {
        }
      }
    }
    catch (Exception localException1)
    {
      this.asyn_state = 0;
      endAsyn();
    }
  }

  private native int beginAsyn(int paramInt);

  private void broadcast(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("cn.com.wali.zft.plugin.var");
    localIntent.putExtra("pkg", this.mContext.getPackageName());
    localIntent.putExtra("key", paramString1);
    localIntent.putExtra("value", paramString2);
    this.mContext.sendBroadcast(localIntent);
  }

  private native int checkcontaint();

  private native int checkvar(String paramString);

  private native void endAsyn();

  private static native String feecode();

  public static plugin getInstance()
  {
    if (instance == null)
      throw new NullPointerException("please run plugin.Init");
    return instance;
  }

  public static native ArrayList getbrands(String paramString);

  public static native ArrayList getcarries();

  public static native ArrayList getcities(int paramInt);

  public static native ArrayList getprovinces();

  public static native int getversion();

  private native int init(Context paramContext, String paramString1, String paramString2);

  private static boolean load_library(Context paramContext)
  {
    boolean bool;
    try
    {
      localFile = new File(paramContext.getFilesDir(), "p");
      if (localFile.exists())
      {
        System.load(localFile.getAbsolutePath());
        bool = true;
      }
      else
      {
        InputStream localInputStream = plugin.class.getResource("/p").openStream();
        localFileOutputStream = new FileOutputStream(localFile);
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int i = localInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
    }
    catch (Exception localException)
    {
      File localFile;
      FileOutputStream localFileOutputStream;
      localException.printStackTrace();
      bool = false;
      break label114;
      localFileOutputStream.close();
      System.load(localFile.getAbsolutePath());
      bool = true;
    }
    label114: return bool;
  }

  private static void sms_status(int paramInt)
  {
    if (instance != null)
    {
      plugin localplugin = instance;
      localplugin.sms_count = (1 + localplugin.sms_count);
    }
    Iterator localIterator = cbs.iterator();
    while (true)
    {
      ZftPluginCallBack localZftPluginCallBack;
      if (localIterator.hasNext())
      {
        localZftPluginCallBack = (ZftPluginCallBack)localIterator.next();
        if (paramInt != 0);
      }
      try
      {
        for (ZftPluginCallBack.SyncStatus localSyncStatus = ZftPluginCallBack.SyncStatus.sms_success; ; localSyncStatus = ZftPluginCallBack.SyncStatus.sms_fail)
        {
          localZftPluginCallBack.Sync_Status(localSyncStatus);
          break;
        }
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  public final HashMap Asyn_1_1(String paramString1, String paramString2, StringBuffer paramStringBuffer)
  {
    HashMap localHashMap = new HashMap();
    if (paramStringBuffer == null);
    while (true)
    {
      return localHashMap;
      if (Asyn(paramString1, paramString2, localHashMap) >= 0)
      {
        ArrayList localArrayList = new ArrayList();
        this.analyzer.Analyzer(paramString1, localArrayList);
        Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          Pair localPair2 = (Pair)localIterator1.next();
          if ((checkvar((String)localPair2.key) != 0) && (!localHashMap.containsKey(localPair2.key)))
            localHashMap.put(localPair2.key, localPair2.value);
        }
        StringBuffer localStringBuffer = new StringBuffer();
        int i = 2147483647;
        DataStore localDataStore = new DataStore();
        localDataStore.open();
        Iterator localIterator2 = localArrayList.iterator();
        while (localIterator2.hasNext())
        {
          Pair localPair1 = (Pair)localIterator2.next();
          if (checkvar((String)localPair1.key) != 0)
          {
            broadcast((String)localPair1.key, (String)localPair1.value);
            localHashMap.put(localPair1.key, localPair1.value);
            localDataStore.put_value((String)localPair1.key, (String)localPair1.value);
            SemantemeAnalyzer.VarReadable localVarReadable = SemantemeAnalyzer.getVar2Readable((String)localPair1.key);
            if (localVarReadable != null);
            try
            {
              int j = Integer.parseInt((String)localPair1.value);
              i = j;
              if (i != 2147483647)
                if (localVarReadable.rate == 1)
                {
                  localStringBuffer.append(i + localVarReadable.unit);
                  localStringBuffer.append('\n');
                  if (!"BASIC_SSYE".equals(localPair1.key))
                    break label460;
                  if ((i >= 1000) || (i <= 0))
                    continue;
                }
            }
            catch (Exception localException)
            {
              while (true)
              {
                i = 2147483647;
                continue;
                Object[] arrayOfObject = new Object[3];
                arrayOfObject[0] = (localVarReadable.readable + "为");
                arrayOfObject[1] = Double.valueOf(i / localVarReadable.rate);
                arrayOfObject[2] = localVarReadable.unit;
                localStringBuffer.append(String.format("%1$-10s%2$.2f%3$s\n", arrayOfObject));
              }
              label460: "BASIC_SSQF".equals(localPair1.key);
            }
          }
        }
        localDataStore.close();
        if ((localStringBuffer.length() > 0) && (checkcontaint() == 0))
        {
          localStringBuffer.insert(0, "瓦力流量仪提示您:\n");
          Toast.makeText(this.mContext, localStringBuffer.toString(), 1).show();
        }
        this.sms_count -= 1;
        if (this.sms_count <= 0)
          this.asyn_state = 0;
      }
    }
  }

  public final native int available();

  public final int beginAsyn_1_1(int paramInt)
  {
    if (this.asyn_state == 1);
    for (int i = -10; ; i = beginAsyn(paramInt))
    {
      return i;
      this.asyn_state = 1;
      if (this.timeout != null)
      {
        this.timeout.cancel();
        this.timeout = null;
      }
      this.timeout = new Timer();
      this.timeout.schedule(new plugin.AsynTimeOutTask(this), 180000L);
      this.analyzer = new SemantemeAnalyzer(this.mContext, new File(this.mContext.getFilesDir().getAbsolutePath() + "/zft", "dict"));
      this.analyzer.Init();
    }
  }

  public final int endAsyn_1_1()
  {
    if (this.analyzer != null)
    {
      this.analyzer.Release();
      this.analyzer = null;
    }
    if (this.timeout != null)
    {
      this.timeout.cancel();
      this.timeout = null;
    }
    try
    {
      Iterator localIterator = cbs.iterator();
      while (true)
      {
        boolean bool = localIterator.hasNext();
        if (!bool)
          break;
        try
        {
          ((ZftPluginCallBack)localIterator.next()).Sync_End();
          localIterator.remove();
        }
        catch (Exception localException2)
        {
        }
      }
    }
    catch (Exception localException1)
    {
      this.asyn_state = 0;
      endAsyn();
    }
    return 0;
  }

  public final int isAsynFinished()
  {
    return this.asyn_state;
  }

  public final ArrayList load_today_cache(int paramInt)
  {
    int i = 0;
    DataStore localDataStore = new DataStore();
    if (!localDataStore.open())
      throw new FileNotFoundException();
    ArrayList localArrayList = new ArrayList(1);
    if (paramInt == 1)
    {
      DataStore.Pojo[] arrayOfPojo3 = localDataStore.get_current();
      int m = arrayOfPojo3.length;
      while (i < m)
      {
        DataStore.Pojo localPojo3 = arrayOfPojo3[i];
        if (checkvar(localPojo3.getKey()) != 0)
          localArrayList.add(new Pair(localPojo3.getKey(), localPojo3.getValue()));
        i++;
      }
    }
    if (paramInt == 2)
    {
      DataStore.Pojo[] arrayOfPojo2 = localDataStore.get_current();
      int k = arrayOfPojo2.length;
      while (i < k)
      {
        DataStore.Pojo localPojo2 = arrayOfPojo2[i];
        if (checkvar(localPojo2.getKey()) != 0)
          localArrayList.add(new Pair(localPojo2.getKey(), localPojo2.getValue()));
        i++;
      }
    }
    DataStore.Pojo[] arrayOfPojo1 = localDataStore.get_current();
    int j = arrayOfPojo1.length;
    while (i < j)
    {
      DataStore.Pojo localPojo1 = arrayOfPojo1[i];
      if (checkvar(localPojo1.getKey()) != 0)
        localArrayList.add(new Pair(localPojo1.getKey(), localPojo1.getValue()));
      i++;
    }
    localDataStore.close();
    return localArrayList;
  }

  public final void registCallBack(ZftPluginCallBack paramZftPluginCallBack)
  {
    if (cbs.contains(paramZftPluginCallBack));
    while (true)
    {
      return;
      cbs.add(paramZftPluginCallBack);
    }
  }

  public final native int smsNeedBlock(String paramString);

  public final void unregistCallBack(ZftPluginCallBack paramZftPluginCallBack)
  {
    cbs.remove(paramZftPluginCallBack);
  }

  public final native int update(String paramString1, String paramString2, String paramString3, String paramString4);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.plugin
 * JD-Core Version:    0.6.2
 */