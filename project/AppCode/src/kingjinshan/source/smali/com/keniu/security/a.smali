.class public final Lcom/keniu/security/a;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final A:Ljava/lang/String; = "auto_ignore_malware"

.field private static final B:Ljava/lang/String; = "process_system_time"

.field private static final C:Ljava/lang/String; = "update_parse_sms_time"

.field private static final D:Ljava/lang/String; = "first_query_charge2"

.field private static E:Landroid/content/Context; = null

.field private static F:J = 0x0L

.field private static final G:Ljava/lang/String; = "is_used_scan"

.field private static final H:Ljava/lang/String; = "last_scan_time"

.field private static final I:Ljava/lang/String; = "scan_count"

.field private static final J:Ljava/lang/String; = "scan_file_count"

.field private static final K:Ljava/lang/String; = "scan_file_count_once"

.field private static final L:Ljava/lang/String; = "scan_malware_count"

.field private static final M:Ljava/lang/String; = "once_scan_use_cloud_scan"

.field private static final N:Ljava/lang/String; = "cloud_scan_start"

.field private static final O:Ljava/lang/String; = "rpt_installed"

.field private static final P:Ljava/lang/String; = "last_clean_gmail_time"

.field private static final Q:Ljava/lang/String; = "last_clean_maps_time"

.field private static final R:Ljava/lang/String; = "last_clean_market_time"

.field private static final S:Ljava/lang/String; = "clean_rubbish_dialog_alert_set_key"

.field private static final T:Ljava/lang/String; = "desk_sms_operat_key"

.field private static final U:Ljava/lang/String; = "is_first_use_friend_space"

.field private static final V:Ljava/lang/String; = "is_alert_join_cloud"

.field private static final W:Ljava/lang/String; = "is_version_first_run"

.field private static final X:Ljava/lang/String; = "process_white_list"

.field private static Z:Ljava/lang/String; = null

.field private static final a:Ljava/lang/String; = "AgreeVersion"

.field private static final b:Ljava/lang/String; = "FriendCall"

.field private static final c:Ljava/lang/String; = "FriendSms"

.field private static final d:Ljava/lang/String; = "IsFriendNotice"

.field private static final e:Ljava/lang/String; = "IsExtraCallEnable"

.field private static final f:Ljava/lang/String; = "IsLockedinCalling"

.field private static final g:Ljava/lang/String; = "ExtraCallStyle"

.field private static final h:Ljava/lang/String; = "ExtraCallTimeout"

.field private static final i:Ljava/lang/String; = "IsAutoStartup"

.field private static final j:Ljava/lang/String; = "EnableImportWarning"

.field private static final k:Ljava/lang/String; = "UpdateDateRecord"

.field private static final l:Ljava/lang/String; = "LocationLayoutConfigX"

.field private static final m:Ljava/lang/String; = "LocationLayoutConfigY"

.field private static final n:Ljava/lang/String; = "IsLocationLayoutHorizontalCenter"

.field private static final o:Ljava/lang/String; = "EnableDummy"

.field private static final p:Ljava/lang/String; = "StartupVersion"

.field private static final q:Ljava/lang/String; = "ServiceStartupVersion"

.field private static final r:Ljava/lang/String; = "IsEnableBugFeed"

.field private static final s:Ljava/lang/String; = "LastBugFeedTime"

.field private static final t:Ljava/lang/String; = "LastBugFeedCount"

.field private static final u:Ljava/lang/String; = "public_preference_startup_autoupdate"

.field private static final v:Ljava/lang/String; = "public_preference_startup_autoupdate_in_wifi_model"

.field private static final w:Ljava/lang/String; = "friend_dummy_space"

.field private static final x:Ljava/lang/String; = "default_location"

.field private static final y:Ljava/lang/String; = "public_pref_cloud_scan_key"

.field private static final z:Ljava/lang/String; = "public_pref_upload_key"


