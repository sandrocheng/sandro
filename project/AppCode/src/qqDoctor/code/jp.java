import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import com.tencent.tmsecure.module.aresengine.MmsPart;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class jp
  implements ISmsDao<mk>
{
  private static String a = "sms_draft_prefs";
  private hs b;
  private String c;
  private String d;
  private String e;
  private Context f = QQPimApplication.a();
  private ki g;
  private ho h;
  private SharedPreferences i;

  public jp(String paramString1, String paramString2, String paramString3)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.b = hs.a();
    this.g = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.h = ho.a();
    this.i = this.f.getSharedPreferences(a, 0);
  }

  private long a(mk parammk, int paramInt, boolean paramBoolean)
  {
    new StringBuilder("insertMMSPduAndParts smsLogId: ").append(paramInt).toString();
    ContentValues localContentValues1 = gu.a(parammk, paramInt);
    long l1;
    if (localContentValues1 != null)
    {
      l1 = this.b.a(this.d, "id", localContentValues1);
      if ((paramBoolean) && (l1 >= 0L))
      {
        if (parammk.mmsData.mmsContentConfigHeader == null)
          break label90;
        parammk.mmsData.mmsContentConfigHeader.id = ((int)l1);
      }
    }
    while (true)
    {
      if (l1 < 0L);
      while (true)
      {
        return l1;
        label90: if (parammk.mmsData.mmsNotificationIndHeader == null)
          break;
        parammk.mmsData.mmsNotificationIndHeader.id = ((int)l1);
        break;
        int j = (int)l1;
        try
        {
          List localList = gu.b(parammk, paramInt);
          if (localList != null)
          {
            Iterator localIterator = localList.iterator();
            if (localIterator.hasNext())
            {
              ContentValues localContentValues2 = (ContentValues)localIterator.next();
              l2 = this.b.a(this.e, "id", localContentValues2);
              if ((paramBoolean) && (l2 >= 0L))
              {
                ly locally = new ly((MmsPart)parammk.mmsData.mmsParts.get(0));
                locally.id = ((int)l2);
                locally.a = ((Integer)localContentValues2.get("seq")).intValue();
                parammk.mmsData.mmsParts.remove(0);
                parammk.mmsData.mmsParts.add(locally);
              }
              if (l2 >= 0L)
                break label344;
              l1 = l2;
            }
          }
          if (l1 < 0L)
          {
            c(paramInt);
            this.b.a(this.d, "id=" + j, null);
          }
        }
        catch (NullPointerException localNullPointerException)
        {
          while (true)
          {
            long l2;
            localNullPointerException.printStackTrace();
            l1 = -1L;
            continue;
            label344: l1 = l2;
          }
        }
      }
      l1 = -1L;
    }
  }

  private List<mk> a(Cursor paramCursor)
  {
    int j = paramCursor.getColumnIndex("id");
    int k = paramCursor.getColumnIndexOrThrow("thread_id");
    int m = paramCursor.getColumnIndexOrThrow("address");
    int n = paramCursor.getColumnIndexOrThrow("person");
    int i1 = paramCursor.getColumnIndexOrThrow("date");
    int i2 = paramCursor.getColumnIndexOrThrow("protocol");
    int i3 = paramCursor.getColumnIndexOrThrow("read");
    int i4 = paramCursor.getColumnIndexOrThrow("status");
    int i5 = paramCursor.getColumnIndexOrThrow("type");
    int i6 = paramCursor.getColumnIndexOrThrow("subject");
    int i7 = paramCursor.getColumnIndexOrThrow("body");
    int i8 = paramCursor.getColumnIndexOrThrow("service_center");
    int i9 = paramCursor.getColumnIndex("read_extend");
    int i10 = paramCursor.getColumnIndex("displayName");
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    if (!paramCursor.isAfterLast())
    {
      mk localmk = new mk();
      localmk.id = paramCursor.getInt(j);
      localmk.e = paramCursor.getInt(k);
      localmk.a(paramCursor.getString(m));
      localmk.b = paramCursor.getInt(n);
      localmk.date = paramCursor.getLong(i1);
      int i11 = paramCursor.getInt(i2);
      localmk.protocolType = (i11 & 0xFF);
      localmk.j = (i11 >> 8);
      localmk.read = paramCursor.getInt(i3);
      localmk.h = paramCursor.getInt(i4);
      localmk.type = paramCursor.getInt(i5);
      localmk.c = paramCursor.getString(i6);
      localmk.body = paramCursor.getString(i7);
      localmk.d = paramCursor.getString(i8);
      if (i9 == -1);
      for (localmk.a = localmk.read; ; localmk.a = paramCursor.getInt(i9))
      {
        localmk.name = paramCursor.getString(i10);
        if (localmk.protocolType == 1)
        {
          new StringBuilder("smsLog id: ").append(localmk.id).append(" is MMS").toString();
          c(localmk);
        }
        localArrayList.add(localmk);
        paramCursor.moveToNext();
        break;
      }
    }
    paramCursor.close();
    return localArrayList;
  }

  private void c(mk parammk)
  {
    MmsData localMmsData = new MmsData();
    String str1 = "SELECT * FROM " + this.d + " WHERE sl_id =" + parammk.id;
    Cursor localCursor1 = this.b.a(str1);
    int i6;
    if ((localCursor1 != null) && (localCursor1.moveToFirst()))
    {
      i6 = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("m_type"));
      if (i6 != 130)
        break label825;
      MmsNotificationIndHeader localMmsNotificationIndHeader = new MmsNotificationIndHeader();
      localMmsNotificationIndHeader.messageType = i6;
      localMmsNotificationIndHeader.id = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("id"));
      localMmsNotificationIndHeader.phonenumCharset = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("pn_cs"));
      localMmsNotificationIndHeader.subject = localCursor1.getString(localCursor1.getColumnIndexOrThrow("sub"));
      localMmsNotificationIndHeader.subjectCharset = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("sub_cs"));
      localMmsNotificationIndHeader.contentLocation = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("ct_l"));
      localMmsNotificationIndHeader.messageclass = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("m_cls"));
      localMmsNotificationIndHeader.transactionId = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("tr_id"));
      localMmsNotificationIndHeader.mmsVersion = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("v"));
      localMmsNotificationIndHeader.expiry = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("exp"));
      localMmsNotificationIndHeader.messageSize = localCursor1.getLong(localCursor1.getColumnIndexOrThrow("m_size"));
      localMmsNotificationIndHeader.contentClass = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("ct_cls"));
      localMmsNotificationIndHeader.deliveryReport = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("d_rpt"));
      localMmsData.mmsNotificationIndHeader = localMmsNotificationIndHeader;
    }
    Cursor localCursor2;
    for (parammk.f = localCursor1.getString(localCursor1.getColumnIndex("f_c")); ; parammk.f = localCursor1.getString(localCursor1.getColumnIndex("f_c")))
    {
      label825: 
      do
      {
        if (localCursor1 != null)
          localCursor1.close();
        String str2 = "SELECT * FROM " + this.e + " WHERE sl_id =" + parammk.id;
        localCursor2 = this.b.a(str2);
        if ((localCursor2 == null) || (!localCursor2.moveToFirst()))
          break;
        int j = localCursor2.getColumnIndexOrThrow("id");
        int k = localCursor2.getColumnIndexOrThrow("seq");
        int m = localCursor2.getColumnIndexOrThrow("ct");
        int n = localCursor2.getColumnIndexOrThrow("name");
        int i1 = localCursor2.getColumnIndexOrThrow("chset");
        int i2 = localCursor2.getColumnIndexOrThrow("cd");
        int i3 = localCursor2.getColumnIndexOrThrow("fn");
        int i4 = localCursor2.getColumnIndexOrThrow("cid");
        int i5 = localCursor2.getColumnIndexOrThrow("cl");
        localMmsData.mmsParts = new ArrayList();
        while (!localCursor2.isAfterLast())
        {
          ly locally = new ly();
          locally.id = localCursor2.getInt(j);
          locally.a = localCursor2.getInt(k);
          locally.contentType = localCursor2.getBlob(m);
          locally.name = localCursor2.getBlob(n);
          locally.charset = localCursor2.getInt(i1);
          locally.contentDispositon = localCursor2.getBlob(i2);
          locally.fileName = localCursor2.getBlob(i3);
          locally.contentId = localCursor2.getBlob(i4);
          locally.contentLocation = localCursor2.getBlob(i5);
          locally.data = localCursor2.getBlob(localCursor2.getColumnIndexOrThrow("data"));
          locally.dataPath = localCursor2.getString(localCursor2.getColumnIndexOrThrow("dp"));
          new StringBuilder("part.dataPath: ").append(locally.dataPath).toString();
          localMmsData.mmsParts.add(locally);
          localCursor2.moveToNext();
        }
      }
      while ((i6 != 128) && (i6 != 132));
      MmsContentConfigHeader localMmsContentConfigHeader = new MmsContentConfigHeader();
      localMmsContentConfigHeader.messageType = i6;
      localMmsContentConfigHeader.id = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("id"));
      localMmsContentConfigHeader.phonenumCharset = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("pn_cs"));
      localMmsContentConfigHeader.subject = localCursor1.getString(localCursor1.getColumnIndexOrThrow("sub"));
      localMmsContentConfigHeader.subjectCharset = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("sub_cs"));
      localMmsContentConfigHeader.messageclass = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("m_cls"));
      localMmsContentConfigHeader.transactionId = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("tr_id"));
      localMmsContentConfigHeader.mmsVersion = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("v"));
      localMmsContentConfigHeader.messageId = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("m_id"));
      localMmsContentConfigHeader.contentType = localCursor1.getBlob(localCursor1.getColumnIndexOrThrow("ct_t"));
      localMmsContentConfigHeader.priority = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("pri"));
      localMmsContentConfigHeader.readReport = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("rr"));
      localMmsContentConfigHeader.reportAllowed = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("rpt_a"));
      localMmsContentConfigHeader.retrieveStatus = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("retr_st"));
      localMmsContentConfigHeader.retrieveText = localCursor1.getString(localCursor1.getColumnIndexOrThrow("retr_txt"));
      localMmsContentConfigHeader.retrieveTextCharset = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("retr_txt_cs"));
      localMmsContentConfigHeader.responseStatus = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("resp_st"));
      localMmsContentConfigHeader.responseText = localCursor1.getString(localCursor1.getColumnIndexOrThrow("resp_txt"));
      localMmsContentConfigHeader.expiry = localCursor1.getLong(localCursor1.getColumnIndexOrThrow("exp"));
      localMmsContentConfigHeader.messageSize = localCursor1.getLong(localCursor1.getColumnIndexOrThrow("m_size"));
      localMmsContentConfigHeader.deliverytime = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("d_tm"));
      localMmsContentConfigHeader.deliveryReport = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("d_rpt"));
      String str3 = localCursor1.getString(localCursor1.getColumnIndexOrThrow("to_addr"));
      if (str3 != null)
        localMmsContentConfigHeader.toAddresses = gu.a(str3);
      String str4 = localCursor1.getString(localCursor1.getColumnIndexOrThrow("cc_addr"));
      if (str4 != null)
        localMmsContentConfigHeader.ccAddresses = gu.a(str4);
      String str5 = localCursor1.getString(localCursor1.getColumnIndexOrThrow("bcc_addr"));
      if (str5 != null)
        localMmsContentConfigHeader.bccAddresses = gu.a(str5);
      localMmsData.mmsContentConfigHeader = localMmsContentConfigHeader;
    }
    if (localCursor2 != null)
      localCursor2.close();
    parammk.mmsData = localMmsData;
  }

  private boolean c(int paramInt)
  {
    String str1 = "SELECT * FROM " + this.e + " WHERE sl_id =" + paramInt;
    Cursor localCursor = this.b.a(str1);
    while (true)
      if ((localCursor != null) && (localCursor.moveToFirst()) && (!localCursor.isAfterLast()))
      {
        String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("dp"));
        File localFile;
        if (str2 != null)
        {
          new StringBuilder("delete part file: ").append(str2).toString();
          localFile = new File(str2);
        }
        try
        {
          if (localFile.exists())
            localFile.delete();
          localCursor.moveToNext();
        }
        catch (SecurityException localSecurityException)
        {
          while (true)
            localSecurityException.printStackTrace();
        }
      }
    if (localCursor != null)
      localCursor.close();
    if (this.b.a(this.e, "sl_id=" + paramInt, null) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int a(long paramLong1, long paramLong2)
  {
    String str = "SELECT count(*) FROM " + this.c + " WHERE date>=" + paramLong1 + " AND date<" + paramLong2;
    Cursor localCursor = this.b.a(str);
    boolean bool = localCursor.moveToFirst();
    int j = 0;
    if (bool)
      j = localCursor.getInt(0);
    localCursor.close();
    this.b.b();
    return j;
  }

  public final long a(mk parammk, FilterResult paramFilterResult)
  {
    long l = -1L;
    if (parammk != null)
    {
      parammk.j = 0;
      switch (paramFilterResult.mFilterfiled)
      {
      default:
      case 256:
      case 4:
      case 64:
      }
    }
    while (true)
    {
      ContentValues localContentValues = gu.a(parammk, false);
      l = this.b.a(this.c, "id", localContentValues);
      parammk.id = ((int)l);
      if ((l >= 0L) && (parammk.protocolType == 1))
      {
        l = a(parammk, parammk.id, true);
        if (l < 0L)
          this.b.a(this.c, "id=" + parammk.id, null);
      }
      this.b.b();
      if (l >= 0L)
      {
        if (("securesmslog".equals(this.c)) && (parammk.protocolType == 1) && (parammk.mmsData != null) && (parammk.mmsData.mmsNotificationIndHeader != null))
        {
          if (ui.g == null)
            ui.g = new ui();
          ui.g.a(new ml(parammk, parammk.id));
        }
        if ("securesmslog".equals(this.c))
          this.h.c(System.currentTimeMillis());
      }
      return l;
      parammk.j = 1;
      continue;
      if ((paramFilterResult.mParams != null) && (paramFilterResult.mParams.length > 0) && ((paramFilterResult.mParams[0] instanceof IIntelligentSmsChecker.CheckResult)))
        switch (((IIntelligentSmsChecker.CheckResult)paramFilterResult.mParams[0]).mContentType)
        {
        case 4:
        case 5:
        default:
          break;
        case 3:
          parammk.j = 2;
          break;
        case 6:
          parammk.j = 3;
        }
    }
  }

  public final long a(mk parammk, boolean paramBoolean)
  {
    ContentValues localContentValues = gu.a(parammk, false);
    long l = this.b.a(this.c, "id", localContentValues);
    if (paramBoolean)
      parammk.id = ((int)l);
    new StringBuilder("count: ").append(l).toString();
    new StringBuilder("log.protocolType: ").append(parammk.protocolType).toString();
    if ((l >= 0L) && (parammk.protocolType == 1))
    {
      int j = (int)l;
      l = a(parammk, j, paramBoolean);
      if (l < 0L)
        this.b.a(this.c, "id=" + j, null);
    }
    this.b.b();
    if ((l >= 0L) && ("securesmslog".equals(this.c)))
      this.h.c(System.currentTimeMillis());
    return l;
  }

  public final List<mk> a()
  {
    Object localObject = new ArrayList();
    String str = "SELECT * FROM " + this.c + " ORDER BY date DESC";
    Cursor localCursor = this.b.a(str);
    if (localCursor != null)
      localObject = a(localCursor);
    this.b.b();
    return localObject;
  }

  public final List<mk> a(String paramString)
  {
    Object localObject = new ArrayList();
    if (paramString.indexOf('*') < 0)
    {
      String str = "SELECT * FROM " + this.c + " WHERE address" + fu.g(paramString);
      Cursor localCursor = this.b.a(str);
      localObject = a(localCursor);
      if (localCursor != null)
        localCursor.close();
      this.b.b();
    }
    return localObject;
  }

  public final List<mk> a(String paramString1, String paramString2)
  {
    Object localObject = new ArrayList();
    if (paramString1.indexOf('*') < 0)
    {
      long l = System.currentTimeMillis();
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("SELECT * FROM " + this.c + " WHERE address" + fu.g(paramString1));
      localStringBuffer.append(" AND date>" + (l - 259200000L) + " AND date<" + (l + 259200000L));
      if (paramString2 != null)
        localStringBuffer.append(" AND body LIKE '" + paramString2 + "%'");
      Cursor localCursor = this.b.a(localStringBuffer.toString());
      if ((localCursor != null) && (localCursor.moveToFirst()))
        localObject = a(localCursor);
      if (localCursor != null)
        localCursor.close();
      this.b.b();
    }
    return localObject;
  }

  public final mk a(int paramInt)
  {
    String str = "SELECT * FROM " + this.c + " WHERE id=" + paramInt;
    Cursor localCursor = this.b.a(str);
    mk localmk;
    int i9;
    if (localCursor.moveToFirst())
    {
      localmk = null;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToFirst();
        localmk = null;
        if (bool)
        {
          int j = localCursor.getColumnIndex("id");
          int k = localCursor.getColumnIndexOrThrow("thread_id");
          int m = localCursor.getColumnIndexOrThrow("address");
          int n = localCursor.getColumnIndexOrThrow("person");
          int i1 = localCursor.getColumnIndexOrThrow("date");
          int i2 = localCursor.getColumnIndexOrThrow("protocol");
          int i3 = localCursor.getColumnIndexOrThrow("read");
          int i4 = localCursor.getColumnIndexOrThrow("status");
          int i5 = localCursor.getColumnIndexOrThrow("type");
          int i6 = localCursor.getColumnIndexOrThrow("subject");
          int i7 = localCursor.getColumnIndexOrThrow("body");
          int i8 = localCursor.getColumnIndexOrThrow("service_center");
          i9 = localCursor.getColumnIndex("read_extend");
          localmk = new mk();
          localmk.id = localCursor.getInt(j);
          localmk.e = localCursor.getInt(k);
          localmk.a(localCursor.getString(m));
          localmk.b = localCursor.getInt(n);
          localmk.date = localCursor.getLong(i1);
          int i10 = localCursor.getInt(i2);
          localmk.protocolType = (i10 & 0xFF);
          localmk.j = (i10 >> 8);
          localmk.read = localCursor.getInt(i3);
          localmk.h = localCursor.getInt(i4);
          localmk.type = localCursor.getInt(i5);
          localmk.c = localCursor.getString(i6);
          localmk.body = localCursor.getString(i7);
          localmk.d = localCursor.getString(i8);
          if (i9 != -1)
            break label432;
          localmk.a = localmk.read;
          if (localmk.protocolType == 1)
            c(localmk);
        }
        localCursor.close();
      }
    }
    while (true)
    {
      this.b.b();
      return localmk;
      label432: localmk.a = localCursor.getInt(i9);
      break;
      localCursor.close();
      localmk = null;
    }
  }

  public final boolean a(List<mk> paramList)
  {
    this.b.a(new jq(this, paramList));
    if ("securesmslog".equals(this.c))
      this.h.c(System.currentTimeMillis());
    return true;
  }

  public final boolean a(mk parammk)
  {
    mk localmk = this.g.b(parammk.e);
    if (parammk.protocolType != 1)
    {
      String str = parammk.getBody();
      if (str.startsWith(this.f.getResources().getString(2131428587)))
        str = str.substring(4);
      parammk.setBody(str);
    }
    if (parammk.a == 0)
    {
      parammk.read = 0;
      if ((this.g.insert(parammk) != null) && (b(parammk)))
        break label104;
    }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      parammk.read = 1;
      break;
      label104: if ((localmk != null) && (localmk.date - parammk.date > 0L))
      {
        this.g.remove(localmk);
        this.g.insert(localmk);
      }
    }
  }

  public final int b()
  {
    String str = "SELECT count(*) FROM " + this.c;
    Cursor localCursor = this.b.a(str);
    boolean bool = localCursor.moveToFirst();
    int j = 0;
    if (bool)
      j = localCursor.getInt(0);
    localCursor.close();
    this.b.b();
    return j;
  }

  public final void b(int paramInt)
  {
    String str = "update " + this.c + " set read_extend=1 where id" + "=" + paramInt;
    this.b.b(str);
    this.b.b();
  }

  public final boolean b(String paramString)
  {
    return b(a(paramString));
  }

  public final boolean b(String paramString1, String paramString2)
  {
    return this.i.edit().putString(fu.f(paramString1), paramString2).commit();
  }

  public final boolean b(List<mk> paramList)
  {
    mk localmk1;
    if (paramList.size() > 0)
    {
      localmk1 = (mk)paramList.get(0);
      if (localmk1 == null)
        break label173;
    }
    ArrayList localArrayList;
    label173: for (mk localmk2 = this.g.b(localmk1.e); ; localmk2 = null)
    {
      localArrayList = new ArrayList();
      for (int j = -1 + paramList.size(); j >= 0; j--)
      {
        mk localmk3 = (mk)paramList.get(j);
        if (localmk3.protocolType == 1)
        {
          localArrayList.add(localmk3);
          paramList.remove(j);
        }
        String str = localmk3.getBody();
        if (str.startsWith(this.f.getResources().getString(2131428587)))
          str = str.substring(4);
        localmk3.body = str;
        localmk3.read = ((mk)paramList.get(0)).a;
      }
      localmk1 = null;
      break;
    }
    if ((!this.g.a(paramList)) || (!c(paramList)));
    for (boolean bool = false; bool; bool = true)
    {
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
        a((mk)localIterator.next());
      if ((localmk2 != null) && (localmk2.date < localmk1.date))
      {
        this.g.remove(localmk2);
        this.g.insert(localmk2);
      }
    }
    return bool;
  }

  public final boolean b(mk parammk)
  {
    int j = 1;
    int k = parammk.id;
    int m = parammk.protocolType;
    new StringBuilder("deleteByID: ").append(k).toString();
    if (m == j)
    {
      c(k);
      this.b.a(this.d, "sl_id=" + k, null);
    }
    int n = this.b.a(this.c, "id=" + k, null);
    this.b.b();
    if ((n > 0) && ("securesmslog".equals(this.c)))
      this.h.c(System.currentTimeMillis());
    if (n > 0);
    while (true)
    {
      return j;
      j = 0;
    }
  }

  public final String c(String paramString)
  {
    return this.i.getString(fu.f(paramString), "");
  }

  public final boolean c()
  {
    this.b.c(this.e);
    this.b.c(this.c);
    this.b.b();
    if ("securesmslog".equals(this.c))
      this.h.c(System.currentTimeMillis());
    return true;
  }

  public final boolean c(List<mk> paramList)
  {
    boolean bool;
    if (paramList.size() > 0)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(" IN (");
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        mk localmk = (mk)localIterator.next();
        localStringBuffer.append(localmk.id + ",");
      }
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(")");
      String str1 = "sl_id" + localStringBuffer.toString();
      String str2 = "SELECT * FROM " + this.e + " WHERE " + str1;
      Cursor localCursor = this.b.a(str2);
      while (true)
        if ((localCursor != null) && (localCursor.moveToFirst()) && (!localCursor.isAfterLast()))
        {
          String str5 = localCursor.getString(localCursor.getColumnIndexOrThrow("dp"));
          File localFile;
          if (str5 != null)
            localFile = new File(str5);
          try
          {
            if (localFile.exists())
              localFile.delete();
            localCursor.moveToNext();
          }
          catch (SecurityException localSecurityException)
          {
            while (true)
              localSecurityException.printStackTrace();
          }
        }
      if (localCursor != null)
        localCursor.close();
      this.b.a(this.e, str1, null);
      String str3 = "sl_id" + localStringBuffer.toString();
      this.b.a(this.d, str3, null);
      String str4 = "id" + localStringBuffer.toString();
      if (this.b.a(this.c, str4, null) > 0)
      {
        bool = true;
        this.b.b();
        if ((bool) && ("securesmslog".equals(this.c)))
          this.h.c(System.currentTimeMillis());
      }
    }
    while (true)
    {
      return bool;
      bool = false;
      break;
      bool = true;
    }
  }

  public final void d()
  {
    String str = "update " + this.c + " set read_extend=1";
    this.b.b(str);
    this.b.b();
  }

  public final boolean d(String paramString)
  {
    return this.i.edit().remove(fu.f(paramString)).commit();
  }

  // ERROR //
  public final int e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 52	jp:b	Lhs;
    //   6: aload_0
    //   7: getfield 41	jp:c	Ljava/lang/String;
    //   10: iconst_1
    //   11: anewarray 559	java/lang/String
    //   14: dup
    //   15: iconst_0
    //   16: ldc 111
    //   18: aastore
    //   19: ldc_w 752
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: invokevirtual 755	hs:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   29: astore 5
    //   31: aload 5
    //   33: ifnull +40 -> 73
    //   36: aload 5
    //   38: invokeinterface 758 1 0
    //   43: istore 6
    //   45: iload 6
    //   47: istore 4
    //   49: aload 5
    //   51: ifnull +10 -> 61
    //   54: aload 5
    //   56: invokeinterface 313 1 0
    //   61: aload_0
    //   62: getfield 52	jp:b	Lhs;
    //   65: invokevirtual 546	hs:b	()V
    //   68: aload_0
    //   69: monitorexit
    //   70: iload 4
    //   72: ireturn
    //   73: iconst_0
    //   74: istore 4
    //   76: goto -27 -> 49
    //   79: astore_2
    //   80: aload_2
    //   81: astore_3
    //   82: iconst_0
    //   83: istore 4
    //   85: aload_3
    //   86: invokevirtual 759	java/lang/Exception:printStackTrace	()V
    //   89: goto -21 -> 68
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    //   97: astore_3
    //   98: goto -13 -> 85
    //
    // Exception table:
    //   from	to	target	type
    //   2	45	79	java/lang/Exception
    //   2	45	92	finally
    //   54	68	92	finally
    //   85	89	92	finally
    //   54	68	97	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jp
 * JD-Core Version:    0.6.2
 */