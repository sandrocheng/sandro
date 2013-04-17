import QQPIM.EQueryType;
import QQPIM.ETrafficTemplateType;
import QQPIM.STCloudOrderReq;
import QQPIM.STCodeResult;
import QQPIM.STQuery;
import QQPIM.STQueryInfo;
import QQPIM.STReportError;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import QQPIM.STVecCloudBak;
import QQPIM.STVecCodeResult;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.tencent.lbsapi.model.QLBSPosition;
import com.tencent.qqpimsecure.service.OperatorDataSyncTaskReceiver;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.MatchRule;
import com.tencent.tccdb.Ret;
import com.tencent.tccdb.SmsInfo;
import com.tencent.tccdb.SmsParser;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.tools.SingletonManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class wr
{
  private static wr a = null;
  private String A;
  private String B;
  private int C;
  private int D;
  private String E;
  private String F;
  private Handler G = new ws(this);
  private lt H = new wt(this);
  private ContentObserver I = new wu(this, new Handler(Looper.getMainLooper()));
  private Context b;
  private jd c = null;
  private ki d = null;
  private it e = null;
  private NetworkManager f = null;
  private wr.b g = null;
  private ho h;
  private AlarmManager i = null;
  private PendingIntent j = null;
  private List<dv<Object>> k = new ArrayList();
  private Timer l = null;
  private STQueryInfo m = null;
  private List<STQueryInfo> n = new ArrayList();
  private String o = null;
  private String p = null;
  private int q = 0;
  private boolean r = false;
  private int s = 1;
  private int t = 0;
  private long u = 0L;
  private int v = -111;
  private boolean w = true;
  private boolean x = false;
  private long y = 0L;
  private String z;

  private wr(Context paramContext)
  {
    this.b = paramContext;
    this.i = ((AlarmManager)this.b.getSystemService("alarm"));
    this.j = PendingIntent.getBroadcast(this.b, 0, new Intent(this.b, OperatorDataSyncTaskReceiver.class), 134217728);
    this.d = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.c = jd.a();
    this.e = new iu(QQPimApplication.a());
    this.h = ho.a();
    this.f = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.g = new wr.b();
  }

  private int a(SmsInfo paramSmsInfo)
  {
    ff.a("kfc", "doUpdateMatchRule");
    int i1;
    if (paramSmsInfo == null)
      i1 = -111;
    while (true)
    {
      return i1;
      String str1 = paramSmsInfo.sender;
      String str2 = paramSmsInfo.sms;
      if ((str1 == null) || ("".equals(str1)) || (str2 == null) || ("".equals(str2)))
      {
        ff.a("kfc", "doUpdateMatchRule, sms is null! xxxxxxxx");
        i1 = -111;
      }
      else
      {
        ff.a("kfc", "update match rule for " + str1 + " " + str2);
        String str3 = "";
        STQueryInfo localSTQueryInfo = this.c.b(EQueryType.E_QUERY_TRAFFIC.value());
        if (localSTQueryInfo != null)
          str3 = localSTQueryInfo.strCode;
        int i2 = (int)(System.currentTimeMillis() / 1000L);
        String str4 = this.h.cr() + "|" + this.h.cs();
        String str5 = this.h.cu();
        int i3 = (int)(this.e.getUsedForMonth() / 1024L);
        String str6 = ft.a(this.b);
        int i4 = (int)(this.e.getTotalForMonth() / 1024L);
        if (this.s == 1);
        AtomicReference localAtomicReference1;
        int i5;
        for (boolean bool = true; ; bool = false)
        {
          STSmsInfo localSTSmsInfo = new STSmsInfo(i2, str1, str2, str4, str5, str3, 10010, i3, str6, i4, bool);
          localAtomicReference1 = new AtomicReference();
          AtomicReference localAtomicReference2 = new AtomicReference();
          i5 = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getTrafficTemplate(localSTSmsInfo, localAtomicReference1, localAtomicReference2);
          if (i5 != 0)
            break label551;
          STRetInfo localSTRetInfo = (STRetInfo)localAtomicReference2.get();
          if (localSTRetInfo == null)
            break label441;
          int i6 = localSTRetInfo.nStopType;
          ff.a("kfc", "stopType: " + i6 + " msg: " + localSTRetInfo.strMsg);
          if (1 != i6)
            break label433;
          ff.a("kfc", "stop, free or TD");
          this.c.i(i6);
          this.c.b(i6, localSTRetInfo.strMsg);
          this.c.e(System.currentTimeMillis());
          this.c.b();
          i1 = -34;
          break;
        }
        label433: ff.a("kfc", "donot stop");
        label441: STTrafficTemplate localSTTrafficTemplate = (STTrafficTemplate)localAtomicReference1.get();
        if ((localSTTrafficTemplate != null) && (localSTTrafficTemplate.getMatchRules() != null))
        {
          ArrayList localArrayList = localSTTrafficTemplate.getMatchRules();
          if (localArrayList.size() > 0)
          {
            this.c.b();
            this.c.a(localArrayList);
            this.c.c(System.currentTimeMillis());
            ff.a("kfc", "doUpdateMatchRule success");
            i1 = 0;
          }
          else
          {
            ff.a("kfc", "Match rules from server is empty! xxxxxxxxxxx");
            i1 = -31;
          }
        }
        else
        {
          ff.a("kfc", "Match rules from server is null! xxxxxxxxxxx");
          i1 = -32;
          continue;
          label551: ff.a("kfc", "getTrafficTemplate error xxxxxxxxxxx, errorCode =  " + i5);
          i1 = -33;
        }
      }
    }
  }

  private int a(List<MatchRule> paramList, SmsInfo paramSmsInfo, boolean paramBoolean)
  {
    int i1 = 1;
    StringBuilder localStringBuilder = new StringBuilder("doFlowAnalysis1, match rule type: ");
    if (paramBoolean);
    AtomicReference localAtomicReference;
    int i9;
    int i10;
    for (String str = "used"; ; str = "left")
    {
      ff.a("kfc", str);
      if ((paramList == null) || (paramList.size() <= 0))
        break label534;
      localAtomicReference = new AtomicReference();
      if (!paramBoolean)
        break label229;
      Iterator localIterator2 = paramList.iterator();
      i9 = 0;
      i10 = 0;
      while (localIterator2.hasNext())
      {
        MatchRule localMatchRule2 = (MatchRule)localIterator2.next();
        int i12 = SmsParser.getNumberEntrance(this.b, paramSmsInfo, localMatchRule2, localAtomicReference);
        i11 = 0;
        if (i12 != 0)
          break label158;
        i10 += ((Ret)localAtomicReference.get()).number;
        i9 = i1;
      }
    }
    int i11 = i9;
    label158: if (i11 != 0)
    {
      ff.a("kfc", "used(K): " + i10);
      if ((i10 > 0) && (this.s != 2))
      {
        this.e.setUsedForMonth(i10 << 10);
        this.f.notifyConfigChange();
      }
    }
    label229: int i5;
    int i2;
    while (true)
    {
      return i1;
      i1 = -42;
      continue;
      Iterator localIterator1 = paramList.iterator();
      int i3 = 0;
      int i4 = 0;
      while (localIterator1.hasNext())
      {
        MatchRule localMatchRule1 = (MatchRule)localIterator1.next();
        if (SmsParser.getNumberEntrance(this.b, paramSmsInfo, localMatchRule1, localAtomicReference) == 0)
        {
          i4 += ((Ret)localAtomicReference.get()).number;
          i3 = i1;
        }
        else
        {
          i3 = 0;
        }
      }
      if (i3 == 0)
        break label527;
      ff.a("kfc", "left(K): " + i4);
      long l1 = this.e.getTotalForMonth();
      if (l1 == 0L)
      {
        if (!this.r)
          break label563;
        c(-45);
        i1 = -45;
      }
      else if (i4 == 0)
      {
        if (this.e.getUsedForMonth() < l1)
        {
          int i8 = (int)(l1 / 1024L);
          if (this.s != 2)
          {
            this.e.setUsedForMonth(i8 << 10);
            this.f.notifyConfigChange();
          }
        }
        i1 = 2;
      }
      else
      {
        i5 = (int)(l1 / 1024L - i4);
        if (i5 >= 0)
          break;
        it localit = this.e;
        int i7 = this.s;
        boolean bool = false;
        if (i7 == 0)
          bool = i1;
        localit.a(i1, bool);
        i2 = -41;
      }
    }
    if (this.s != 2)
    {
      this.e.setUsedForMonth(i5 << 10);
      this.f.notifyConfigChange();
    }
    label527: label534: label563: for (int i6 = 2; ; i6 = -45)
    {
      i2 = i6;
      break;
      i2 = -42;
      break;
      ff.a("kfc", "doFlowAnalysis1, rules is empty! xxxxxx, used template " + paramBoolean);
      i2 = -46;
      break;
    }
  }

  public static wr a(Context paramContext)
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new wr(paramContext);
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt)
  {
    ff.a("kfc", "start");
    ff.a("kfc", "prepareQueryInfo");
    int i1;
    switch (paramInt)
    {
    default:
      i1 = 1;
      label46: if (i1 == 0)
      {
        this.v = -54;
        int i2 = this.v;
        if (paramInt != 2)
          a(i2, paramInt, "ignore", "ignore");
        if (this.r)
          c(-54);
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.n.clear();
      this.m = this.c.b(EQueryType.E_QUERY_TRAFFIC.value());
      if (this.c.v())
      {
        ff.a("kfc", "need select query code");
        if (this.c.g())
        {
          ff.a("kfc", "need update query code");
          t();
        }
        ArrayList localArrayList1 = this.c.a(EQueryType.E_QUERY_TRAFFIC.value(), "00000");
        if ((localArrayList1 == null) || (localArrayList1.size() == 0));
        while (this.m != null)
        {
          Iterator localIterator1 = localArrayList1.iterator();
          while (localIterator1.hasNext())
          {
            STQueryInfo localSTQueryInfo1 = (STQueryInfo)localIterator1.next();
            if ((this.m.getNQuerytype() != localSTQueryInfo1.getNQuerytype()) || (!this.m.getStrCode().equals(localSTQueryInfo1.getStrCode())) || (!this.m.getStrPort().equals(localSTQueryInfo1.getStrPort())))
              this.n.add(localSTQueryInfo1);
          }
          ff.a("kfc", "before makeUnique, size = " + localArrayList1.size());
          ArrayList localArrayList2 = new ArrayList();
          localArrayList2.addAll(localArrayList1);
          localArrayList1.clear();
          Iterator localIterator2 = localArrayList2.iterator();
          while (localIterator2.hasNext())
          {
            STQueryInfo localSTQueryInfo2 = (STQueryInfo)localIterator2.next();
            if (!localArrayList1.contains(localSTQueryInfo2))
              localArrayList1.add(localSTQueryInfo2);
          }
          ff.a("kfc", "after makeUnique, size = " + localArrayList1.size());
        }
        this.n = localArrayList1;
        if ((this.n != null) && (this.n.size() > 0))
          this.m = ((STQueryInfo)this.n.remove(0));
      }
      while (true)
      {
        ff.a("kfc", "padding query count = " + this.n.size());
        if (this.m != null)
          break;
        ff.a("kfc", "no query code");
        i1 = 0;
        break label46;
        ff.a("kfc", "no need select query code");
      }
      this.m = this.c.b(EQueryType.E_QUERY_TRAFFIC.value());
      if (this.m != null)
      {
        ff.a("kfc", "have success record, do sync task and report");
        this.n.clear();
        break;
      }
      ff.a("kfc", "no success record, do nothing");
      i1 = 0;
      break label46;
      u();
      if (this.r)
        ha.b(this.b, 2131427707);
      this.v = -111;
      this.w = true;
      q();
    }
  }

  private void a(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    int i1 = 1;
    STReportError localSTReportError = new STReportError();
    localSTReportError.nerrorcode = paramInt1;
    if (paramString1 != null)
    {
      localSTReportError.sms = paramString1;
      localSTReportError.ntime = ((int)(System.currentTimeMillis() / 1000L));
      localSTReportError.strarea = (this.h.cr() + "|" + this.h.cs());
      localSTReportError.strsimtype = this.h.cu();
      if (paramString2 == null)
        break label198;
    }
    while (true)
    {
      localSTReportError.strqueryorder = paramString2;
      if (i1 == paramInt2)
        i1 = 0;
      localSTReportError.noptype = i1;
      localSTReportError.strversion = qx.a().f();
      localSTReportError.nCollocateNum = ((int)(this.e.getTotalForMonth() / 1024L));
      localSTReportError.nUsedNum = ((int)(this.e.getUsedForMonth() / 1024L));
      this.c.a(localSTReportError);
      return;
      paramString1 = "-";
      break;
      label198: paramString2 = "-";
    }
  }

  // ERROR //
  private void a(ArrayList<QQPIM.STCloudOrderBak> paramArrayList)
  {
    // Byte code:
    //   0: ldc 214
    //   2: ldc_w 562
    //   5: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   8: aload_1
    //   9: invokevirtual 563	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   12: astore_2
    //   13: aload_2
    //   14: invokeinterface 396 1 0
    //   19: ifeq +608 -> 627
    //   22: aload_2
    //   23: invokeinterface 399 1 0
    //   28: checkcast 565	QQPIM/STCloudOrderBak
    //   31: astore_3
    //   32: ldc 214
    //   34: new 241	java/lang/StringBuilder
    //   37: dup
    //   38: ldc_w 567
    //   41: invokespecial 246	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_3
    //   45: getfield 570	QQPIM/STCloudOrderBak:nAct	I
    //   48: invokevirtual 337	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   51: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   57: aload_3
    //   58: getfield 570	QQPIM/STCloudOrderBak:nAct	I
    //   61: tableswitch	default:+59 -> 120, 1:+-48->13, 2:+62->123, 3:+73->134, 4:+144->205, 5:+198->259, 6:+209->270, 7:+228->289, 8:+379->440, 9:+441->502, 10:+487->548, 11:+535->596
    //   121: impdep2
    //   122: fcmpl
    //   123: aload_0
    //   124: aload_3
    //   125: getfield 573	QQPIM/STCloudOrderBak:nFrequncy	I
    //   128: invokespecial 575	wr:b	(I)V
    //   131: goto -118 -> 13
    //   134: aload_3
    //   135: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   138: ifnull -125 -> 13
    //   141: aload_3
    //   142: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   145: invokevirtual 580	java/util/ArrayList:size	()I
    //   148: ifle -135 -> 13
    //   151: aload_0
    //   152: getfield 70	wr:c	Ljd;
    //   155: getstatic 262	QQPIM/EQueryType:E_QUERY_TRAFFIC	LQQPIM/EQueryType;
    //   158: invokevirtual 266	QQPIM/EQueryType:value	()I
    //   161: invokevirtual 582	jd:d	(I)V
    //   164: aload_0
    //   165: getfield 70	wr:c	Ljd;
    //   168: ldc_w 464
    //   171: aload_3
    //   172: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   175: invokevirtual 585	jd:a	(Ljava/lang/String;Ljava/util/List;)V
    //   178: aload_0
    //   179: getfield 70	wr:c	Ljd;
    //   182: iconst_1
    //   183: invokevirtual 588	jd:c	(Z)V
    //   186: aload_0
    //   187: getfield 70	wr:c	Ljd;
    //   190: iconst_0
    //   191: invokevirtual 590	jd:f	(I)V
    //   194: aload_0
    //   195: getfield 70	wr:c	Ljd;
    //   198: iconst_0
    //   199: invokevirtual 592	jd:d	(Z)V
    //   202: goto -189 -> 13
    //   205: aload_3
    //   206: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   209: ifnull -196 -> 13
    //   212: aload_3
    //   213: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   216: invokevirtual 580	java/util/ArrayList:size	()I
    //   219: ifle -206 -> 13
    //   222: aload_0
    //   223: getfield 70	wr:c	Ljd;
    //   226: aload_3
    //   227: getfield 579	QQPIM/STCloudOrderBak:vecCodeUpdate	Ljava/util/ArrayList;
    //   230: iconst_0
    //   231: invokevirtual 594	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   234: checkcast 271	QQPIM/STQueryInfo
    //   237: invokevirtual 597	jd:a	(LQQPIM/STQueryInfo;)V
    //   240: aload_0
    //   241: getfield 70	wr:c	Ljd;
    //   244: iconst_0
    //   245: invokevirtual 590	jd:f	(I)V
    //   248: aload_0
    //   249: getfield 70	wr:c	Ljd;
    //   252: iconst_0
    //   253: invokevirtual 592	jd:d	(Z)V
    //   256: goto -243 -> 13
    //   259: aload_0
    //   260: getfield 70	wr:c	Ljd;
    //   263: iconst_1
    //   264: invokevirtual 592	jd:d	(Z)V
    //   267: goto -254 -> 13
    //   270: aload_0
    //   271: getfield 70	wr:c	Ljd;
    //   274: iconst_0
    //   275: invokevirtual 590	jd:f	(I)V
    //   278: aload_0
    //   279: getfield 70	wr:c	Ljd;
    //   282: iconst_0
    //   283: invokevirtual 592	jd:d	(Z)V
    //   286: goto -273 -> 13
    //   289: aload_3
    //   290: getfield 600	QQPIM/STCloudOrderBak:strTime	Ljava/lang/String;
    //   293: ifnull -280 -> 13
    //   296: ldc 231
    //   298: aload_3
    //   299: getfield 600	QQPIM/STCloudOrderBak:strTime	Ljava/lang/String;
    //   302: invokevirtual 237	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   305: ifne -292 -> 13
    //   308: aload_3
    //   309: getfield 600	QQPIM/STCloudOrderBak:strTime	Ljava/lang/String;
    //   312: ldc_w 602
    //   315: invokevirtual 606	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   318: astore 6
    //   320: aload 6
    //   322: arraylength
    //   323: iconst_3
    //   324: if_icmplt -311 -> 13
    //   327: aload_0
    //   328: getfield 70	wr:c	Ljd;
    //   331: new 241	java/lang/StringBuilder
    //   334: dup
    //   335: invokespecial 283	java/lang/StringBuilder:<init>	()V
    //   338: aload 6
    //   340: iconst_0
    //   341: aaload
    //   342: invokestatic 612	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   345: invokevirtual 615	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   348: ldc_w 288
    //   351: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: aload 6
    //   356: iconst_1
    //   357: aaload
    //   358: invokestatic 612	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   361: invokevirtual 615	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   364: ldc_w 288
    //   367: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: aload 6
    //   372: iconst_2
    //   373: aaload
    //   374: invokestatic 612	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   377: invokevirtual 615	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokevirtual 617	jd:d	(Ljava/lang/String;)V
    //   386: aload_0
    //   387: getfield 80	wr:i	Landroid/app/AlarmManager;
    //   390: aload_0
    //   391: getfield 82	wr:j	Landroid/app/PendingIntent;
    //   394: invokevirtual 621	android/app/AlarmManager:cancel	(Landroid/app/PendingIntent;)V
    //   397: aload_0
    //   398: invokevirtual 623	wr:a	()V
    //   401: aload_0
    //   402: getfield 70	wr:c	Ljd;
    //   405: iconst_0
    //   406: invokevirtual 590	jd:f	(I)V
    //   409: aload_0
    //   410: getfield 70	wr:c	Ljd;
    //   413: iconst_0
    //   414: invokevirtual 592	jd:d	(Z)V
    //   417: goto -404 -> 13
    //   420: astore 5
    //   422: aload 5
    //   424: invokevirtual 626	java/lang/Exception:printStackTrace	()V
    //   427: goto -414 -> 13
    //   430: astore 7
    //   432: aload 7
    //   434: invokevirtual 626	java/lang/Exception:printStackTrace	()V
    //   437: goto -40 -> 397
    //   440: ldc 214
    //   442: new 241	java/lang/StringBuilder
    //   445: dup
    //   446: ldc_w 628
    //   449: invokespecial 246	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: aload_3
    //   453: getfield 631	QQPIM/STCloudOrderBak:nTimeOut	I
    //   456: invokevirtual 337	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   459: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   462: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   465: aload_3
    //   466: getfield 631	QQPIM/STCloudOrderBak:nTimeOut	I
    //   469: ifle -456 -> 13
    //   472: aload_0
    //   473: getfield 70	wr:c	Ljd;
    //   476: aload_3
    //   477: getfield 631	QQPIM/STCloudOrderBak:nTimeOut	I
    //   480: invokevirtual 633	jd:k	(I)V
    //   483: aload_0
    //   484: getfield 70	wr:c	Ljd;
    //   487: iconst_0
    //   488: invokevirtual 590	jd:f	(I)V
    //   491: aload_0
    //   492: getfield 70	wr:c	Ljd;
    //   495: iconst_0
    //   496: invokevirtual 592	jd:d	(Z)V
    //   499: goto -486 -> 13
    //   502: ldc 214
    //   504: new 241	java/lang/StringBuilder
    //   507: dup
    //   508: ldc_w 635
    //   511: invokespecial 246	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   514: aload_3
    //   515: getfield 638	QQPIM/STCloudOrderBak:vecPort	Ljava/util/ArrayList;
    //   518: invokevirtual 615	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   521: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   524: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   527: aload_3
    //   528: getfield 638	QQPIM/STCloudOrderBak:vecPort	Ljava/util/ArrayList;
    //   531: ifnull -518 -> 13
    //   534: aload_0
    //   535: getfield 70	wr:c	Ljd;
    //   538: aload_3
    //   539: getfield 638	QQPIM/STCloudOrderBak:vecPort	Ljava/util/ArrayList;
    //   542: invokevirtual 640	jd:b	(Ljava/util/List;)V
    //   545: goto -532 -> 13
    //   548: ldc 214
    //   550: ldc_w 642
    //   553: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   556: aload_0
    //   557: getfield 70	wr:c	Ljd;
    //   560: iconst_1
    //   561: invokevirtual 644	jd:b	(Z)V
    //   564: aload_0
    //   565: getfield 70	wr:c	Ljd;
    //   568: iconst_1
    //   569: invokevirtual 588	jd:c	(Z)V
    //   572: aload_0
    //   573: invokespecial 462	wr:t	()I
    //   576: pop
    //   577: aload_0
    //   578: getfield 70	wr:c	Ljd;
    //   581: iconst_0
    //   582: invokevirtual 590	jd:f	(I)V
    //   585: aload_0
    //   586: getfield 70	wr:c	Ljd;
    //   589: iconst_0
    //   590: invokevirtual 592	jd:d	(Z)V
    //   593: goto -580 -> 13
    //   596: ldc 214
    //   598: ldc_w 646
    //   601: invokestatic 221	ff:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   604: aload_0
    //   605: invokespecial 648	wr:w	()V
    //   608: aload_0
    //   609: getfield 70	wr:c	Ljd;
    //   612: iconst_0
    //   613: invokevirtual 590	jd:f	(I)V
    //   616: aload_0
    //   617: getfield 70	wr:c	Ljd;
    //   620: iconst_0
    //   621: invokevirtual 592	jd:d	(Z)V
    //   624: goto -611 -> 13
    //   627: return
    //
    // Exception table:
    //   from	to	target	type
    //   308	386	420	java/lang/Exception
    //   397	417	420	java/lang/Exception
    //   432	437	420	java/lang/Exception
    //   386	397	430	java/lang/Exception
  }

  public static void a(String[] paramArrayOfString, List<String> paramList1, List<String> paramList2)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      for (int i1 = 0; i1 < paramArrayOfString.length; i1++)
      {
        String[] arrayOfString = paramArrayOfString[i1].split(",");
        paramList1.add(arrayOfString[0]);
        paramList2.add(arrayOfString[1]);
      }
  }

  private int b(String paramString1, String paramString2)
  {
    int i1;
    SmsInfo localSmsInfo;
    label281: int i2;
    int i5;
    int i4;
    try
    {
      ff.a("kfc", "doFlowAnalysis");
      if ((paramString1 == null) || ("".equals(paramString1)) || (paramString2 == null) || ("".equals(paramString2)))
      {
        ff.a("kfc", "doFlowAnalysis1, sms is null! xxxxxxx");
        i1 = -43;
      }
      while (true)
      {
        return i1;
        localSmsInfo = new SmsInfo(paramString1, paramString2);
        AtomicReference localAtomicReference = new AtomicReference();
        try
        {
          if (SmsParser.getWrongSmsType(this.b, localSmsInfo, localAtomicReference) == 0)
            break label523;
          ff.a("kfc", "xxxxxx bad sms: " + paramString1 + " " + paramString2);
          i1 = -44;
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
          break label523;
        }
        List localList1 = this.c.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value());
        if ((localList1 == null) || (localList1.size() <= 0))
          break label368;
        i1 = a(localList1, localSmsInfo, true);
        ff.a("kfc", "try used type match rules, ret = " + i1);
        if (i1 != -42)
          break label529;
        ff.a("kfc", "try used type failed, now try left type");
        List localList3 = this.c.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value());
        if ((localList3 == null) || (localList3.size() <= 0))
          break;
        i1 = a(localList3, localSmsInfo, false);
        ff.a("kfc", "try left type match rules, ret = " + i1);
        break label529;
        if (i2 != 0)
          break label513;
        ff.a("kfc", "both unmatch or no rule, now update match rules and try again");
        i5 = a(localSmsInfo);
        if (i5 != 0)
          break label458;
        ff.a("kfc", "update match rules success, now analysis the sms with new match rules");
        i4 = 1;
        break label546;
        label321: if (i4 != 0)
          break label506;
        ff.a("kfc", "doFlowAnalysis, result = " + i1);
      }
    }
    finally
    {
    }
    ff.a("kfc", "left type match rules is empty");
    break label529;
    label368: ff.a("kfc", "use type match rules is empty, now try left type");
    List localList2 = this.c.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value());
    if ((localList2 != null) && (localList2.size() > 0))
    {
      i1 = a(localList2, localSmsInfo, false);
      ff.a("kfc", "try left type match rules, ret = " + i1);
    }
    else
    {
      ff.a("kfc", "match rules is empty");
      i1 = -46;
      break label529;
      label458: if (-34 == i5)
        break label552;
      this.c.a(localSmsInfo);
      break label552;
    }
    while (true)
    {
      ff.a("kfc", "doFlowAnalysis, update match rules failed, xxxxxxxxx errCode = " + i5);
      i4 = 0;
      break label546;
      label506: i2 = i3;
      break;
      label513: label523: label529: 
      do
      {
        i3 = i2;
        i4 = 0;
        break label321;
        i2 = 0;
        break;
        if (i1 == -42)
          break label281;
      }
      while (i1 != -46);
      break label281;
      label546: int i3 = 1;
      break label321;
      label552: if (i1 != -42)
        i1 = i5;
    }
  }

  private void b(int paramInt)
  {
    if (paramInt > 0)
      this.c.h(paramInt);
    String str = this.c.o();
    if (str != null)
    {
      if ((this.c.q() == this.c.s()) || (!str.startsWith("22")))
        break label107;
      ff.a("kfc", "adjustScheduleFrequency 22, adjust to max frequency");
      this.c.g(this.c.s());
    }
    while (true)
    {
      try
      {
        this.i.cancel(this.j);
        a();
        this.c.d(false);
        return;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        continue;
      }
      label107: if ((this.c.q() == this.c.t()) || (!str.startsWith("00")))
        continue;
      ff.a("kfc", "adjustScheduleFrequency 00, adjust to min frequency");
      this.c.g(this.c.t());
      try
      {
        this.i.cancel(this.j);
        a();
        this.c.d(false);
      }
      catch (Exception localException1)
      {
        while (true)
          localException1.printStackTrace();
      }
    }
  }

  private void b(boolean paramBoolean)
  {
    ff.a("kfc", "saveOneResult, isSuccess = " + paramBoolean);
    if (paramBoolean)
    {
      this.c.a(this.m);
      this.c.c(false);
      this.c.b("");
      this.c.f(0);
      this.c.a(System.currentTimeMillis());
      str3 = this.t + this.c.o();
      if (str3.length() > 10)
      {
        this.c.c(str3.substring(0, 10));
        c(true);
      }
    }
    while (!this.w)
      while (true)
      {
        String str3;
        return;
        this.c.c(str3);
      }
    ff.a("kfc", "failed, first task, save as temp result");
    this.C = this.v;
    this.D = this.t;
    String str1;
    if (this.t != 0)
    {
      str1 = this.p;
      label200: this.E = str1;
      if (this.m == null)
        break label264;
    }
    label264: for (String str2 = this.m.strPort + "|" + this.m.strCode; ; str2 = "-")
    {
      this.F = str2;
      break;
      str1 = "-";
      break label200;
    }
  }

  private static String c(String paramString)
  {
    if ((paramString.contains("[MONTH]")) || (paramString.contains("[YEAR]")))
    {
      Date localDate = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy");
      paramString = paramString.replace("[MONTH]", new SimpleDateFormat("MM").format(localDate)).replace("[YEAR]", localSimpleDateFormat.format(localDate));
    }
    return paramString;
  }

  private void c(int paramInt)
  {
    ff.a("kfc", "showErrorInfo xxxxxx " + paramInt);
    switch (paramInt)
    {
    default:
      ha.b(this.b, 2131427710);
    case 0:
    case -51:
    case -54:
    case -45:
    case -41:
    case -52:
    case -55:
    case -56:
    case -34:
    }
    while (true)
    {
      return;
      ha.b(this.b, 2131427707);
      continue;
      ha.b(this.b, 2131427710);
      continue;
      ha.b(this.b, 2131427703);
      continue;
      ha.b(this.b, 2131427704);
      continue;
      ha.b(this.b, 2131427713);
      continue;
      ha.b(this.b, 2131430272);
      continue;
      int i1 = this.c.y();
      String str = this.c.j(i1);
      if ((str == null) || ("".equals(str)))
        str = this.b.getString(2131430271);
      ha.b(this.b, str);
    }
  }

  private void c(boolean paramBoolean)
  {
    int i1 = -100;
    if (paramBoolean)
    {
      if ((this.s == 2) && (this.v == 0))
        if (this.m == null)
          break label89;
      label89: for (String str = this.m.strPort + "|" + this.m.strCode; ; str = "-")
      {
        a(i1, this.s, this.p, str);
        return;
        i1 = this.v;
        break;
      }
    }
    if ((this.s == 2) && (this.C == 0));
    while (true)
    {
      a(i1, this.s, this.E, this.F);
      break;
      i1 = this.C;
    }
  }

  private void d(boolean paramBoolean)
  {
    ff.a("kfc", "resetOperatorDataSmsMonitor " + paramBoolean);
    if (this.l != null)
    {
      this.l.cancel();
      this.l = null;
      op.a().b(this.H);
      this.b.getContentResolver().unregisterContentObserver(this.I);
    }
    if (paramBoolean)
    {
      op.a().a(this.H);
      this.b.getContentResolver().registerContentObserver(Uri.parse("content://sms"), true, this.I);
      this.l = new Timer();
      long l1 = 1000 * (60 * this.c.A());
      this.l.schedule(new wr.a(), l1);
    }
  }

  private void o()
  {
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext())
      ((dv)localIterator.next()).a(null);
  }

  private void p()
  {
    ff.a("kfc", "cancel");
    this.n.clear();
    d(false);
    this.g.a();
    this.q = 0;
  }

  private void q()
  {
    ff.a("kfc", "doOneTask");
    if (this.m == null)
    {
      ff.a("kfc", "mCurrentQueryInfo is null, doNext");
      r();
    }
    while (true)
    {
      return;
      String str1 = this.m.getStrPort();
      String str2 = this.m.getStrCode();
      if ((str2 != null) && (str1 != null) && (!"".equals(str2)) && (!"".equals(str1)))
      {
        this.q = 1;
        wr.b localb = this.g;
        localb.a = false;
        localb.b = 0;
        for (int i1 = 0; i1 < localb.c.length; i1++)
          localb.c[i1] = null;
        this.t = 0;
        this.o = null;
        this.p = null;
        this.u = System.currentTimeMillis();
        d(true);
        STQueryInfo localSTQueryInfo = this.m;
        if (localSTQueryInfo != null)
        {
          String str3 = localSTQueryInfo.getStrPort();
          String str4 = localSTQueryInfo.getStrCode();
          if ((str4 != null) && (str3 != null) && (!"".equals(str4)) && (!"".equals(str3)))
          {
            this.o = str3;
            String str5 = c(str4);
            ff.a("kfc", "sendQuerySms, " + str3 + " " + str5);
            gu.a(str3, str5);
          }
        }
      }
      else
      {
        ff.a("kfc", "mCurrentQueryInfo is empty, doNext");
        r();
      }
    }
  }

  private void r()
  {
    ff.a("kfc", "doNext");
    if ((this.n != null) && (this.n.size() > 0))
    {
      this.m = ((STQueryInfo)this.n.remove(0));
      this.w = false;
      q();
    }
    while (true)
    {
      return;
      s();
    }
  }

  private void s()
  {
    boolean bool1 = true;
    StringBuilder localStringBuilder = new StringBuilder("---------------- doFinished, isSuccess = ");
    boolean bool2;
    if (this.v == 0)
      bool2 = bool1;
    label204: int i1;
    label275: label365: label377: it localit1;
    while (true)
    {
      ff.a("kfc", bool2);
      if (this.v != 0);
      try
      {
        this.c.a(false);
        c(false);
        String str1 = this.c.l();
        if ("".equals(str1))
          this.c.b(String.valueOf(this.C));
        while (true)
        {
          str2 = this.D + this.c.o();
          if (str2.length() <= 10)
            break label365;
          this.c.c(str2.substring(0, 10));
          ff.a("kfc", "doFinished, blocktype = " + this.D);
          if (this.D != 0)
            break label377;
          this.c.l(600);
          it localit2 = this.e;
          if (this.s != 0)
            break label441;
          localit2.b(true, bool1);
          i1 = 1 + this.c.m();
          this.c.f(i1);
          ff.a("kfc", "fail times = " + i1);
          if (i1 < this.c.n())
            break label400;
          ff.a("kfc", "fail times over limit, function pause xxxxxx");
          this.c.d(true);
          b(0);
          new Thread(new wv(this)).start();
          this.q = 0;
          ff.a("kfc", "---------------- end");
          return;
          bool2 = false;
          break;
          this.c.b(this.C + "|" + str1);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          String str2;
          localException.printStackTrace();
          continue;
          this.c.c(str2);
        }
        localit1 = this.e;
        if (this.s != 0);
      }
    }
    while (true)
    {
      localit1.b(false, bool1);
      break label204;
      label400: if ((i1 < 2) || (this.c.b(EQueryType.E_QUERY_TRAFFIC.value()) != null))
        break label275;
      ff.a("kfc", "continue failed, function pause xxxxxx");
      this.c.d(true);
      break label275;
      label441: bool1 = false;
      break;
      bool1 = false;
    }
  }

  private int t()
  {
    int i1 = -22;
    int i2;
    try
    {
      ff.a("kfc", "updateConfigsV2");
      String str1 = this.h.cr();
      String str2 = this.h.cs();
      String str3 = this.h.ct();
      String str4 = this.h.cu();
      ff.a("kfc", "user setting brandCode = " + str4);
      if ((str1 == null) || (str2 == null) || (str3 == null) || (str4 == null) || ("".equals(str1)) || ("".equals(str2)) || ("".equals(str3)) || ("".equals(str4)))
      {
        ff.a("kfc", "updateConfigsV2, sim configs is null");
        this.c.e(-22);
        return i1;
      }
      STQuery localSTQuery = new STQuery(str1 + "|" + str2, str3, str4, 2);
      AtomicReference localAtomicReference = new AtomicReference();
      i2 = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getQueryInfoMulti(localSTQuery, localAtomicReference);
      if (i2 != 0)
        break label416;
      STVecCodeResult localSTVecCodeResult = (STVecCodeResult)localAtomicReference.get();
      if (localSTVecCodeResult == null)
        break label402;
      ArrayList localArrayList1 = localSTVecCodeResult.getQueryresult();
      if ((localArrayList1 == null) || (localArrayList1.size() <= 0))
        break label388;
      ff.a("kfc", "updateConfigsV2, get query info success");
      this.c.d(EQueryType.E_QUERY_TRAFFIC.value());
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        STCodeResult localSTCodeResult = (STCodeResult)localIterator.next();
        String str5 = localSTCodeResult.getStrSimetype();
        ArrayList localArrayList2 = localSTCodeResult.getQueryinfo();
        if ((str5 != null) && (!"".equals(str5)) && (localArrayList2 != null) && (localArrayList2.size() > 0))
          this.c.a(str5, localArrayList2);
      }
    }
    finally
    {
    }
    this.c.b(false);
    i1 = 0;
    while (true)
    {
      this.c.e(i1);
      break;
      label388: ff.a("kfc", "updateConfigsV2, query info from server is empty! xxxxxxxx");
      i1 = -23;
      continue;
      label402: ff.a("kfc", "updateConfigsV2, query info from server is null! xxxxxxxx");
      i1 = -24;
      continue;
      label416: ff.a("kfc", "updateConfigsV2, get query err xxxxxxx, errCode = " + i2);
      i1 = -21;
    }
  }

  private void u()
  {
    ff.a("kfc", "stopMonitorSmsSendbyUser");
    this.x = false;
    this.z = null;
    this.A = null;
    this.B = null;
    this.y = 0L;
    d(false);
  }

  private boolean v()
  {
    while (true)
    {
      try
      {
        ff.a("kfc", "updateMatchRuleIfNeed");
        int i1 = this.c.y();
        boolean bool = false;
        if (i1 != 0)
          return bool;
        List localList1 = this.c.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value());
        List localList2 = this.c.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value());
        if ((localList1.size() != 0) || (localList2.size() != 0))
          break label206;
        i2 = 1;
        if (i2 != 0)
        {
          ff.a("kfc", "noRules");
          if (this.c.h() >= 3)
            break label200;
          ff.a("kfc", "noRules, today still have opportunity, need update");
          i3 = 1;
          if (i3 == 0)
            continue;
          ff.a("kfc", "need update, now do it");
          w();
          bool = true;
          continue;
        }
        ff.a("kfc", "have rules");
        long l1 = this.c.j();
        if (System.currentTimeMillis() - l1 > 604800000L)
        {
          ff.a("kfc", "have rules, over effective time, need update");
          i3 = 1;
          continue;
          ff.a("kfc", "no need to update");
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      label200: int i3 = 0;
      continue;
      label206: int i2 = 0;
    }
  }

  private void w()
  {
    ff.a("kfc", "updateMatchRule");
    List localList = this.c.D();
    ff.a("kfc", "padding sms count = " + localList.size());
    Iterator localIterator;
    if ((localList != null) && (localList.size() > 0))
      localIterator = localList.iterator();
    while (true)
    {
      int i1;
      if (localIterator.hasNext())
      {
        i1 = a((SmsInfo)localIterator.next());
        if (i1 != 0)
          break label106;
        ff.a("kfc", "success, remove padding sms, break");
        this.c.E();
      }
      while (true)
      {
        return;
        label106: if (-34 != i1)
          break;
        ff.a("kfc", "cmd: stop traffic adjust, remove pading sms, break");
        this.c.E();
        continue;
        ff.a("kfc", "no padding sms for update match rule");
      }
    }
  }

  public final int a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ff.a("kfc", "saveCofigs");
    int i1;
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (paramString4 == null))
    {
      ff.a("kfc", "saveConfigs, sim configs is null");
      i1 = -22;
      return i1;
    }
    String str1 = this.h.cr();
    String str2 = this.h.cs();
    String str3 = this.h.ct();
    String str4 = this.h.cu();
    QLBSPosition localQLBSPosition = new iy(QQPimApplication.a()).a();
    if ((localQLBSPosition != null) && (str1 != null))
    {
      if (!str1.contains(fs.a(localQLBSPosition.getProvince())))
        break label331;
      nd.a().a(26459);
    }
    while (true)
    {
      if (((str1 != null) && (!str1.equals(paramString1))) || ((str2 != null) && (!str2.equals(paramString2))) || ((str3 != null) && (!str3.equals(paramString3))) || ((str4 != null) && (!str4.equals(paramString4))))
      {
        this.c.d(EQueryType.E_QUERY_TRAFFIC.value());
        this.c.c(EQueryType.E_QUERY_TRAFFIC.value());
        this.c.b();
        this.c.E();
        this.c.i();
      }
      this.h.A(paramString1);
      this.h.B(paramString2);
      this.h.C(paramString3);
      this.h.D(paramString4);
      String str5 = ft.c(this.b);
      this.c.a(str5);
      this.c.b(true);
      this.c.c(true);
      this.c.d(false);
      this.c.b("");
      this.c.f(0);
      i1 = t();
      break;
      label331: nd.a().a(26460);
    }
  }

  public final void a()
  {
    try
    {
      String[] arrayOfString = this.c.u().split("\\|");
      long l1 = this.c.r();
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, Integer.valueOf(arrayOfString[0]).intValue());
      localCalendar.set(12, Integer.valueOf(arrayOfString[1]).intValue());
      localCalendar.set(13, Integer.valueOf(arrayOfString[2]).intValue());
      if (Calendar.getInstance().after(localCalendar))
        localCalendar.add(5, 1);
      this.i.setRepeating(0, localCalendar.getTimeInMillis(), l1, this.j);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    int i1 = -52;
    while (true)
    {
      int i2;
      try
      {
        ff.a("kfc", "---------------- triggerSync, type = " + paramInt);
        ff.a("kfc", "doParepare");
        if (new iu(QQPimApplication.a()).getClosingDayForMonth() == Calendar.getInstance().get(5))
          ff.a("kfc", "triggerSync, closing day");
        switch (i1)
        {
        default:
          return;
          if ((this.q == 1) && (this.u != 0L) && (Math.abs(System.currentTimeMillis() - this.u) < 1000 * (60 * this.c.A())))
          {
            ff.a("kfc", "triggerSync, processing");
            i1 = -51;
            continue;
          }
          String str1 = this.c.k();
          String str2 = ft.c(this.b);
          if ((str2 == null) || (str1 == null) || (str1.equals(str2)))
            break label590;
          i2 = 0;
          break label579;
          if (this.c.y() != 0)
          {
            i1 = -56;
            continue;
          }
          if ((1 != paramInt) || (!this.c.x()))
            break label596;
          i1 = -53;
          break;
        case 0:
          this.s = paramInt;
          this.r = paramBoolean;
          ff.a("kfc", "ok to start, cancel old task if exist");
          p();
          a(paramInt);
          continue;
        case -51:
        case -52:
        case -53:
        case -56:
        case -55:
        }
      }
      finally
      {
      }
      if (paramBoolean)
      {
        c(-51);
        continue;
        this.v = -52;
        int i6 = this.v;
        if (paramInt != 2)
          a(i6, paramInt, "ignore", "ignore");
        if (paramBoolean)
        {
          c(-52);
          continue;
          ff.a("kfc", "function pause");
          this.v = -53;
          int i5 = this.v;
          if (paramInt != 2)
            a(i5, paramInt, "ignore", "ignore");
          if (paramBoolean)
            c(-53);
          i();
          continue;
          ff.a("kfc", "function stoped");
          if (Math.abs(System.currentTimeMillis() - this.c.z()) > 604800000L)
          {
            ff.a("kfc", "stop time over 7 days, requestReactivate");
            this.s = paramInt;
            this.r = paramBoolean;
            ff.a("kfc", "try reactivate, cancel old task if exist");
            p();
            a(paramInt);
          }
          else
          {
            this.v = -56;
            int i4 = this.v;
            if (paramInt != 2)
              a(i4, paramInt, "ignore", "ignore");
            if (paramBoolean)
            {
              c(-56);
              continue;
              ff.a("kfc", "sim card unmatch");
              this.v = -55;
              int i3 = this.v;
              if (paramInt != 2)
                a(i3, paramInt, "ignore", "ignore");
              if (paramBoolean)
              {
                c(-55);
                continue;
                while (true)
                {
                  label579: if (i2 != 0)
                    break label594;
                  i1 = -55;
                  break;
                  label590: i2 = 1;
                }
                label594: continue;
                label596: i1 = 0;
              }
            }
          }
        }
      }
    }
  }

  public final void a(dv<Object> paramdv)
  {
    Iterator localIterator = this.k.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!((dv)localIterator.next()).equals(paramdv));
    while (true)
    {
      return;
      this.k.add(paramdv);
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    ff.a("kfc", "monitorSmsSendbyUser");
    if ((paramString1 == null) || (paramString2 == null) || ("".equals(paramString1)) || ("".equals(paramString2)))
      ff.a("kfc", "number or body is empty");
    while (true)
    {
      return;
      if (this.q != 0)
      {
        ff.a("kfc", "now doing traffic adjust, do not monitor sms send by user");
      }
      else
      {
        this.x = true;
        this.z = paramString1;
        this.A = paramString2;
        this.B = null;
        d(true);
        this.y = System.currentTimeMillis();
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    ff.a("kfc", "updateConfigsAsyn");
    if (paramBoolean)
    {
      this.G.removeMessages(1);
      this.G.sendEmptyMessageDelayed(1, 3000L);
    }
    while (true)
    {
      return;
      this.G.removeMessages(1);
      this.G.sendEmptyMessage(1);
    }
  }

  public final String[] a(String paramString)
  {
    String[] arrayOfString = new String[0];
    if ("10".equals(paramString))
      arrayOfString = this.b.getResources().getStringArray(2131165258);
    while (true)
    {
      return arrayOfString;
      if ("20".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165259);
      else if ("21".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165260);
      else if ("22".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165261);
      else if ("23".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165262);
      else if ("24".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165263);
      else if ("25".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165264);
      else if ("27".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165265);
      else if ("28".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165266);
      else if ("29".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165267);
      else if ("311".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165268);
      else if ("351".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165269);
      else if ("371".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165270);
      else if ("431".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165271);
      else if ("451".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165272);
      else if ("471".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165273);
      else if ("531".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165274);
      else if ("551".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165275);
      else if ("571".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165276);
      else if ("591".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165277);
      else if ("731".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165278);
      else if ("771".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165279);
      else if ("791".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165280);
      else if ("851".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165281);
      else if ("871".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165282);
      else if ("891".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165283);
      else if ("898".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165284);
      else if ("931".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165285);
      else if ("951".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165286);
      else if ("971".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165287);
      else if ("991".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165288);
    }
  }

  public final void b()
  {
    try
    {
      this.i.cancel(this.j);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void b(dv<Object> paramdv)
  {
    for (int i1 = 0; ; i1++)
      if (i1 < this.k.size())
      {
        if (paramdv.equals(this.k.get(i1)))
          this.k.remove(i1);
      }
      else
        return;
  }

  public final String[] b(String paramString)
  {
    String[] arrayOfString = new String[0];
    if ("CMCC".equals(paramString))
      arrayOfString = this.b.getResources().getStringArray(2131165290);
    while (true)
    {
      return arrayOfString;
      if ("UNICOM".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165291);
      else if ("TELECOM".equals(paramString))
        arrayOfString = this.b.getResources().getStringArray(2131165292);
    }
  }

  public final void c()
  {
    try
    {
      this.i.cancel(this.j);
      a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final boolean d()
  {
    boolean bool = true;
    try
    {
      String[] arrayOfString = this.c.u().split("\\|");
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, Integer.valueOf(arrayOfString[0]).intValue());
      localCalendar.set(12, Integer.valueOf(arrayOfString[1]).intValue());
      localCalendar.set(13, Integer.valueOf(arrayOfString[2]).intValue());
      long l1 = Math.abs(System.currentTimeMillis() - localCalendar.getTimeInMillis());
      if (l1 < 60000L);
      while (true)
      {
        return bool;
        bool = false;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        bool = false;
      }
    }
  }

  public final boolean e()
  {
    if (this.c.b(EQueryType.E_QUERY_TRAFFIC.value()) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean f()
  {
    return this.c.e();
  }

  public final long g()
  {
    return this.c.f();
  }

  public final String[] h()
  {
    STQueryInfo localSTQueryInfo1 = this.c.b(2);
    String[] arrayOfString;
    if (localSTQueryInfo1 != null)
    {
      String str5 = localSTQueryInfo1.getStrPort();
      String str6 = localSTQueryInfo1.getStrCode();
      if ((str6 != null) && (str5 != null) && (!"".equals(str6)) && (!"".equals(str5)))
      {
        String str7 = c(str6);
        arrayOfString = new String[2];
        arrayOfString[0] = str5;
        arrayOfString[1] = str7;
      }
    }
    while (true)
    {
      return arrayOfString;
      ArrayList localArrayList = this.c.a(2, this.h.cu());
      if ((localArrayList == null) || (localArrayList.size() <= 0))
        break;
      Iterator localIterator = localArrayList.iterator();
      String str3;
      String str4;
      do
      {
        if (!localIterator.hasNext())
          break;
        STQueryInfo localSTQueryInfo2 = (STQueryInfo)localIterator.next();
        str3 = localSTQueryInfo2.getStrPort();
        str4 = localSTQueryInfo2.getStrCode();
      }
      while ((str4 == null) || (str3 == null) || ("".equals(str4)) || ("".equals(str3)));
      arrayOfString = new String[] { str3, c(str4) };
    }
    String str1;
    String str2;
    switch (ft.d())
    {
    default:
      str1 = "";
      str2 = "";
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      arrayOfString = new String[] { str1, str2 };
      break;
      str1 = "10010";
      str2 = "CXLL";
      continue;
      str1 = "10086";
      str2 = "cxgprstc";
      continue;
      str1 = "10001";
      str2 = "108";
    }
  }

  public final boolean i()
  {
    ff.a("kfc", "getCloudCmdIfNeed");
    if (Math.abs(System.currentTimeMillis() - this.c.w()) > 259200000L)
    {
      ff.a("kfc", "need cloud cmd");
      j();
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      ff.a("kfc", "no need cloud cmd");
    }
  }

  public final void j()
  {
    try
    {
      STCloudOrderReq localSTCloudOrderReq = new STCloudOrderReq();
      localSTCloudOrderReq.block = this.c.o().startsWith("2");
      localSTCloudOrderReq.nFrequency = this.c.q();
      localSTCloudOrderReq.strCity = this.h.cs();
      localSTCloudOrderReq.stCodeNow = this.c.b(EQueryType.E_QUERY_TRAFFIC.value());
      localSTCloudOrderReq.strHardInfo = ft.a(this.b);
      localSTCloudOrderReq.strProvince = this.h.cr();
      localSTCloudOrderReq.strsimtype = this.h.cu();
      localSTCloudOrderReq.strTaocan = this.c.p();
      localSTCloudOrderReq.strTime = this.c.u();
      localSTCloudOrderReq.vecCodeMuilty = this.c.a(EQueryType.E_QUERY_TRAFFIC.value(), "00000");
      localSTCloudOrderReq.strMonthBalance = String.valueOf(new iu(QQPimApplication.a()).getClosingDayForMonth());
      localSTCloudOrderReq.vecFail = new ArrayList();
      String str1 = this.c.l();
      if ((str1 != null) && (!"".equals(str1)))
        for (String str2 : str1.split("\\|"))
          localSTCloudOrderReq.vecFail.add(Integer.valueOf(str2));
      localSTCloudOrderReq.vecSmsSeconds = this.c.B();
      localSTCloudOrderReq.nTimeOutNow = this.c.A();
      ff.a("kfc", "sms seconds: " + localSTCloudOrderReq.vecSmsSeconds);
      ff.a("kfc", "time out now: " + localSTCloudOrderReq.nTimeOutNow);
      AtomicReference localAtomicReference = new AtomicReference();
      i1 = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getTrafficCmd(localSTCloudOrderReq, localAtomicReference);
      if (i1 == 0)
      {
        STVecCloudBak localSTVecCloudBak = (STVecCloudBak)localAtomicReference.get();
        if (localSTVecCloudBak != null)
        {
          ArrayList localArrayList = localSTVecCloudBak.getVecbak();
          if ((localArrayList != null) && (localArrayList.size() > 0))
            a(localArrayList);
          while (true)
          {
            this.c.d(System.currentTimeMillis());
            break;
            ff.a("kfc", "cloud cmd is empty, cmds = " + localArrayList);
          }
        }
      }
    }
    catch (Exception localException)
    {
      int i1;
      localException.printStackTrace();
      return;
      ff.a("kfc", "cloud cmd is null from server");
      return;
      ff.a("kfc", "getTrafficCmd, net error xxxxxxxxx, errCode = " + i1);
    }
  }

  public final void k()
  {
    new Thread(new wy(this)).start();
  }

  public final String[] l()
  {
    return this.b.getResources().getStringArray(2131165257);
  }

  public final String[] m()
  {
    return this.b.getResources().getStringArray(2131165289);
  }

  final class a extends TimerTask
  {
    a()
    {
    }

    public final void run()
    {
      ff.a("kfc", "time out");
      if (wr.c(wr.this))
        wr.s(wr.this);
      while (true)
      {
        return;
        if (2 == wr.h(wr.this))
        {
          ff.a("kfc", "already success or stop or limit is wrong, just finish");
          wr.t(wr.this);
        }
        else
        {
          SmsEntity localSmsEntity = wr.k(wr.this).a();
          if (localSmsEntity == null)
            break;
          ff.a("kfc", "time out, analyse the combined sms");
          wr.b(wr.this, localSmsEntity.phonenum);
          wr.c(wr.this, localSmsEntity.body);
          new Thread(new wz(this)).start();
        }
      }
      ff.a("kfc", "time out, no combined sms, cause:");
      if (wr.i(wr.this) == 0)
      {
        ff.a("kfc", "no sms from operator");
        wr.c(wr.this, -61);
      }
      while (true)
      {
        wr.t(wr.this);
        break;
        ff.a("kfc", "you have got the sms, but analysis failed");
      }
    }
  }

  final class b
  {
    boolean a = false;
    int b = 0;
    SmsEntity[] c = new SmsEntity[10];

    public final SmsEntity a()
    {
      SmsEntity localSmsEntity = null;
      for (int i = 0; ; i++)
      {
        try
        {
          if ((i < this.c.length) && (i < this.b))
          {
            if (this.c[i] == null)
              continue;
            if (!this.a)
            {
              if (localSmsEntity != null)
                break label60;
              localSmsEntity = this.c[i];
            }
            while (true)
            {
              this.c[i] = null;
              break;
              label60: localSmsEntity.body += this.c[i].body;
            }
          }
        }
        finally
        {
        }
        this.a = true;
        this.b = 0;
        return localSmsEntity;
      }
    }

    public final SmsEntity a(SmsEntity paramSmsEntity)
    {
      int i = 1;
      while (true)
      {
        StringBuffer localStringBuffer;
        try
        {
          Matcher localMatcher1 = Pattern.compile("\\(?\\d+/\\d+\\)").matcher(paramSmsEntity.body);
          if (!localMatcher1.find())
            break label574;
          Matcher localMatcher2;
          if (localMatcher1.start() == 0)
          {
            String[] arrayOfString4 = localMatcher1.group().split("/");
            int i5 = Integer.parseInt(arrayOfString4[0].replace("(", ""));
            int i6 = Integer.parseInt(arrayOfString4[1].replace(")", ""));
            if (i6 > this.b)
              this.b = i6;
            paramSmsEntity.body = paramSmsEntity.body.substring(localMatcher1.end());
            this.c[(i5 - 1)] = paramSmsEntity;
            j = i;
            if (j == 0)
            {
              localMatcher2 = Pattern.compile("\\[?\\d+/\\d+\\]").matcher(paramSmsEntity.body);
              if (localMatcher2.find())
              {
                if (localMatcher2.start() != 0)
                  continue;
                String[] arrayOfString2 = localMatcher2.group().split("/");
                int i1 = Integer.parseInt(arrayOfString2[0].replace("[", ""));
                int i2 = Integer.parseInt(arrayOfString2[1].replace("]", ""));
                if (i2 > this.b)
                  this.b = i2;
                paramSmsEntity.body = paramSmsEntity.body.substring(localMatcher2.end());
                this.c[(i1 - 1)] = paramSmsEntity;
                j = i;
              }
            }
            if (j != 0)
              continue;
            return paramSmsEntity;
          }
          else
          {
            if (localMatcher1.end() != paramSmsEntity.body.length())
              continue;
            String[] arrayOfString3 = localMatcher1.group().split("/");
            int i3 = Integer.parseInt(arrayOfString3[0].replace("(", ""));
            int i4 = Integer.parseInt(arrayOfString3[1].replace(")", ""));
            if (i4 > this.b)
              this.b = i4;
            paramSmsEntity.body = paramSmsEntity.body.substring(0, localMatcher1.start());
            this.c[(i3 - 1)] = paramSmsEntity;
            j = i;
            continue;
          }
          if (localMatcher2.end() != paramSmsEntity.body.length())
            continue;
          String[] arrayOfString1 = localMatcher2.group().split("/");
          int m = Integer.parseInt(arrayOfString1[0].replace("[", ""));
          int n = Integer.parseInt(arrayOfString1[1].replace("]", ""));
          if (n > this.b)
            this.b = n;
          paramSmsEntity.body = paramSmsEntity.body.substring(0, localMatcher2.start());
          this.c[(m - 1)] = paramSmsEntity;
          j = i;
          continue;
        }
        catch (Exception localException)
        {
          j = 0;
          continue;
          localStringBuffer = new StringBuffer();
          int k = 0;
          if ((k >= this.c.length) || (k >= this.b))
            break label580;
          if (this.c[k] != null)
          {
            localStringBuffer.append(this.c[k].body);
            k++;
            continue;
          }
          if (i != 0)
          {
            paramSmsEntity = null;
            continue;
          }
        }
        finally
        {
        }
        this.a = true;
        paramSmsEntity.body = localStringBuffer.toString();
        continue;
        label574: int j = 0;
        continue;
        label580: i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wr
 * JD-Core Version:    0.6.2
 */