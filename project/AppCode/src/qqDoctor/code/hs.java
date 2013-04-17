import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import com.tencent.tmsecure.common.TMSApplication;

public final class hs
{
  private static hs a = null;
  private static Object b = new Object();
  private static final String c = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_mysoftware_1" });
  private static final String d = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_mysoftware_update_1" });
  private static final String e = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_apkmanager_download_1" });
  private static final String f = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_apkmanager_other_1" });
  private static final String g = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_daychoice_1" });
  private static final String h = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_ranking" });
  private static final String i = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_nsyins_1" });
  private static final String j = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_newproduct_1" });
  private static final String k = String.format("CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT)", new Object[] { "sw_cache_specialsubject_2" });
  private static final String l = "CREATE TABLE IF NOT EXISTS virus_notification (" + mt.c + " INTEGER PRIMARY KEY," + mt.d + " TEXT," + mt.h + " TEXT," + mt.i + " TEXT," + mt.e + " TEXT," + mt.j + " TEXT," + mt.k + " TEXT," + mt.g + " TEXT," + mt.f + " INTEGER," + mt.l + " INTEGER," + mt.m + " INTEGER)";
  private static final String m = "CREATE TABLE IF NOT EXISTS operating_activities (" + wq.b + " INTEGER PRIMARY KEY," + wq.c + " TEXT," + wq.d + " TEXT," + wq.e + " TEXT," + wq.f + " INTEGER," + wq.g + " INTEGER," + wq.h + " INTEGER)";
  private static final String n = "CREATE TABLE IF NOT EXISTS bind_phone_info(" + jh.a + " TEXT PRIMARY KEY," + jh.b + " INTEGER," + jh.c + " TEXT," + jh.d + " TEXT," + jh.e + " LONG," + jh.f + " INTEGER," + jh.g + " INTEGER," + jh.h + " TEXT," + jh.i + " INTEGER," + jh.j + " INTEGER," + jh.k + " TEXT," + jh.l + " TEXT," + jh.m + " TEXT)";
  private SQLiteOpenHelper o;
  private Handler p;
  private boolean q;
  private Runnable r = new ht(this);

  private hs(Context paramContext)
  {
    this.p = new Handler(paramContext.getMainLooper());
    this.o = new hu(this, paramContext, "qqpimsecure.db");
  }

  public static hs a()
  {
    return a(TMSApplication.getApplicaionContext());
  }