# instance fields
.field private final Y:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/keniu/security/a;->F:J

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/a;->Z:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/a;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/keniu/security/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/b;-><init>(Lcom/keniu/security/a;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    sget-object v0, Lcom/keniu/security/a;->Z:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-static {p1}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/a;->Z:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 101
    sget-wide v0, Lcom/keniu/security/a;->F:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/keniu/security/c;->a()Lcom/keniu/security/a;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public static aG()Ljava/lang/String;
    .locals 2

    .prologue
    .line 893
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b0623

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aT()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    return-object v0
.end method

.method private aU()Z
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "autoupdateservice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 367
    return v0
.end method

.method private aV()Z
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "autoupdateapk"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 378
    return v0
.end method

.method private aW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "autoupdateapkpath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    return-object v0
.end method

.method private aX()Z
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstMainActivityShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 403
    const-string v2, "isFirstMainActivityShow"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    :cond_0
    return v0
.end method

.method private aY()Z
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstInterIpDialSetting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private aZ()Z
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isSelectIpDialSetting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 643
    :goto_0
    return v0

    .line 641
    :catch_0
    move-exception v1

    const-string v1, "ConfigManager"

    const-string v2, " is not a number"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bA()V
    .locals 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 960
    const-string v1, "is_used_scan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 961
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    return-void
.end method

.method private bB()I
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "scan_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 983
    return v0
.end method

.method private bC()I
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "scan_file_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 994
    return v0
.end method

.method private bD()I
    .locals 3

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "scan_malware_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1005
    return v0
.end method

.method private bE()I
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "scan_file_count_once"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1016
    return v0
.end method

.method private bF()Z
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "once_scan_use_cloud_scan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1028
    return v0
.end method

.method private bG()Z
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "cloud_scan_start"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1034
    return v0
.end method

.method private ba()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    const-string v1, "isSelectIpDialSetting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    return-void
.end method

.method private bb()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 467
    const-string v1, "isFirstInterIpDialSetting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    return-void
.end method

.method private bc()J
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "process_system_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static bd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b045d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static be()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b0464

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bg()Z
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v2, 0x7f0b0464

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static bh()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b0462

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bi()Z
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v2, 0x7f0b0462

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bj()J
    .locals 4

    .prologue
    .line 600
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "last_clean_market_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private bk()J
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "last_clean_maps_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private bl()J
    .locals 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "last_clean_gmail_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private bm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "AgreeVersion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bn()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    const-string v1, "StartupVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    return-void
.end method

.method private bo()Z
    .locals 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "StartupVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bp()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    const-string v1, "ServiceStartupVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    return-void
.end method

.method private bq()Z
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v2, 0x7f0b0466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static br()Ljava/lang/String;
    .locals 2

    .prologue
    .line 787
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b064b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 808
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b0625

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 819
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b064d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "default_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 844
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b064c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bw()Ljava/lang/String;
    .locals 2

    .prologue
    .line 861
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b065a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bx()Ljava/lang/String;
    .locals 2

    .prologue
    .line 876
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b065b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private by()Ljava/lang/String;
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "pl"

    const-string v2, "19700101"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bz()Z
    .locals 3

    .prologue
    .line 955
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "is_used_scan"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    const-string v1, "autoupdateservice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    return-void
.end method

.method private e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    const-string v1, "autoupdateapk"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    return-void
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 976
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    const-string v1, "scan_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    const-string v1, "autoupdateapkpath"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    return-void
.end method

.method private f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1021
    const-string v1, "once_scan_use_cloud_scan"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1022
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1023
    return-void
.end method

.method static synthetic g(J)J
    .locals 0
    .parameter

    .prologue
    .line 19
    sput-wide p0, Lcom/keniu/security/a;->F:J

    return-wide p0
.end method

.method private g(I)V
    .locals 2
    .parameter

    .prologue
    .line 987
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 988
    const-string v1, "scan_file_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 990
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    const-string v1, "AgreeVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    return-void
.end method

.method private g(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1039
    const-string v1, "cloud_scan_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1041
    return-void
.end method

.method private h(I)V
    .locals 2
    .parameter

    .prologue
    .line 998
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 999
    const-string v1, "scan_malware_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1001
    return-void
.end method

.method private h(J)V
    .locals 2
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    const-string v1, "process_system_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 833
    const-string v1, "default_location"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 834
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    return-void
.end method

.method private i(I)V
    .locals 2
    .parameter

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1010
    const-string v1, "scan_file_count_once"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1012
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 903
    const-string v1, "pl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 905
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isAutoShowRootDialog2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final B()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    const-string v1, "isAutoShowRootDialog2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method public final C()Z
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isTrafficFireWallRootDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final D()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    const-string v1, "isTrafficFireWallRootDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public final E()Z
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstInstall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 273
    const-string v2, "isFirstInstall"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    :cond_0
    return v0
.end method

.method public final F()Z
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "autoAdjustTip"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 283
    const-string v2, "autoAdjustTip"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    :cond_0
    return v0
.end method

.method public final G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "process_white_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H()Z
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstSetProcessWhiteList"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    const-string v1, "isFirstSetProcessWhiteList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method public final J()Z
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstSetDefaultProcessWhiteList"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final K()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    const-string v1, "isFirstSetDefaultProcessWhiteList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    return-void
.end method

.method public final L()Z
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstShowBigXuanFuChuang"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final M()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    const-string v1, "isFirstShowBigXuanFuChuang"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method

.method public final N()Z
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "showNewFun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final O()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    const-string v1, "showNewFun"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    return-void
.end method

.method public final P()Z
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "showFirstInTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Q()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    const-string v1, "showFirstInTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    return-void
.end method

.method public final R()Z
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "showFirstFirwallSmsTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final S()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    const-string v1, "showFirstFirwallSmsTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method public final T()Z
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstScan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 411
    return v0
.end method

.method public final U()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    const-string v1, "isFirstScan"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    return-void
.end method

.method public final V()Z
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstConfigIp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final W()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    const-string v1, "isFirstConfigIp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    return-void
.end method

.method public final X()Z
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstInterTraffic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Y()Z
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isconvertIpDialPrefrencesSecond"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Z()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 455
    const-string v1, "isconvertIpDialPrefrencesSecond"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    return-void
.end method

.method public final a(Landroid/util/DisplayMetrics;)I
    .locals 4
    .parameter

    .prologue
    .line 710
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x42b4

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 711
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "IsLocationLayoutHorizontalCenter"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "LocationLayoutConfigX"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 664
    const-string v1, "traffic_xuanfuchuang_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 666
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    const-string v1, "LocationLayoutConfigX"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 705
    const-string v1, "LocationLayoutConfigY"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 706
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 707
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    const-string v1, "update_parse_sms_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 798
    invoke-static {}, Lcom/keniu/security/a;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 799
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 800
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    const-string v1, "process_white_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 880
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    .line 882
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 883
    invoke-static {}, Lcom/keniu/security/a;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 545
    const-string v1, "IsExtraCallEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    return-void
.end method

.method public final aA()I
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->bs()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020146

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final aB()Ljava/lang/String;
    .locals 4

    .prologue
    .line 812
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->bt()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v3, 0x7f0b064e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aC()I
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->bv()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final aD()Ljava/lang/String;
    .locals 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->bw()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v3, 0x7f0b065c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aE()I
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->bx()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final aF()Ljava/lang/String;
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/keniu/security/a;->aG()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v3, 0x7f0b03d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aH()Z
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v2, 0x7f0b05b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aI()Z
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "public_pref_cloud_scan_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aJ()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    const-string v1, "public_pref_cloud_scan_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 919
    return-void
.end method

.method public final aK()Z
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "public_pref_upload_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aL()V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 927
    const-string v1, "public_pref_upload_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 928
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 929
    return-void
.end method

.method public final aM()Z
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "auto_ignore_malware"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aN()V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 937
    const-string v1, "auto_ignore_malware"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 939
    return-void
.end method

.method public final aO()Z
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "first_query_charge2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aP()V
    .locals 3

    .prologue
    .line 949
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 950
    const-string v1, "first_query_charge2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 951
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 952
    return-void
.end method

.method public final aQ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "last_scan_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    return-object v0
.end method

.method public final aR()Z
    .locals 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keniu/security/a;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rpt_installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aS()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keniu/security/a;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rpt_installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1053
    return-void
.end method

.method public final aa()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    const-string v1, "isFirstInterTraffic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    return-void
.end method

.method public final ab()J
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "update_parse_sms_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ac()I
    .locals 2

    .prologue
    .line 496
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b045d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public final ad()Z
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "public_preference_startup_autoupdate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ae()Z
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "public_preference_startup_autoupdate_in_wifi_model"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final af()I
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/keniu/security/a;->E:Landroid/content/Context;

    const v1, 0x7f0b045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public final ag()Z
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "IsExtraCallEnable"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 537
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ah()Z
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "IsLockedinCalling"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ai()Z
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "friend_dummy_space"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aj()Z
    .locals 6

    .prologue
    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v3, "last_clean_market_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ak()Z
    .locals 6

    .prologue
    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v3, "last_clean_maps_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final al()Z
    .locals 6

    .prologue
    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v3, "last_clean_gmail_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final am()I
    .locals 4

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "ExtraCallStyle"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 618
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final an()I
    .locals 4

    .prologue
    .line 622
    const/16 v0, 0xf

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "ExtraCallTimeout"

    const-string v3, "15"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 628
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final ao()Z
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "IsAutoStartup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ap()V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 658
    const-string v1, "kn_traffis_xuanfuchuang_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    return-void
.end method

.method public final aq()I
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "traffic_xuanfuchuang_x"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ar()I
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "traffic_xuanfuchuang_y"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final as()J
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "UpdateDateRecord"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 690
    return-wide v0
.end method

.method public final at()Z
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "kn_traffis_xuanfuchuang_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final au()Z
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "EnableImportWarning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final av()Z
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "EnableDummy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aw()V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 730
    const-string v1, "EnableImportWarning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 732
    return-void
.end method

.method public final ax()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 746
    const-string v1, "ServiceStartupVersion"

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 748
    return-void
.end method

.method public final ay()J
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "LastBugFeedTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final az()I
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "LastBugFeedCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter

    .prologue
    .line 720
    const/high16 v0, 0x42b4

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 721
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v2, "LocationLayoutConfigY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "ServiceStartupVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    const-string v1, "traffic_xuanfuchuang_y"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    return-void
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    const-string v1, "last_clean_market_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    const-string v1, "IsLockedinCalling"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_version_first_run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_version_first_run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/a;->E:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    const-string v1, "LastBugFeedCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 778
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 779
    return-void
.end method

.method public final c(J)V
    .locals 2
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    const-string v1, "last_clean_maps_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 792
    invoke-static {}, Lcom/keniu/security/a;->bt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 794
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 565
    const-string v1, "friend_dummy_space"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    return-void
.end method

.method public final d(I)V
    .locals 2
    .parameter

    .prologue
    .line 838
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    invoke-static {}, Lcom/keniu/security/a;->bv()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    return-void
.end method

.method public final d(J)V
    .locals 2
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    const-string v1, "last_clean_gmail_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 597
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 855
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    invoke-static {}, Lcom/keniu/security/a;->bw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 858
    return-void
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "clean_rubbish_dialog_alert_set_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    const-string v1, "clean_rubbish_dialog_alert_set_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public final e(I)V
    .locals 2
    .parameter

    .prologue
    .line 870
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 871
    invoke-static {}, Lcom/keniu/security/a;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 872
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 873
    return-void
.end method

.method public final e(J)V
    .locals 2
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    const-string v1, "UpdateDateRecord"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 686
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    const-string v1, "last_scan_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 968
    return-void
.end method

.method public final f(J)V
    .locals 2
    .parameter

    .prologue
    .line 766
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 767
    const-string v1, "LastBugFeedTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 768
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    return-void
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFileDownWatcherOn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFileInstWatcherOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFileOpenWatcherOn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string v1, "isFileInstWatcherOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "is_alert_join_cloud"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    const-string v1, "is_alert_join_cloud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public final l()I
    .locals 2

    .prologue
    .line 155
    const-string v0, "FriendCall"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    .prologue
    .line 159
    const-string v0, "FriendSms"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 2

    .prologue
    .line 163
    const-string v0, "desk_sms_operat_key"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "is_first_use_friend_space"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    const-string v1, "is_first_use_friend_space"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void
.end method

.method public final q()Z
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "IsFriendNotice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isFirstInstallShortCut"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 185
    const-string v2, "isFirstInstallShortCut"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    :cond_0
    return v0
.end method

.method public final s()Z
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "shouldRecommendExamine"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 196
    const-string v2, "shouldRecommendExamine"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    :cond_0
    return v0
.end method

.method public final t()Z
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "shouldNotifyOpenPref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    const-string v2, "shouldNotifyOpenPref"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    :cond_0
    return v0
.end method

.method public final u()Z
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "usedAutoAdjustTraffic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    const-string v1, "usedAutoAdjustTraffic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    return-void
.end method

.method public final w()Z
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isPopupWindowShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    const-string v1, "isPopupWindowShow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method public final y()Z
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    const-string v1, "isAutoShowRootDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/keniu/security/a;->Y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    const-string v1, "isAutoShowRootDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    return-void
.end method
