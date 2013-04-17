import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

public final class iu extends it
{
  private String e = "type = 1";

  public iu(Context paramContext)
  {
    super(paramContext);
  }

  private static ArrayList<NetworkInfoEntity> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor != null)
    {
      int i = paramCursor.getColumnIndex("date");
      int j = paramCursor.getColumnIndex("data");
      if (paramCursor.moveToFirst())
        while (!paramCursor.isAfterLast())
        {
          NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
          localNetworkInfoEntity.mStartDate = new Date(paramCursor.getLong(i));
          localNetworkInfoEntity.mUsedForDay = paramCursor.getLong(j);
          localArrayList.add(localNetworkInfoEntity);
          paramCursor.moveToNext();
        }
    }
    return localArrayList;
  }

  protected final ContentValues a(NetworkInfoEntity paramNetworkInfoEntity)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("date", Long.valueOf(paramNetworkInfoEntity.mStartDate.getTime()));
    localContentValues.put("data", Long.valueOf(paramNetworkInfoEntity.mUsedForDay));
    localContentValues.put("imsi", dc.b(this.c));
    localContentValues.put("type", Integer.valueOf(1));
    return localContentValues;
  }

  public final void clearAll()
  {
    this.d.a("networK", this.e, null);
    this.d.b();
  }

  public final ArrayList<NetworkInfoEntity> getAll()
  {
    Date localDate = new Date();
    long l1 = a.a(localDate, getClosingDayForMonth()).getTime();
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTime(localDate);
    localGregorianCalendar.clear(11);
    localGregorianCalendar.clear(10);
    localGregorianCalendar.clear(12);
    localGregorianCalendar.clear(13);
    localGregorianCalendar.clear(14);
    long l2 = localGregorianCalendar.getTime().getTime();
    String str = "date<" + l2 + " AND date>=" + l1 + " AND " + this.e;
    Cursor localCursor = this.d.a("SELECT * FROM networK WHERE " + str + " ORDER BY data");
    ArrayList localArrayList = a(localCursor);
    if (localCursor != null)
      localCursor.close();
    this.d.b();
    int i = localArrayList.size();
    int j;
    int m;
    int n;
    label226: int i1;
    int i3;
    int i2;
    if (localArrayList != null)
    {
      j = i - 1;
      if (j >= 0)
      {
        NetworkInfoEntity localNetworkInfoEntity1 = (NetworkInfoEntity)localArrayList.get(j);
        int k = i - 1;
        m = j;
        n = k;
        if (n >= 0)
        {
          NetworkInfoEntity localNetworkInfoEntity2 = (NetworkInfoEntity)localArrayList.get(n);
          if ((m == n) || (localNetworkInfoEntity1.mStartDate.getYear() != localNetworkInfoEntity2.mStartDate.getYear()) || (localNetworkInfoEntity1.mStartDate.getMonth() != localNetworkInfoEntity2.mStartDate.getMonth()) || (localNetworkInfoEntity1.mStartDate.getDate() != localNetworkInfoEntity2.mStartDate.getDate()))
            break label386;
          localNetworkInfoEntity1.mUsedForDay += localNetworkInfoEntity2.mUsedForDay;
          localArrayList.remove(n);
          int i5 = m - 1;
          i1 = n - 1;
          i3 = i - 1;
          i2 = i5;
        }
      }
    }
    while (true)
    {
      int i4 = i1 - 1;
      i = i3;
      m = i2;
      n = i4;
      break label226;
      j = m - 1;
      break;
      return localArrayList;
      label386: i1 = n;
      i2 = m;
      i3 = i;
    }
  }

  public final NetDataEntity getLastNetDataEntity()
  {
    NetDataEntity localNetDataEntity = new NetDataEntity();
    localNetDataEntity.mReceiver = Long.parseLong(this.a.getString("gprs_receiver", "-1"));
    localNetDataEntity.mReceiverPks = Long.parseLong(this.a.getString("gprs_receiver_pks", "-1"));
    localNetDataEntity.mTranslate = Long.parseLong(this.a.getString("gprs_translate", "-1"));
    localNetDataEntity.mTranslatePks = Long.parseLong(this.a.getString("gprs_translate_pks", "-1"));
    return localNetDataEntity;
  }

  public final NetworkInfoEntity getSystemTimeChange(Date paramDate)
  {
    Date localDate = new Date();
    NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
    if (localDate.getMonth() != paramDate.getMonth());
    for (localNetworkInfoEntity.mUsedForMonth = u(); ; localNetworkInfoEntity.mUsedForMonth = getUsedForMonth())
    {
      localNetworkInfoEntity.mTotalForMonth = getTotalForMonth();
      localNetworkInfoEntity.mUsedForDay = this.a.getLong("temp_gprs_used_for_day", 0L);
      return localNetworkInfoEntity;
    }
  }

  public final NetworkInfoEntity getTodayNetworkInfoEntity()
  {
    NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
    localNetworkInfoEntity.mTotalForMonth = getTotalForMonth();
    localNetworkInfoEntity.mUsedForDay = this.a.getLong("temp_gprs_used_for_day", 0L);
    localNetworkInfoEntity.mUsedForMonth = getUsedForMonth();
    localNetworkInfoEntity.mRetialForMonth = (localNetworkInfoEntity.mTotalForMonth - localNetworkInfoEntity.mUsedForMonth);
    localNetworkInfoEntity.mStartDate = new Date(this.a.getLong("temp_date", System.currentTimeMillis()));
    return localNetworkInfoEntity;
  }

  public final long getTotalForMonth()
  {
    return this.a.getLong("total_gprs", 0L);
  }

  public final long getUsedForMonth()
  {
    long l = this.a.getLong("str_gprs_used_for_month_data", -1L);
    if (l < 0L);
    try
    {
      Date localDate = new Date();
      int i = localDate.getYear();
      int j = localDate.getMonth();
      String str = i + "&" + j + "&0,";
      ArrayList localArrayList = a(this.a.getString("str_gprs_used_for_month", str));
      int k = 0;
      it.a locala;
      if (k < localArrayList.size())
      {
        locala = (it.a)localArrayList.get(k);
        if ((locala.a != i) || (locala.b != j));
      }
      for (l = locala.c; ; l = 0L)
      {
        this.b.remove("str_gprs_used_for_month");
        return l;
        k++;
        break;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        setUsedForMonth(0L);
        localException.printStackTrace();
        l = 0L;
      }
    }
  }

  // ERROR //
  public final void insert(NetworkInfoEntity paramNetworkInfoEntity)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 135	java/util/GregorianCalendar
    //   5: dup
    //   6: invokespecial 136	java/util/GregorianCalendar:<init>	()V
    //   9: astore_3
    //   10: aload_3
    //   11: aload_1
    //   12: getfield 54	com/tencent/tmsecure/module/network/NetworkInfoEntity:mStartDate	Ljava/util/Date;
    //   15: invokevirtual 140	java/util/GregorianCalendar:setTime	(Ljava/util/Date;)V
    //   18: aload_3
    //   19: iconst_5
    //   20: iconst_m1
    //   21: invokevirtual 322	java/util/GregorianCalendar:add	(II)V
    //   24: aload_3
    //   25: bipush 11
    //   27: aload_3
    //   28: bipush 11
    //   30: invokevirtual 326	java/util/GregorianCalendar:getActualMaximum	(I)I
    //   33: invokevirtual 329	java/util/GregorianCalendar:set	(II)V
    //   36: aload_3
    //   37: bipush 10
    //   39: aload_3
    //   40: bipush 10
    //   42: invokevirtual 326	java/util/GregorianCalendar:getActualMaximum	(I)I
    //   45: invokevirtual 329	java/util/GregorianCalendar:set	(II)V
    //   48: aload_3
    //   49: bipush 12
    //   51: aload_3
    //   52: bipush 12
    //   54: invokevirtual 326	java/util/GregorianCalendar:getActualMaximum	(I)I
    //   57: invokevirtual 329	java/util/GregorianCalendar:set	(II)V
    //   60: aload_3
    //   61: bipush 13
    //   63: aload_3
    //   64: bipush 13
    //   66: invokevirtual 326	java/util/GregorianCalendar:getActualMaximum	(I)I
    //   69: invokevirtual 329	java/util/GregorianCalendar:set	(II)V
    //   72: aload_3
    //   73: bipush 14
    //   75: aload_3
    //   76: bipush 14
    //   78: invokevirtual 326	java/util/GregorianCalendar:getActualMaximum	(I)I
    //   81: invokevirtual 329	java/util/GregorianCalendar:set	(II)V
    //   84: new 135	java/util/GregorianCalendar
    //   87: dup
    //   88: invokespecial 136	java/util/GregorianCalendar:<init>	()V
    //   91: astore 4
    //   93: aload 4
    //   95: aload_1
    //   96: getfield 54	com/tencent/tmsecure/module/network/NetworkInfoEntity:mStartDate	Ljava/util/Date;
    //   99: invokevirtual 140	java/util/GregorianCalendar:setTime	(Ljava/util/Date;)V
    //   102: aload 4
    //   104: iconst_5
    //   105: iconst_1
    //   106: invokevirtual 322	java/util/GregorianCalendar:add	(II)V
    //   109: aload 4
    //   111: bipush 11
    //   113: invokevirtual 144	java/util/GregorianCalendar:clear	(I)V
    //   116: aload 4
    //   118: bipush 10
    //   120: invokevirtual 144	java/util/GregorianCalendar:clear	(I)V
    //   123: aload 4
    //   125: bipush 12
    //   127: invokevirtual 144	java/util/GregorianCalendar:clear	(I)V
    //   130: aload 4
    //   132: bipush 13
    //   134: invokevirtual 144	java/util/GregorianCalendar:clear	(I)V
    //   137: aload 4
    //   139: bipush 14
    //   141: invokevirtual 144	java/util/GregorianCalendar:clear	(I)V
    //   144: new 149	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 331
    //   151: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: aload_3
    //   155: invokevirtual 334	java/util/GregorianCalendar:getTimeInMillis	()J
    //   158: invokevirtual 158	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   161: ldc_w 336
    //   164: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload 4
    //   169: invokevirtual 334	java/util/GregorianCalendar:getTimeInMillis	()J
    //   172: invokevirtual 158	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   175: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: astore 5
    //   180: new 149	java/lang/StringBuilder
    //   183: dup
    //   184: ldc_w 338
    //   187: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   190: aload 5
    //   192: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: astore 6
    //   200: aload_0
    //   201: getfield 113	iu:d	Lhs;
    //   204: aload 6
    //   206: invokevirtual 176	hs:a	(Ljava/lang/String;)Landroid/database/Cursor;
    //   209: astore 28
    //   211: aload 28
    //   213: astore 9
    //   215: aload 9
    //   217: ifnull +302 -> 519
    //   220: aload 9
    //   222: invokeinterface 35 1 0
    //   227: ifeq +292 -> 519
    //   230: aload 9
    //   232: ldc_w 340
    //   235: invokeinterface 29 2 0
    //   240: istore 29
    //   242: aload 9
    //   244: invokeinterface 38 1 0
    //   249: ifne +270 -> 519
    //   252: aload 9
    //   254: iload 29
    //   256: invokeinterface 343 2 0
    //   261: istore 30
    //   263: aload_0
    //   264: getfield 113	iu:d	Lhs;
    //   267: ldc 115
    //   269: new 149	java/lang/StringBuilder
    //   272: dup
    //   273: ldc_w 345
    //   276: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   279: iload 30
    //   281: invokevirtual 286	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   284: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: aconst_null
    //   288: invokevirtual 120	hs:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   291: pop
    //   292: aload 9
    //   294: invokeinterface 65 1 0
    //   299: pop
    //   300: goto -58 -> 242
    //   303: astore 8
    //   305: aload 8
    //   307: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   310: aload 9
    //   312: ifnull +20 -> 332
    //   315: aload 9
    //   317: invokeinterface 348 1 0
    //   322: ifne +10 -> 332
    //   325: aload 9
    //   327: invokeinterface 181 1 0
    //   332: aload_0
    //   333: getfield 113	iu:d	Lhs;
    //   336: ldc 115
    //   338: aconst_null
    //   339: aload_0
    //   340: aload_1
    //   341: invokevirtual 350	iu:a	(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)Landroid/content/ContentValues;
    //   344: invokevirtual 353	hs:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   347: pop2
    //   348: new 149	java/lang/StringBuilder
    //   351: dup
    //   352: ldc_w 338
    //   355: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   358: aload_0
    //   359: getfield 14	iu:e	Ljava/lang/String;
    //   362: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: ldc_w 355
    //   368: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: astore 14
    //   376: aload_0
    //   377: getfield 113	iu:d	Lhs;
    //   380: aload 14
    //   382: invokevirtual 176	hs:a	(Ljava/lang/String;)Landroid/database/Cursor;
    //   385: astore 22
    //   387: aload 22
    //   389: astore 16
    //   391: aload 16
    //   393: ifnull +175 -> 568
    //   396: aload 16
    //   398: sipush 400
    //   401: invokeinterface 359 2 0
    //   406: ifeq +162 -> 568
    //   409: aload 16
    //   411: ldc_w 340
    //   414: invokeinterface 29 2 0
    //   419: istore 24
    //   421: aload 16
    //   423: invokeinterface 38 1 0
    //   428: ifne +140 -> 568
    //   431: aload 16
    //   433: iload 24
    //   435: invokeinterface 343 2 0
    //   440: istore 25
    //   442: aload_0
    //   443: getfield 113	iu:d	Lhs;
    //   446: ldc 115
    //   448: new 149	java/lang/StringBuilder
    //   451: dup
    //   452: ldc_w 345
    //   455: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   458: iload 25
    //   460: invokevirtual 286	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   463: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: aconst_null
    //   467: invokevirtual 120	hs:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   470: pop
    //   471: aload 16
    //   473: invokeinterface 65 1 0
    //   478: pop
    //   479: goto -58 -> 421
    //   482: astore 17
    //   484: aload 17
    //   486: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   489: aload 16
    //   491: ifnull +20 -> 511
    //   494: aload 16
    //   496: invokeinterface 348 1 0
    //   501: ifne +10 -> 511
    //   504: aload 16
    //   506: invokeinterface 181 1 0
    //   511: aload_0
    //   512: getfield 113	iu:d	Lhs;
    //   515: invokevirtual 122	hs:b	()V
    //   518: return
    //   519: aload 9
    //   521: ifnull -189 -> 332
    //   524: aload 9
    //   526: invokeinterface 348 1 0
    //   531: ifne -199 -> 332
    //   534: aload 9
    //   536: invokeinterface 181 1 0
    //   541: goto -209 -> 332
    //   544: astore 11
    //   546: aload_2
    //   547: ifnull +18 -> 565
    //   550: aload_2
    //   551: invokeinterface 348 1 0
    //   556: ifne +9 -> 565
    //   559: aload_2
    //   560: invokeinterface 181 1 0
    //   565: aload 11
    //   567: athrow
    //   568: aload 16
    //   570: ifnull +20 -> 590
    //   573: aload 16
    //   575: invokeinterface 348 1 0
    //   580: ifne +10 -> 590
    //   583: aload 16
    //   585: invokeinterface 181 1 0
    //   590: aload_0
    //   591: getfield 113	iu:d	Lhs;
    //   594: invokevirtual 122	hs:b	()V
    //   597: goto -79 -> 518
    //   600: astore 23
    //   602: aload 23
    //   604: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   607: goto -89 -> 518
    //   610: astore 20
    //   612: aload 20
    //   614: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   617: goto -99 -> 518
    //   620: astore 21
    //   622: aload 9
    //   624: astore 16
    //   626: aload 21
    //   628: astore 18
    //   630: aload 16
    //   632: ifnull +20 -> 652
    //   635: aload 16
    //   637: invokeinterface 348 1 0
    //   642: ifne +10 -> 652
    //   645: aload 16
    //   647: invokeinterface 181 1 0
    //   652: aload_0
    //   653: getfield 113	iu:d	Lhs;
    //   656: invokevirtual 122	hs:b	()V
    //   659: aload 18
    //   661: athrow
    //   662: astore 19
    //   664: aload 19
    //   666: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   669: goto -10 -> 659
    //   672: astore 18
    //   674: goto -44 -> 630
    //   677: astore 15
    //   679: aload 9
    //   681: astore 16
    //   683: aload 15
    //   685: astore 17
    //   687: goto -203 -> 484
    //   690: astore 10
    //   692: aload 9
    //   694: astore_2
    //   695: aload 10
    //   697: astore 11
    //   699: goto -153 -> 546
    //   702: astore 7
    //   704: aload 7
    //   706: astore 8
    //   708: aconst_null
    //   709: astore 9
    //   711: goto -406 -> 305
    //
    // Exception table:
    //   from	to	target	type
    //   220	300	303	java/lang/Exception
    //   396	479	482	java/lang/Exception
    //   200	211	544	finally
    //   573	597	600	java/lang/Exception
    //   494	518	610	java/lang/Exception
    //   376	387	620	finally
    //   635	659	662	java/lang/Exception
    //   396	479	672	finally
    //   484	489	672	finally
    //   376	387	677	java/lang/Exception
    //   220	300	690	finally
    //   305	310	690	finally
    //   200	211	702	java/lang/Exception
  }

  public final void resetToDayNetworkInfoEntity()
  {
    this.b.putLong("temp_gprs_used_for_day", 0L).commit();
    this.b.remove("temp_date").commit();
    this.b.commit();
  }

  public final void setLastNetDataEntity(NetDataEntity paramNetDataEntity)
  {
    this.b.putString("gprs_receiver", paramNetDataEntity.mReceiver);
    this.b.putString("gprs_receiver_pks", paramNetDataEntity.mReceiverPks);
    this.b.putString("gprs_translate", paramNetDataEntity.mTranslate);
    this.b.putString("gprs_translate_pks", paramNetDataEntity.mTranslatePks);
    this.b.commit();
  }

  public final void setTodayNetworkInfoEntity(NetworkInfoEntity paramNetworkInfoEntity)
  {
    this.b.putLong("temp_gprs_used_for_day", paramNetworkInfoEntity.mUsedForDay);
    long l = paramNetworkInfoEntity.mUsedForMonth;
    this.b.putLong("str_gprs_used_for_month_data", l).commit();
    this.b.putLong("temp_date", paramNetworkInfoEntity.mStartDate.getTime());
    this.b.commit();
  }

  public final void setTotalForMonth(long paramLong)
  {
    this.b.putLong("total_gprs", paramLong).commit();
  }

  public final void setUsedForMonth(long paramLong)
  {
    this.b.putLong("str_gprs_used_for_month_data", paramLong).commit();
  }

  public final List<NetworkInfoEntity> t()
  {
    int i = 0;
    ArrayList localArrayList1 = getAll();
    ArrayList localArrayList2 = new ArrayList();
    if (localArrayList1.size() > 0)
    {
      localArrayList2.add(localArrayList1.remove(0));
      while (localArrayList1.size() > 0)
      {
        for (int k = localArrayList2.size(); (k > 0) && (((NetworkInfoEntity)localArrayList1.get(0)).mStartDate.before(((NetworkInfoEntity)localArrayList2.get(k - 1)).mStartDate)); k--);
        localArrayList2.add(k, localArrayList1.remove(0));
      }
    }
    localArrayList2.add(getTodayNetworkInfoEntity());
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
    int j = getClosingDayForMonth();
    GregorianCalendar localGregorianCalendar2 = a.a(localGregorianCalendar1, j);
    GregorianCalendar localGregorianCalendar3 = a.b(localGregorianCalendar1, j);
    ArrayList localArrayList3 = new ArrayList(35);
    while (i < localArrayList2.size())
    {
      while ((((NetworkInfoEntity)localArrayList2.get(i)).mStartDate.after(localGregorianCalendar2.getTime())) && ((((NetworkInfoEntity)localArrayList2.get(i)).mStartDate.getDate() != localGregorianCalendar2.get(5)) || (((NetworkInfoEntity)localArrayList2.get(i)).mStartDate.getMonth() != localGregorianCalendar2.get(2))))
      {
        NetworkInfoEntity localNetworkInfoEntity2 = new NetworkInfoEntity();
        localNetworkInfoEntity2.mStartDate = ((GregorianCalendar)localGregorianCalendar2.clone()).getTime();
        localNetworkInfoEntity2.mUsedForDay = 0L;
        localArrayList3.add(localNetworkInfoEntity2);
        localGregorianCalendar2.add(5, 1);
      }
      localArrayList3.add(localArrayList2.get(i));
      localGregorianCalendar2.add(5, 1);
      i++;
    }
    while (localGregorianCalendar3.getTime().after(localGregorianCalendar2.getTime()))
    {
      NetworkInfoEntity localNetworkInfoEntity1 = new NetworkInfoEntity();
      localNetworkInfoEntity1.mStartDate = ((GregorianCalendar)localGregorianCalendar2.clone()).getTime();
      localNetworkInfoEntity1.mUsedForDay = 0L;
      localArrayList3.add(localNetworkInfoEntity1);
      localGregorianCalendar2.add(5, 1);
    }
    return localArrayList3;
  }

  public final long u()
  {
    int i = 1;
    int j = 0;
    wr localwr = wr.a(this.c);
    boolean bool = localwr.f();
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
    localGregorianCalendar1.setTimeInMillis(localwr.g());
    GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
    localGregorianCalendar2.add(5, -7);
    GregorianCalendar localGregorianCalendar3 = new GregorianCalendar();
    localGregorianCalendar3.add(5, 7);
    if ((localGregorianCalendar1.after(localGregorianCalendar2)) && (localGregorianCalendar1.before(localGregorianCalendar3)));
    for (int k = i; ; k = 0)
    {
      int m = getClosingDayForMonth();
      GregorianCalendar localGregorianCalendar4 = new GregorianCalendar();
      GregorianCalendar localGregorianCalendar5 = a.a(localGregorianCalendar4, m);
      GregorianCalendar localGregorianCalendar6 = a.b(localGregorianCalendar4, m);
      if ((localGregorianCalendar1.after(localGregorianCalendar5)) && (localGregorianCalendar1.before(localGregorianCalendar6)));
      for (int n = i; ; n = 0)
      {
        long l2;
        if ((!bool) || (k == 0) || (n == 0))
        {
          long l1 = p();
          if (l1 < 0L)
            i = 0;
          while (i == 0)
          {
            a(-1L);
            ArrayList localArrayList = new iu(QQPimApplication.a()).getAll();
            long l3 = 0L;
            while (true)
              if (j < localArrayList.size())
              {
                long l4 = ((NetworkInfoEntity)localArrayList.get(j)).mUsedForDay;
                if (l4 < 0L)
                  l4 = 0L;
                long l5 = l4 + l3;
                j++;
                l3 = l5;
                continue;
                localGregorianCalendar1.setTimeInMillis(l1);
                if ((localGregorianCalendar1.after(localGregorianCalendar5)) && (localGregorianCalendar1.before(localGregorianCalendar6)))
                  break;
                i = 0;
                break;
              }
            l2 = l3 + getTodayNetworkInfoEntity().mUsedForDay;
          }
        }
        while (true)
        {
          return l2;
          l2 = getUsedForMonth();
          continue;
          l2 = getUsedForMonth();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     iu
 * JD-Core Version:    0.6.2
 */