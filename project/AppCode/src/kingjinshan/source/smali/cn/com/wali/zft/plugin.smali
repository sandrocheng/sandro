.class public final Lcn/com/wali/zft/plugin;
.super Ljava/lang/Object;
.source "plugin.java"


# static fields
.field private static cbs:Ljava/util/ArrayList;

.field private static instance:Lcn/com/wali/zft/plugin;


# instance fields
.field private analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

.field private asyn_state:I

.field private mContext:Landroid/content/Context;

.field private sms_count:I

.field private test:Ljava/lang/String;

.field private timeout:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "p"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    .line 66
    iput v0, p0, Lcn/com/wali/zft/plugin;->sms_count:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/wali/zft/plugin;->test:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v1, "cn.com.wali.zft.plugin.var"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/com/wali/zft/VarChange;

    invoke-direct {v2}, Lcn/com/wali/zft/VarChange;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method private native Asyn(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
.end method

.method public static Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcn/com/wali/zft/plugin;

    invoke-direct {v0, p0}, Lcn/com/wali/zft/plugin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    .line 89
    :cond_0
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    invoke-direct {v0, p0, p1, p2}, Lcn/com/wali/zft/plugin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcn/com/wali/zft/plugin;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/com/wali/zft/plugin;->asyn_timeout()V

    return-void
.end method

.method private asyn_timeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    invoke-virtual {v0}, Lcn/com/wali/zft/SemantemeAnalyzer;->Release()V

    .line 533
    iput-object v1, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    .line 535
    :cond_0
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 538
    iput-object v1, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    .line 541
    :cond_1
    :try_start_0
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 542
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/zft/ZftPluginCallBack;

    invoke-interface {v0}, Lcn/com/wali/zft/ZftPluginCallBack;->Sync_Timeout()V

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    goto :goto_0

    .line 551
    :catch_1
    move-exception v0

    .line 553
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    .line 554
    invoke-direct {p0}, Lcn/com/wali/zft/plugin;->endAsyn()V

    .line 555
    return-void
.end method

.method private native beginAsyn(I)I
.end method

.method private broadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    const-string v1, "cn.com.wali.zft.plugin.var"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "pkg"

    iget-object v2, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method private native checkcontaint()I
.end method

.method private native checkvar(Ljava/lang/String;)I
.end method

.method private native endAsyn()V
.end method

.method private static native feecode()Ljava/lang/String;
.end method

.method public static getInstance()Lcn/com/wali/zft/plugin;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "please run plugin.Init"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    return-object v0
.end method

.method public static native getbrands(Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public static native getcarries()Ljava/util/ArrayList;
.end method

.method public static native getcities(I)Ljava/util/ArrayList;
.end method

.method public static native getprovinces()Ljava/util/ArrayList;
.end method

.method public static native getversion()I
.end method

.method private native init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static load_library(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "p"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    move v0, v7

    .line 116
    :goto_0
    return v0

    .line 102
    :cond_0
    const-class v1, Lcn/com/wali/zft/plugin;

    const-string v2, "/p"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 106
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    .line 116
    goto :goto_0

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    .line 112
    goto :goto_0
.end method

.method private static sms_status(I)V
    .locals 3
    .parameter

    .prologue
    .line 514
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    if-eqz v0, :cond_0

    .line 516
    sget-object v0, Lcn/com/wali/zft/plugin;->instance:Lcn/com/wali/zft/plugin;

    iget v1, v0, Lcn/com/wali/zft/plugin;->sms_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/com/wali/zft/plugin;->sms_count:I

    .line 518
    :cond_0
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/zft/ZftPluginCallBack;

    .line 522
    if-nez p0, :cond_1

    :try_start_0
    sget-object v2, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_success:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;

    :goto_1
    invoke-interface {v0, v2}, Lcn/com/wali/zft/ZftPluginCallBack;->Sync_Status(Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;)V

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    goto :goto_0

    .line 522
    :cond_1
    sget-object v2, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->sms_fail:Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 526
    :cond_2
    return-void
.end method


# virtual methods
.method public final Asyn_1_1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/util/HashMap;
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 274
    if-nez p3, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v4

    .line 278
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcn/com/wali/zft/plugin;->Asyn(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v5

    .line 281
    if-ltz v5, :cond_0

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcn/com/wali/zft/SemantemeAnalyzer;->Analyzer(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 290
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Lcn/com/wali/zft/Pair;

    move-object/from16 p2, v0

    .line 292
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcn/com/wali/zft/plugin;->checkvar(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 298
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    move-object v8, v0

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 303
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    const v7, 0x7fffffff

    .line 307
    new-instance v8, Lcn/com/wali/zft/DataStore;

    invoke-direct {v8}, Lcn/com/wali/zft/DataStore;-><init>()V

    .line 308
    invoke-virtual {v8}, Lcn/com/wali/zft/DataStore;->open()Z

    .line 310
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Lcn/com/wali/zft/Pair;

    move-object/from16 p2, v0

    .line 312
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcn/com/wali/zft/plugin;->checkvar(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 315
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    move-object/from16 p3, v0

    check-cast p3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcn/com/wali/zft/plugin;->broadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object v9, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    move-object v10, v0

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    move-object/from16 p3, v0

    check-cast p3, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/com/wali/zft/DataStore;->put_value(Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcn/com/wali/zft/SemantemeAnalyzer;->getVar2Readable(Ljava/lang/String;)Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;

    move-result-object v9

    .line 322
    if-eqz v9, :cond_5

    .line 325
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 329
    :goto_3
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_4

    .line 331
    iget v10, v9, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->rate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, v9, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->unit:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    :cond_5
    :goto_4
    const-string v9, "BASIC_SSYE"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 345
    const/16 v9, 0x3e8

    if-ge v7, v9, :cond_4

    if-lez v7, :cond_4

    goto/16 :goto_2

    .line 327
    :catch_0
    move-exception v7

    const v7, 0x7fffffff

    goto :goto_3

    .line 339
    :cond_6
    const-string v10, "%1$-10s%2$.2f%3$s\n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->readable:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u4e3a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    int-to-double v13, v7

    iget v15, v9, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->rate:I

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v9, v9, Lcn/com/wali/zft/SemantemeAnalyzer$VarReadable;->unit:Ljava/lang/String;

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 350
    :cond_7
    const-string v9, "BASIC_SSQF"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 355
    :cond_8
    invoke-virtual {v8}, Lcn/com/wali/zft/DataStore;->close()V

    .line 356
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lcn/com/wali/zft/plugin;->checkcontaint()I

    move-result v5

    if-nez v5, :cond_9

    .line 358
    const/4 v5, 0x0

    const-string v7, "\u74e6\u529b\u6d41\u91cf\u4eea\u63d0\u793a\u60a8:\n"

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/wali/zft/plugin;->sms_count:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/wali/zft/plugin;->sms_count:I

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcn/com/wali/zft/plugin;->sms_count:I

    move v5, v0

    if-gtz v5, :cond_0

    .line 366
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcn/com/wali/zft/plugin;->asyn_state:I

    goto/16 :goto_0
.end method

.method public final native available()I
.end method

.method public final beginAsyn_1_1(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 225
    iget v0, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    if-ne v0, v1, :cond_0

    .line 227
    const/16 v0, -0xa

    .line 241
    :goto_0
    return v0

    .line 229
    :cond_0
    iput v1, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    .line 230
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    .line 235
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    .line 236
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    new-instance v1, Lcn/com/wali/zft/plugin$AsynTimeOutTask;

    invoke-direct {v1, p0}, Lcn/com/wali/zft/plugin$AsynTimeOutTask;-><init>(Lcn/com/wali/zft/plugin;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 238
    new-instance v0, Lcn/com/wali/zft/SemantemeAnalyzer;

    iget-object v1, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/com/wali/zft/plugin;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/zft"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dict"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcn/com/wali/zft/SemantemeAnalyzer;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    .line 239
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    invoke-virtual {v0}, Lcn/com/wali/zft/SemantemeAnalyzer;->Init()Z

    .line 240
    invoke-direct {p0, p1}, Lcn/com/wali/zft/plugin;->beginAsyn(I)I

    move-result v0

    goto :goto_0
.end method

.method public final endAsyn_1_1()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    invoke-virtual {v0}, Lcn/com/wali/zft/SemantemeAnalyzer;->Release()V

    .line 420
    iput-object v1, p0, Lcn/com/wali/zft/plugin;->analyzer:Lcn/com/wali/zft/SemantemeAnalyzer;

    .line 422
    :cond_0
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 425
    iput-object v1, p0, Lcn/com/wali/zft/plugin;->timeout:Ljava/util/Timer;

    .line 428
    :cond_1
    :try_start_0
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 429
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/zft/ZftPluginCallBack;

    invoke-interface {v0}, Lcn/com/wali/zft/ZftPluginCallBack;->Sync_End()V

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 440
    :cond_2
    iput v2, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    .line 441
    invoke-direct {p0}, Lcn/com/wali/zft/plugin;->endAsyn()V

    .line 442
    return v2
.end method

.method public final isAsynFinished()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcn/com/wali/zft/plugin;->asyn_state:I

    return v0
.end method

.method public final load_today_cache(I)Ljava/util/ArrayList;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 149
    new-instance v0, Lcn/com/wali/zft/DataStore;

    invoke-direct {v0}, Lcn/com/wali/zft/DataStore;-><init>()V

    .line 150
    invoke-virtual {v0}, Lcn/com/wali/zft/DataStore;->open()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 154
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    if-ne p1, v2, :cond_2

    .line 158
    invoke-virtual {v0}, Lcn/com/wali/zft/DataStore;->get_current()[Lcn/com/wali/zft/DataStore$Pojo;

    move-result-object v2

    .line 159
    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 161
    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/com/wali/zft/plugin;->checkvar(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    new-instance v6, Lcn/com/wali/zft/Pair;

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcn/com/wali/zft/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 169
    invoke-virtual {v0}, Lcn/com/wali/zft/DataStore;->get_current()[Lcn/com/wali/zft/DataStore$Pojo;

    move-result-object v2

    .line 170
    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 172
    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/com/wali/zft/plugin;->checkvar(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    new-instance v6, Lcn/com/wali/zft/Pair;

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcn/com/wali/zft/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v0}, Lcn/com/wali/zft/DataStore;->get_current()[Lcn/com/wali/zft/DataStore$Pojo;

    move-result-object v2

    .line 181
    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 183
    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/com/wali/zft/plugin;->checkvar(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    .line 185
    new-instance v6, Lcn/com/wali/zft/Pair;

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcn/com/wali/zft/DataStore$Pojo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcn/com/wali/zft/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {v0}, Lcn/com/wali/zft/DataStore;->close()V

    .line 191
    return-object v1
.end method

.method public final registCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V
    .locals 1
    .parameter

    .prologue
    .line 496
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final native smsNeedBlock(Ljava/lang/String;)I
.end method

.method public final unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V
    .locals 1
    .parameter

    .prologue
    .line 509
    sget-object v0, Lcn/com/wali/zft/plugin;->cbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public final native update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