  private static hs a(Context paramContext)
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new hs(paramContext);
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS contactlist (id INTEGER PRIMARY KEY,name TEXT,number TEXT,type INTEGER DEFAULT(0),ringStatus INTEGER DEFAULT(1),SMStatus INTEGER DEFAULT(1))");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS securesmslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS pimcalllog (id INTEGER PRIMARY KEY,privateflag INTEGER,number TEXT,date INTEGER,duration INTEGER,type INTEGER,tagnew INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS softwareinfo (id INTEGER PRIMARY KEY,key TEXT,time TEXT,name TEXT,desc TEXT,type TEXT,class TEXT,score INTEGER,usernum INTEGER,levldate LONG,lginfdate LONG)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS networK (id INTEGER PRIMARY KEY,date LONG,data LONG,type INTEGER,imsi TEXT,flag TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS smsreport_v2 (id INTEGER PRIMARY KEY,sys_log_date INTEGER,sms_log_date INTEGER,sms BOLB,sms_type INTEGER,sms_content_type INTEGER,sender TEXT,column_action_reason INTEGER,match_final_action INTEGER, match_time INTEGER,vec_hit_ruels TEXT,vec_user_action TEXT,minus_mark INTEGER,comment TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS callreport (id INTEGER PRIMARY KEY,phone_number TEXT,call_time INTEGER,talk_time INTEGER,tel_type INTEGER,tag_type INTEGER,user_action INTEGER,client_logic INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS numbermark (id INTEGER PRIMARY KEY,phone_number TEXT,mark_id INTEGER,mark_name TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_download_task_v2 (_id INTEGER PRIMARY KEY,len INTEGER,state INTEGER,url TEXT,parent_path TEXT,current_size LONG,range_support BOOLEAN,pkg TEXT,name TEXT,md5 TEXT,ver TEXT,vercode INTEGER,logo_url TEXT,categoryid INTEGER,pos INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS mms_pdu(id INTEGER PRIMARY KEY,sl_id INTEGER,pn_cs INTEGER,to_addr TEXT,cc_addr TEXT,bcc_addr TEXT,m_id BLOB,sub TEXT,sub_cs INTEGER,ct_t BLOB,ct_l BLOB,exp INTEGER,m_cls BLOB,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id BLOB,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,f_c TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS secure_mms_pdu(id INTEGER PRIMARY KEY,sl_id INTEGER,pn_cs INTEGER,to_addr TEXT,cc_addr TEXT,bcc_addr TEXT,m_id BLOB,sub TEXT,sub_cs INTEGER,ct_t BLOB,ct_l BLOB,exp INTEGER,m_cls BLOB,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id BLOB,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,f_c TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS mms_parts(id INTEGER PRIMARY KEY,sl_id INTEGER,seq INTEGER DEFAULT 0,ct BLOB,name BLOB,chset INTEGER,cd BLOB,fn BLOB,cid BLOB,cl BLOB,dp TEXT,data BLOB)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS secure_mms_parts(id INTEGER PRIMARY KEY,sl_id INTEGER,seq INTEGER DEFAULT 0,ct BLOB,name BLOB,chset INTEGER,cd BLOB,fn BLOB,cid BLOB,cl BLOB,dp TEXT,data BLOB)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS soft_info (id INTEGER PRIMARY KEY,pkgName TEXT,certMd5 TEXT,softType INTEGER,softDesc TEXT,softDescTime INTEGER,virusName TEXT,virusDesc TEXT,virusDescTime INTEGER)");
    paramSQLiteDatabase.execSQL(l);
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS virus_record (id INTEGER PRIMARY KEY,scanDate TEXT,riskFound TEXT,virusCured TEXT,virusFound TEXT,waitingDealing TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS virus_result (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,featureName TEXT,riskInfo TEXT,state TEXT,type TEXT,handled INTEGER,handleResult INTEGER,virusScanID INTEGER)");
    paramSQLiteDatabase.execSQL(g);
    paramSQLiteDatabase.execSQL(i);
    paramSQLiteDatabase.execSQL(j);
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_cache_cty_1 (id INTEGER PRIMARY KEY,ctyId TEXT,ctyName TEXT,ctyCount TEXT,ctyIcon TEXT,ctyContent TEXT,ctyTime LONG,ctyType INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_cache_cty_2 (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,appPath TEXT,size TEXT,certMD5 TEXT,logoUrl TEXT,ctyName TEXT,expirationTime TEXT,score TEXT,fileUrl TEXT,downloadCount INTEGER,safeType INTEGER,recPicUrl TEXT,recInfo TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_cache_cty_week (id INTEGER PRIMARY KEY,ctyId TEXT,ctyName TEXT,ctyCount TEXT,ctyIcon TEXT,ctyContent TEXT,ctyTime LONG,ctyType INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_cache_specialsubject_1 (id INTEGER PRIMARY KEY,ctyId TEXT,ctyName TEXT,ctyCount TEXT,ctyIcon TEXT,ctyContent TEXT,ctyDescript TEXT,ctySign INTEGER,ctyState INTEGER,ctyTime LONG,ctyType INTEGER,ctyRank INTEGER)");
    paramSQLiteDatabase.execSQL(k);
    paramSQLiteDatabase.execSQL(e);
    paramSQLiteDatabase.execSQL(f);
    paramSQLiteDatabase.execSQL(c);
    paramSQLiteDatabase.execSQL(d);
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_game_cache_cty_1 (id INTEGER PRIMARY KEY,ctyId TEXT,ctyName TEXT,ctyCount TEXT,ctyIcon TEXT,ctyContent TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sw_game_cache_cty_2 (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,appPath TEXT,size TEXT,certMD5 TEXT,logoUrl TEXT,ctyName TEXT,expirationTime TEXT,score TEXT)");
    paramSQLiteDatabase.execSQL(h);
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS permission_info (mUId INTEGER,mPackageName TEXT,mAppName TEXT,mStates BLOB,mIsSysApp BOOLEAN,mIsTrustApp BOOLEAN)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS permission_log (mUId INTEGER,mRId INTEGER,mState INTEGER,mTimestamp TIMESTAMP)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS app_used_state (mPackageName TEXT,mUsedTimes INTEGER,mLastUsedTime INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS software_score (mID INTEGER PRIMARY KEY,mAppname TEXT,mScore INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS nocharge_body_smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS nocharge_phonenum_smslog (id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date TEXT,protocol INTEGER,read INTEGER,status INTEGER,type INTEGER,subject TEXT,body TEXT,service_center TEXT,displayName TEXT,read_extend INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS timed_task (id INTEGER PRIMARY KEY,repeat_plan INTEGER,repeat_time TEXT,start_time_hour INTEGER,start_time_mini INTEGER,task_destiney TEXT,task_destiney_status INTEGER,task_name TEXT,task_status INTEGER,type INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS feedback_history (id INTEGER PRIMARY KEY,body TEXT,date TEXT,type INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS software_search_history (id INTEGER PRIMARY KEY,body TEXT )");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_privacy_lock (id INTEGER PRIMARY KEY,pkg_name TEXT,app_name TEXT,reserverd_1 TEXT,reserverd_2 TEXT,reserverd_3 TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_software_lock_count (id INTEGER PRIMARY KEY,pkg_name TEXT,lock_count INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS operator_data_sync_result (id INTEGER PRIMARY KEY,type INTEGER,error_code INTEGER,timestamp INTEGER,area_code TEXT,sim_type TEXT,query_code TEXT,sms TEXT,trigger_type INTEGER,total_setting INTEGER,used_setting INTEGER,software_version TEXT)");
    paramSQLiteDatabase.execSQL(m);
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS report_sms_call (id INTEGER PRIMARY KEY,type INTEGER,address INTEGER,date LONG,hashcode INTEGER,smsbody TEXT,completephonenum TEXT,realreport INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS notification_app (pkg TEXT PRIMARY KEY,app_name TEXT,setting INTEGER,ad_like INTEGER,flag INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS notification_msg (id INTEGER PRIMARY KEY,pkg TEXT,title TEXT,content TEXT,date TEXT,timestamp INTEGER,NotificationID INTEGER,url TEXT,msg_flag INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS never_remind_website (website TEXT PRIMARY KEY)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS high_risk_remind_website (website TEXT PRIMARY KEY,save_time LONG)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ignore_update_soft (id INTEGER PRIMARY KEY,pkgName TEXT,appName TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filesafe_scanned_folders (id INTEGER PRIMARY KEY,fullpath TEXT,type INTEGER,count INTEGER,modifytime LONG,thumbname TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filesafe_scanned_file (id INTEGER PRIMARY KEY,fullpath TEXT,type INTEGER,bucket_id INTEGER,modifytime LONG,thumbname TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS normal_color_egg_config (value_n INTEGER PRIMARY KEY, tips_id TEXT,bitmap_url TEXT, is_has_bitmap INTEGER, track INTEGER, toast TEXT, end_time LONG, is_share_weibo INTEGER, weibo_share_wording TEXT, weibo_share_content TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS lottery_color_egg_config (id TEXT,tips_id TEXT,bitmap_url TEXT, is_has_bitmap INTEGER, track TEXT, toast TEXT, prize_id TEXT, end_time LONG, check_url TEXT, get_prize_url TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS color_egg_activity_config (id TEXT,tips_id TEXT,is_had_show INTEGER,toast TEXT, end_time LONG, url TEXT)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS startup_app_scan(pkg_name TEXT PRIMARY KEY,setting_flag INTEGER)");
    paramSQLiteDatabase.execSQL(n);
  }

  private void d()
  {
    try
    {
      this.q = true;
      this.p.removeCallbacks(this.r);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        i1 = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
        return i1;
      }
      int i1 = -1;
    }
  }

  public final int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        i1 = localSQLiteDatabase.delete(paramString1, paramString2, paramArrayOfString);
        return i1;
      }
      int i1 = -1;
    }
  }

  public final long a(String paramString, ContentValues paramContentValues)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        l1 = localSQLiteDatabase.insert(paramString, null, paramContentValues);
        return l1;
      }
      long l1 = -1L;
    }
  }

  public final long a(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        l1 = localSQLiteDatabase.insert(paramString1, paramString2, paramContentValues);
        return l1;
      }
      long l1 = -1L;
    }
  }

  public final Cursor a(String paramString)
  {
    synchronized (b)
    {
      d();
      SQLiteDatabase localSQLiteDatabase = this.o.getReadableDatabase();
      if (localSQLiteDatabase != null)
      {
        localCursor = localSQLiteDatabase.rawQuery(paramString, null);
        return localCursor;
      }
      Cursor localCursor = null;
    }
  }

  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (b)
    {
      d();
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        localCursor = localSQLiteDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString5);
        return localCursor;
      }
      Cursor localCursor = null;
    }
  }

  public final boolean a(dv paramdv)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        paramdv.a(this);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        b();
        return true;
      }
      finally
      {
        localObject3 = finally;
        localSQLiteDatabase.endTransaction();
        b();
        throw localObject3;
      }
    }
  }

  public final void b()
  {
    try
    {
      this.q = false;
      this.p.removeCallbacks(this.r);
      this.p.postDelayed(this.r, 3000L);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(String paramString)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
        localSQLiteDatabase.execSQL(paramString);
      return;
    }
  }

  public final int c(String paramString)
  {
    synchronized (b)
    {
      SQLiteDatabase localSQLiteDatabase = this.o.getWritableDatabase();
      if (localSQLiteDatabase != null)
      {
        i1 = localSQLiteDatabase.delete(paramString, null, null);
        return i1;
      }
      int i1 = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hs
 * JD-Core Version:    0.6.2
 */