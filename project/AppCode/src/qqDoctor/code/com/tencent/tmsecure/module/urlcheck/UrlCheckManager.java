package com.tencent.tmsecure.module.urlcheck;

import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.UrlCheckResponse;
import android.content.Context;
import bzd;
import bzd.a;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class UrlCheckManager extends BaseManager
{
  private bzd a;

  public final int checkApkUrl(String paramString)
  {
    int i;
    if (isExpired())
      i = 0;
    while (true)
    {
      return i;
      bzd localbzd = this.a;
      bzd.a locala = new bzd.a(localbzd);
      i = bzd.a(paramString, locala);
      if (i == 0)
      {
        BrowserClient localBrowserClient = new BrowserClient(13, "1.0.0", StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(localbzd.a)), "guid", "ua");
        BrowserUrl localBrowserUrl = new BrowserUrl(paramString, locala.a, locala.b);
        AtomicReference localAtomicReference = new AtomicReference();
        int j = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).browerCheck(localBrowserClient, localBrowserUrl, localAtomicReference);
        if (j == 0)
        {
          BrowserResult localBrowserResult = (BrowserResult)localAtomicReference.get();
          if (localBrowserResult != null)
            localBrowserResult.getCheckAdvise();
        }
        i = j;
      }
    }
  }

  public final UrlCheckResponse checkUrl(String paramString)
  {
    UrlCheckResponse localUrlCheckResponse;
    if (isExpired())
      localUrlCheckResponse = new UrlCheckResponse(paramString, 0, 0, 0, "");
    while (true)
    {
      return localUrlCheckResponse;
      bzd localbzd = this.a;
      if ((paramString == null) || (paramString.length() == 0))
      {
        localUrlCheckResponse = new UrlCheckResponse(paramString, -1, 0, 0, "");
      }
      else
      {
        localbzd.a();
        Iterator localIterator = localbzd.b.values().iterator();
        do
        {
          if (!localIterator.hasNext())
          {
            AtomicReference localAtomicReference = new AtomicReference();
            if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).checkUrl(paramString, localAtomicReference) != 0)
              break label225;
            localUrlCheckResponse = (UrlCheckResponse)localAtomicReference.get();
            if ((localUrlCheckResponse != null) && (localUrlCheckResponse.url.length() != 0))
              break label174;
            localUrlCheckResponse = new UrlCheckResponse(paramString, -1, 0, 0, "");
            break;
          }
          localUrlCheckResponse = (UrlCheckResponse)localIterator.next();
        }
        while (!paramString.equalsIgnoreCase(localUrlCheckResponse.getUrl()));
        continue;
        label174: long l = System.currentTimeMillis();
        localbzd.b.put(Long.valueOf(l), localUrlCheckResponse);
        localbzd.c.put(Long.valueOf(l), localUrlCheckResponse);
        if (localbzd.d == 0L)
        {
          localbzd.d = l;
          continue;
          label225: localUrlCheckResponse = new UrlCheckResponse(paramString, -1, 0, 0, "");
        }
      }
    }
  }

  public final Map<String, UrlCheckResponse> checkUrlEx(List<String> paramList)
  {
    if (isExpired());
    for (Object localObject = new HashMap(0); ; localObject = this.a.a(paramList))
      return localObject;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bzd();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.urlcheck.UrlCheckManager
 * JD-Core Version:    0.6.2
 */