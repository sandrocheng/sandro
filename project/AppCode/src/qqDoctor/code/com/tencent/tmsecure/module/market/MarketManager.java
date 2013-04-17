package com.tencent.tmsecure.module.market;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.AndroidCategoryExpand;
import QQPIM.AndroidSimpleInfoExpand;
import QQPIM.Category;
import QQPIM.CommentInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.HotWordResInfo;
import QQPIM.MySoftSimpleInfo;
import QQPIM.SoftFeature;
import QQPIM.SoftKey;
import QQPIM.SoftServerInfo;
import QQPIM.SoftSimpleInfo;
import android.content.Context;
import bwd;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class MarketManager extends BaseManager
{
  public static final String JCE_EXPAND_KEY = "expand";
  public static final int REQUEST_TYPE_CLASSIFIED_SOFTWARE = 4;
  public static final int REQUEST_TYPE_COOPERATE_CATEGORY = 9;
  public static final int REQUEST_TYPE_DAILY_SOFTWARE = 6;
  public static final int REQUEST_TYPE_GAME_SOFTWARE = 16;
  public static final int REQUEST_TYPE_MY_SOFTWARE = 0;
  public static final int REQUEST_TYPE_NECCESSARY_SOFTWARE = 2;
  public static final int REQUEST_TYPE_NEW_PRODUCT = 10;
  public static final int REQUEST_TYPE_PROFESSIONAL_KILLER = 13;
  public static final int REQUEST_TYPE_RELEASE_SOFTWARE = 7;
  public static final int REQUEST_TYPE_ROOT_TOOLS = 14;
  public static final int REQUEST_TYPE_SEARCH_SOFTWARE = 8;
  public static final int REQUEST_TYPE_SOFTWARE_CATEGORY = 3;
  public static final int REQUEST_TYPE_SOFTWARE_DETAILS = 5;
  public static final int REQUEST_TYPE_SOFTWARE_MANAGER = 1;
  public static final int REQUEST_TYPE_SPECIAL_CATEGORY = 11;
  public static final int REQUEST_TYPE_SPECIAL_SOFTWARE = 12;
  public static final int REQUEST_TYPE_WEEKLY_SOFTWARE = 15;
  public static final int RESPONESE_TYPE_FAILED = 1;
  public static final int RESPONESE_TYPE_NETWORK_ERROR = 2;
  public static final int RESPONESE_TYPE_SUCCESS;
  public static final int SORT_TYPE_NORMAL;
  private bwd a;

  public void evaluateSoftware(SoftKey paramSoftKey, int paramInt, IMarketManagerListener<ResponseInfo, Void> paramIMarketManagerListener)
  {
    if (isExpired());
    label144: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      CommentInfo localCommentInfo = new CommentInfo();
      localCommentInfo.setSoftkey(paramSoftKey);
      localCommentInfo.setScore(paramInt);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localCommentInfo);
      int i = localbwd.a.reportUserComment(localArrayList);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIMarketManagerListener == null)
          break label144;
        paramIMarketManagerListener.onReceive(localResponseInfo, null);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
      }
    }
  }

  public void fetchAdList(IMarketManagerListener<ResponseInfo, ADInfo> paramIMarketManagerListener)
  {
    if (isExpired());
    label106: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      ArrayList localArrayList = new ArrayList();
      int i = localbwd.a.getADs(localArrayList);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIMarketManagerListener == null)
          break label106;
        paramIMarketManagerListener.onReceive(localResponseInfo, localArrayList);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
      }
    }
  }

  public void fetchAnalyseInfo(RequestInfo paramRequestInfo, List<SoftFeature> paramList, IMarketManagerListener<ResponseInfo, AnalyseInfo> paramIMarketManagerListener)
  {
    if (isExpired());
    label122: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      ArrayList localArrayList = new ArrayList();
      int i = localbwd.a.getAnalyseInfo(paramList, localArrayList);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIMarketManagerListener == null)
          break label122;
        bwd.b(localArrayList);
        paramIMarketManagerListener.onReceive(localResponseInfo, localArrayList);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
      }
    }
  }

  public void fetchCategoryList(RequestInfo paramRequestInfo, IMarketManagerListener<ResponseInfo, CategoryEx> paramIMarketManagerListener)
  {
    if (isExpired())
      return;
    bwd localbwd = this.a;
    ResponseInfo localResponseInfo = new ResponseInfo();
    String str = "";
    if (paramRequestInfo != null)
      str = paramRequestInfo.getRequestCommand();
    ArrayList localArrayList1 = new ArrayList();
    AtomicReference localAtomicReference = new AtomicReference();
    ArrayList localArrayList2 = new ArrayList();
    int i = localbwd.a.getCategoryList(str, localAtomicReference, localArrayList2);
    if (i != 0)
      if (ErrorCode.judgeErrorCode(i) == 0)
      {
        localResponseInfo.type = 2;
        localResponseInfo.code = i;
      }
    while (true)
    {
      if (paramIMarketManagerListener != null)
      {
        paramIMarketManagerListener.onReceive(localResponseInfo, localArrayList1);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
      }
      break;
      localResponseInfo.type = 0;
      localResponseInfo.code = i;
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
      {
        Category localCategory = (Category)localIterator.next();
        CategoryEx localCategoryEx = new CategoryEx();
        localCategoryEx.setCategory(localCategory);
        if ((localCategory != null) && (localCategory.getExpand() != null))
        {
          localUniAttribute.clearCacheData();
          localUniAttribute.decode(localCategory.getExpand());
          localCategoryEx.setExpand((AndroidCategoryExpand)localUniAttribute.getByClass("expand", new AndroidCategoryExpand()));
        }
        localArrayList1.add(localCategoryEx);
      }
    }
  }

  public void fetchHotWords(HotWordReqInfo paramHotWordReqInfo, IFetchHotWordListener paramIFetchHotWordListener)
  {
    if (isExpired());
    label134: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      HotWordResInfo localHotWordResInfo = new HotWordResInfo();
      AtomicReference localAtomicReference = new AtomicReference();
      int i = localbwd.a.getHotWord(paramHotWordReqInfo, localAtomicReference);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIFetchHotWordListener == null)
          break label134;
        paramIFetchHotWordListener.onReceive(localResponseInfo, localHotWordResInfo);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
        localHotWordResInfo = (HotWordResInfo)localAtomicReference.get();
      }
    }
  }

  public void fetchMySoftwareListInfo(RequestInfo paramRequestInfo, List<SoftKey> paramList, IMarketManagerListener<ResponseInfo, MySoftSimpleInfo> paramIMarketManagerListener)
  {
    if (isExpired());
    label128: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      AtomicReference localAtomicReference = new AtomicReference();
      ArrayList localArrayList = new ArrayList();
      int i = localbwd.a.getMySoftList(paramList, localAtomicReference, localArrayList);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIMarketManagerListener == null)
          break label128;
        paramIMarketManagerListener.onReceive(localResponseInfo, localArrayList);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
      }
    }
  }

  public void fetchSoftwareList(RequestInfo paramRequestInfo, IMarketManagerListener<ResponseInfo, SoftSimpleInfoEx> paramIMarketManagerListener)
  {
    if (isExpired())
      return;
    bwd localbwd = this.a;
    ResponseInfo localResponseInfo = new ResponseInfo();
    String str = "";
    if (paramRequestInfo != null)
      str = paramRequestInfo.getRequestCommand();
    ArrayList localArrayList1 = new ArrayList();
    AtomicReference localAtomicReference = new AtomicReference();
    ArrayList localArrayList2 = new ArrayList();
    int i = localbwd.a.getSoftList(str, localAtomicReference, localArrayList2);
    if (i != 0)
      if (ErrorCode.judgeErrorCode(i) == 0)
      {
        localResponseInfo.type = 2;
        localResponseInfo.code = i;
      }
    while (true)
    {
      if (paramIMarketManagerListener != null)
      {
        bwd.a(localArrayList2);
        paramIMarketManagerListener.onReceive(localResponseInfo, localArrayList1);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
      }
      break;
      localResponseInfo.type = 0;
      localResponseInfo.code = i;
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
      {
        SoftSimpleInfo localSoftSimpleInfo = (SoftSimpleInfo)localIterator.next();
        SoftSimpleInfoEx localSoftSimpleInfoEx = new SoftSimpleInfoEx();
        localSoftSimpleInfoEx.setSoftSimpleInfo(localSoftSimpleInfo);
        if (localSoftSimpleInfo.getExpand() != null)
        {
          localUniAttribute.clearCacheData();
          localUniAttribute.decode(localSoftSimpleInfo.getExpand());
          localSoftSimpleInfoEx.setExpand((AndroidSimpleInfoExpand)localUniAttribute.getByClass("expand", new AndroidSimpleInfoExpand()));
        }
        localArrayList1.add(localSoftSimpleInfoEx);
      }
    }
  }

  public void fetchSpecialCategory(RequestInfo paramRequestInfo, IFetchSpecialCategoryListener paramIFetchSpecialCategoryListener)
  {
    if (isExpired())
      return;
    bwd localbwd = this.a;
    ResponseInfo localResponseInfo = new ResponseInfo();
    String str = "";
    if (paramRequestInfo != null)
      str = paramRequestInfo.getRequestCommand();
    AtomicReference localAtomicReference = new AtomicReference();
    ArrayList localArrayList1 = new ArrayList();
    int i = localbwd.a.getSoftList(str, localAtomicReference, localArrayList1);
    bwd.a(localArrayList1);
    SpecialCategory localSpecialCategory = new SpecialCategory();
    if (i != 0)
    {
      if (ErrorCode.judgeErrorCode(i) == 0)
        localResponseInfo.type = 2;
      for (localResponseInfo.code = i; ; localResponseInfo.code = i)
      {
        label108: if (paramIFetchSpecialCategoryListener == null)
          break label334;
        paramIFetchSpecialCategoryListener.onReceive(localResponseInfo, localSpecialCategory);
        break;
        localResponseInfo.type = 1;
      }
    }
    localResponseInfo.type = 0;
    localResponseInfo.code = i;
    UniAttribute localUniAttribute = new UniAttribute();
    localUniAttribute.setEncodeName("UTF-8");
    SoftServerInfo localSoftServerInfo = (SoftServerInfo)localAtomicReference.get();
    if ((localSoftServerInfo != null) && (localSoftServerInfo.getExpand() != null))
    {
      CategoryEx localCategoryEx = new CategoryEx();
      localUniAttribute.clearCacheData();
      localUniAttribute.decode(localSoftServerInfo.getExpand());
      Category localCategory = (Category)localUniAttribute.getByClass("expand", new Category());
      localCategoryEx.setCategory(localCategory);
      if ((localCategory != null) && (localCategory.getExpand() != null))
      {
        localUniAttribute.clearCacheData();
        localUniAttribute.decode(localCategory.getExpand());
        localCategoryEx.setExpand((AndroidCategoryExpand)localUniAttribute.getByClass("expand", new AndroidCategoryExpand()));
      }
      localSpecialCategory.setCategoryEx(localCategoryEx);
    }
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localSpecialCategory.setSoftSimpleInfoExList(localArrayList2);
        break label108;
        label334: break;
      }
      SoftSimpleInfo localSoftSimpleInfo = (SoftSimpleInfo)localIterator.next();
      SoftSimpleInfoEx localSoftSimpleInfoEx = new SoftSimpleInfoEx();
      localSoftSimpleInfoEx.setSoftSimpleInfo(localSoftSimpleInfo);
      if (localSoftSimpleInfo.getExpand() != null)
      {
        localUniAttribute.clearCacheData();
        localUniAttribute.decode(localSoftSimpleInfo.getExpand());
        localSoftSimpleInfoEx.setExpand((AndroidSimpleInfoExpand)localUniAttribute.getByClass("expand", new AndroidSimpleInfoExpand()));
      }
      localArrayList2.add(localSoftSimpleInfoEx);
    }
  }

  public void onCreate(Context paramContext)
  {
    this.a = new bwd();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public boolean refreshStatus()
  {
    if (isExpired());
    while (true)
      return false;
  }

  public void reportSoftware(List<SoftFeature> paramList, IMarketManagerListener<ResponseInfo, Void> paramIMarketManagerListener)
  {
    if (isExpired());
    label103: 
    while (true)
    {
      return;
      bwd localbwd = this.a;
      ResponseInfo localResponseInfo = new ResponseInfo();
      int i = localbwd.a.reportSoftFeature(paramList);
      if (i != 0)
        if (ErrorCode.judgeErrorCode(i) == 0)
        {
          localResponseInfo.type = 2;
          localResponseInfo.code = i;
        }
      while (true)
      {
        if (paramIMarketManagerListener == null)
          break label103;
        paramIMarketManagerListener.onReceive(localResponseInfo, null);
        break;
        localResponseInfo.type = 1;
        localResponseInfo.code = i;
        continue;
        localResponseInfo.type = 0;
        localResponseInfo.code = i;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.market.MarketManager
 * JD-Core Version:    0.6.2
 */