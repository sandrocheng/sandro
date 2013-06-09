.class public final Lorg/antivirus/antitheft/j;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field b:Landroid/media/MediaPlayer;

.field c:Lorg/antivirus/core/Engine;

.field d:Lorg/antivirus/core/EngineSettings;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Ljava/util/HashMap;

.field private r:J


# direct methods
.method public constructor <init>(Lorg/antivirus/core/Engine;Lorg/antivirus/core/EngineSettings;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/antivirus/antitheft/j;->e:I

    iput v3, p0, Lorg/antivirus/antitheft/j;->f:I

    iput v4, p0, Lorg/antivirus/antitheft/j;->g:I

    iput v5, p0, Lorg/antivirus/antitheft/j;->h:I

    iput v6, p0, Lorg/antivirus/antitheft/j;->i:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/antivirus/antitheft/j;->j:I

    const/16 v0, 0x9

    iput v0, p0, Lorg/antivirus/antitheft/j;->k:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/antivirus/antitheft/j;->l:I

    const/16 v0, 0xb

    iput v0, p0, Lorg/antivirus/antitheft/j;->m:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/antivirus/antitheft/j;->n:I

    const/16 v0, 0xd

    iput v0, p0, Lorg/antivirus/antitheft/j;->o:I

    const/16 v0, 0xe

    iput v0, p0, Lorg/antivirus/antitheft/j;->p:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    new-instance v0, Lorg/antivirus/antitheft/k;

    invoke-direct {v0, p0}, Lorg/antivirus/antitheft/k;-><init>(Lorg/antivirus/antitheft/j;)V

    iput-object v0, p0, Lorg/antivirus/antitheft/j;->a:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/antivirus/antitheft/j;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lorg/antivirus/antitheft/j;->c:Lorg/antivirus/core/Engine;

    iput-object p2, p0, Lorg/antivirus/antitheft/j;->d:Lorg/antivirus/core/EngineSettings;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "FindMyPhone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "LockMyPhone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "UnLockMyPhone"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "WipeMyPhone"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "ScanMyPhone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "UnroamMyPhone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "FoundMyPhone"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "ScreamMyPhone"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "LightMyPhone"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "ConnectMyPhone"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "FeatureMyPhone"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    const-string v1, "LocateMyPhone"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "content://settings/SECURE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    const-string v3, "location_providers_allowed"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v2, "value"

    const-string v3, "network,gps"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void

    :cond_1
    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 21

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldSendLocation()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/antitheft/j;->c:Lorg/antivirus/core/Engine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/antivirus/antitheft/b;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/antitheft/u;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const-wide/32 v7, 0x493e0

    const-wide/32 v5, 0xea60

    const-wide/16 v3, 0x5

    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_2

    const-wide/32 v7, 0x493e0

    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gtz v9, :cond_3

    const-wide/32 v5, 0xea60

    :cond_3
    const-wide/16 v9, 0x5

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_4

    const-wide/16 v3, 0x1

    :cond_4
    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v19, v7

    move-wide/from16 v8, v19

    move-wide/from16 v6, v17

    :goto_1
    :try_start_2
    new-instance v10, Lorg/antivirus/antitheft/u;

    invoke-direct {v10}, Lorg/antivirus/antitheft/u;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/antitheft/j;->d:Lorg/antivirus/core/EngineSettings;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v3}, Lorg/antivirus/antitheft/u;->a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/antitheft/j;->c:Lorg/antivirus/core/Engine;

    invoke-static {v3, v10}, Lorg/antivirus/antitheft/b;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/antitheft/u;)V

    if-eqz p2, :cond_5

    new-instance v3, Lorg/antivirus/antitheft/ab;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/antivirus/antitheft/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/antivirus/antitheft/ab;->a()V

    :cond_5
    new-instance v3, Landroid/os/HandlerThread;

    const-string v11, "LR"

    invoke-direct {v3, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lorg/antivirus/antitheft/n;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10}, Lorg/antivirus/antitheft/n;-><init>(Lorg/antivirus/antitheft/j;Lorg/antivirus/antitheft/u;)V

    const/4 v3, 0x0

    :goto_2
    int-to-long v13, v3

    cmp-long v13, v13, v4

    if-gez v13, :cond_6

    add-int/lit8 v13, v3, 0x1

    int-to-long v13, v13

    mul-long/2addr v13, v6

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    const-wide/32 v7, 0x493e0

    const-wide/32 v5, 0xea60

    const-wide/16 v3, 0x5

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v19, v7

    move-wide/from16 v8, v19

    move-wide/from16 v6, v17

    goto :goto_1

    :cond_6
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_8

    invoke-virtual/range {p0 .. p1}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;)V

    :goto_3
    new-instance v2, Lorg/antivirus/antitheft/o;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/antivirus/antitheft/o;-><init>(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V

    invoke-virtual {v11, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/antitheft/j;->d:Lorg/antivirus/core/EngineSettings;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v8, v9}, Lorg/antivirus/antitheft/u;->a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lorg/antivirus/antitheft/j;->b:Landroid/media/MediaPlayer;

    throw v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lorg/antivirus/antitheft/j;->a:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v0, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MyPhone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "^\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v4, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v1

    if-le v3, v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "body"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "fromsms"

    const-string v1, "random"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lorg/antivirus/antitheft/j;->b(Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_3

    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/antivirus/antitheft/j;->d:Lorg/antivirus/core/EngineSettings;

    invoke-static {p2, v3}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    const-string v2, "args1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "args2"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/antitheft/j;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_2

    :pswitch_2
    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/antivirus/antitheft/j;->b(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v2, v3}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/antivirus/antitheft/j;->r:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_8

    iget-wide v4, p0, Lorg/antivirus/antitheft/j;->r:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/antivirus/antitheft/j;->r:J

    if-eqz v2, :cond_9

    if-nez v3, :cond_a

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/antivirus/antitheft/j;->b(Landroid/content/Context;Z)V

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v2, v3}, Lorg/antivirus/antitheft/j;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPermLock(Z)V

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lorg/antivirus/antitheft/b;->a(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPermLock(Z)V

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "random"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lorg/antivirus/antitheft/b;->a(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPermLock(Z)V

    invoke-static {v2}, Lorg/antivirus/AVSettings;->setPremPass(Ljava/lang/String;)V

    if-eqz v3, :cond_d

    invoke-static {v3}, Lorg/antivirus/AVSettings;->setLostMsg(Ljava/lang/String;)V

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x67

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x141

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_e
    new-instance v0, Lorg/antivirus/wipe/ai;

    invoke-direct {v0, p2}, Lorg/antivirus/wipe/ai;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/antivirus/wipe/ai;->a()Z

    invoke-virtual {v0}, Lorg/antivirus/wipe/ai;->b()V

    invoke-static {}, Lorg/antivirus/wipe/ai;->c()Z

    invoke-virtual {v0}, Lorg/antivirus/wipe/ai;->d()V

    invoke-static {}, Lorg/antivirus/wipe/ai;->e()V

    goto/16 :goto_2

    :pswitch_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/antitheft/l;

    invoke-direct {v2, p0, p2}, Lorg/antivirus/antitheft/l;-><init>(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :pswitch_a
    :try_start_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/antitheft/m;

    invoke-direct {v2, p0}, Lorg/antivirus/antitheft/m;-><init>(Lorg/antivirus/antitheft/j;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
