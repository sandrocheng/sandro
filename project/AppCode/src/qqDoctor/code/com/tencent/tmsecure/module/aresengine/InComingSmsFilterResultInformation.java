package com.tencent.tmsecure.module.aresengine;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class InComingSmsFilterResultInformation
{
  public boolean mBlocked;
  public int mField;
  public String mPkg;
  public int mState;

  public static InComingSmsFilterResultInformation a(String paramString)
  {
    if (paramString != null);
    for (String[] arrayOfString = paramString.trim().split(","); ; arrayOfString = null)
    {
      InComingSmsFilterResultInformation localInComingSmsFilterResultInformation = null;
      if (paramString != null)
      {
        int i = arrayOfString.length;
        localInComingSmsFilterResultInformation = null;
        if (i >= 4)
        {
          localInComingSmsFilterResultInformation = new InComingSmsFilterResultInformation();
          localInComingSmsFilterResultInformation.mPkg = arrayOfString[0];
          localInComingSmsFilterResultInformation.mField = Integer.parseInt(arrayOfString[1]);
          localInComingSmsFilterResultInformation.mState = Integer.parseInt(arrayOfString[2]);
          localInComingSmsFilterResultInformation.mBlocked = Boolean.parseBoolean(arrayOfString[3]);
        }
      }
      return localInComingSmsFilterResultInformation;
    }
  }

  public static String a(InComingSmsFilterResultInformation paramInComingSmsFilterResultInformation)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInComingSmsFilterResultInformation.mPkg + ",");
    localStringBuilder.append(paramInComingSmsFilterResultInformation.mField + ",");
    localStringBuilder.append(paramInComingSmsFilterResultInformation.mState + ",");
    localStringBuilder.append(paramInComingSmsFilterResultInformation.mBlocked);
    return localStringBuilder.toString();
  }

  public static String a(List<InComingSmsFilterResultInformation> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      localStringBuilder.append(a((InComingSmsFilterResultInformation)localIterator.next()) + "|");
    }
  }

  public static ArrayList<InComingSmsFilterResultInformation> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString;
    int i;
    if (paramString != null)
    {
      arrayOfString = paramString.trim().split("\\|");
      i = arrayOfString.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localArrayList;
      String str = arrayOfString[j];
      if (!TextUtils.isEmpty(str))
        localArrayList.add(a(str));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.InComingSmsFilterResultInformation
 * JD-Core Version:    0.6.2
 */