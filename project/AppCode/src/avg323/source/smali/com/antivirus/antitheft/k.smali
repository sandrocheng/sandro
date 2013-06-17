.class public Lcom/antivirus/antitheft/k;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field b:Landroid/media/MediaPlayer;

.field c:Lcom/antivirus/core/b;

.field private final d:I

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

.field private p:Ljava/util/HashMap;

.field private q:Lcom/avg/toolkit/UID/a;

.field private r:J

.field private s:Z

.field private t:I

.field private u:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/antivirus/core/b;Lcom/avg/toolkit/UID/a;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/antivirus/antitheft/k;->d:I

    iput v4, p0, Lcom/antivirus/antitheft/k;->e:I

    iput v5, p0, Lcom/antivirus/antitheft/k;->f:I

    iput v6, p0, Lcom/antivirus/antitheft/k;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/antivirus/antitheft/k;->h:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/antivirus/antitheft/k;->i:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/antivirus/antitheft/k;->j:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/antivirus/antitheft/k;->k:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/antivirus/antitheft/k;->l:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/antivirus/antitheft/k;->m:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/antivirus/antitheft/k;->n:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/antivirus/antitheft/k;->o:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    new-instance v0, Lcom/antivirus/antitheft/l;

    invoke-direct {v0, p0}, Lcom/antivirus/antitheft/l;-><init>(Lcom/antivirus/antitheft/k;)V

    iput-object v0, p0, Lcom/antivirus/antitheft/k;->a:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/antivirus/antitheft/k;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/antivirus/antitheft/k;->s:Z

    iput v2, p0, Lcom/antivirus/antitheft/k;->t:I

    iput-object p1, p0, Lcom/antivirus/antitheft/k;->c:Lcom/antivirus/core/b;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "findmyphone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "lockmyphone"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "unlockmyphone"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "wipemyphone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "scanmyphone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "unroammyphone"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "foundmyphone"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "screammyphone"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "lightmyphone"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "connectmyphone"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "featuremyphone"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    const-string v1, "locatemyphone"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/antivirus/antitheft/k;->q:Lcom/avg/toolkit/UID/a;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/antitheft/k;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/antitheft/k;->t:I

    return v0
.end method

.method static synthetic a(Lcom/antivirus/antitheft/k;I)I
    .locals 0

    iput p1, p0, Lcom/antivirus/antitheft/k;->t:I

    return p1
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 21

    invoke-static {}, Lcom/antivirus/c;->d()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;Lcom/antivirus/antitheft/w;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    move-object v9, v2

    :goto_1
    const-wide/32 v6, 0x493e0

    const-wide/32 v4, 0xea60

    div-long v2, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_1

    const-wide/32 v6, 0x493e0

    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gtz v8, :cond_2

    const-wide/32 v4, 0xea60

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v8, v2, v10

    if-gtz v8, :cond_3

    const-wide/16 v2, 0x1

    :cond_3
    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide v3, v15

    move-wide/from16 v19, v6

    move-wide/from16 v7, v19

    move-wide/from16 v5, v17

    :goto_2
    :try_start_2
    new-instance v10, Lcom/antivirus/antitheft/w;

    invoke-direct {v10}, Lcom/antivirus/antitheft/w;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/antitheft/k;->c:Lcom/antivirus/core/b;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2}, Lcom/antivirus/antitheft/w;->a(Landroid/content/Context;Lcom/antivirus/core/b;)V

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;Lcom/antivirus/antitheft/w;)V

    if-eqz p2, :cond_4

    new-instance v2, Lcom/antivirus/antitheft/ad;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/antivirus/antitheft/ad;-><init>(Landroid/content/Context;)V

    const v11, 0x7f050002

    invoke-virtual {v2, v11}, Lcom/antivirus/antitheft/ad;->a(I)V

    :cond_4
    new-instance v2, Landroid/os/HandlerThread;

    const-string v11, "LR"

    invoke-direct {v2, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/antivirus/antitheft/p;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1, v10}, Lcom/antivirus/antitheft/p;-><init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;Lcom/antivirus/antitheft/w;)V

    const/4 v2, 0x0

    :goto_3
    int-to-long v13, v2

    cmp-long v13, v13, v3

    if-gez v13, :cond_5

    add-int/lit8 v13, v2, 0x1

    int-to-long v13, v13

    mul-long/2addr v13, v5

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    const-wide/32 v6, 0x493e0

    const-wide/32 v4, 0xea60

    div-long v2, v6, v4

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide v3, v15

    move-wide/from16 v19, v6

    move-wide/from16 v7, v19

    move-wide/from16 v5, v17

    goto :goto_2

    :cond_5
    const-string v2, "gps"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/antivirus/antitheft/k;->b(Landroid/content/Context;)V

    :goto_4
    new-instance v2, Lcom/antivirus/antitheft/q;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/antivirus/antitheft/q;-><init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V

    invoke-virtual {v11, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/antitheft/k;->c:Lcom/antivirus/core/b;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v7, v8}, Lcom/antivirus/antitheft/w;->a(Landroid/content/Context;Lcom/antivirus/core/b;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/antivirus/antitheft/k;->b(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_8
    move-object v9, v2

    goto/16 :goto_1
.end method

.method private a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/antitheft/k;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/antitheft/k;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/antitheft/k;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/antitheft/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/antitheft/k;->s:Z

    return p1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->u:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avg/ui/general/c/c;

    iget-object v1, p0, Lcom/antivirus/antitheft/k;->u:Landroid/app/NotificationManager;

    const/16 v2, 0x2328

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avg/ui/general/c/c;-><init>(Landroid/app/NotificationManager;IJ)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
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

    iget-object v3, p0, Lcom/antivirus/antitheft/k;->a:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v0, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/content/Context;Z)V
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

    if-eqz p2, :cond_1

    const-string v2, "value"

    const-string v3, "network,gps"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/antivirus/antitheft/k;->c(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/antivirus/antitheft/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/antivirus/antitheft/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/antitheft/k;->s:Z

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/antivirus/c;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcom/antivirus/antitheft/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/antitheft/k;->b()V

    return-void
.end method

.method private d(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/antivirus/c;->f(Z)V

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "fromsms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/antivirus/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/antivirus/c;->f(Z)V

    invoke-static {p3}, Lcom/antivirus/c;->h(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-static {p4}, Lcom/antivirus/c;->e(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x2328

    const/16 v1, 0x232a

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private f(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x7d0

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method private g(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private h(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/wipe/ak;

    invoke-direct {v0, p2}, Lcom/antivirus/wipe/ak;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/antivirus/wipe/ak;->a()Z

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->g()V

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->h()Z

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->i()V

    invoke-static {}, Lcom/antivirus/wipe/ak;->j()V

    goto :goto_0
.end method

.method private i(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/antivirus/antitheft/m;

    invoke-direct {v1, p0, p2}, Lcom/antivirus/antitheft/m;-><init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private j(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/antivirus/antitheft/o;

    invoke-direct {v1, p0}, Lcom/antivirus/antitheft/o;-><init>(Lcom/antivirus/antitheft/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/antivirus/antitheft/k;->b()V

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/antivirus/antitheft/k;->b:Landroid/media/MediaPlayer;

    throw v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/antitheft/k;->u:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/antivirus/antitheft/k;->u:Landroid/app/NotificationManager;

    :cond_0
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020069

    const v2, 0x7f0901d5

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0901d6

    invoke-static {p1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901d7

    invoke-static {p1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/antivirus/antitheft/k;->u:Landroid/app/NotificationManager;

    const/16 v2, 0x2328

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "myphone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

    invoke-virtual {p0, v2, p2}, Lcom/antivirus/antitheft/k;->b(Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;Landroid/content/Context;)V
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

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/antitheft/k;->q:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v3}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

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

    iget-object v4, p0, Lcom/antivirus/antitheft/k;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/antivirus/antitheft/k;->r:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    iget-wide v4, p0, Lcom/antivirus/antitheft/k;->r:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/antivirus/antitheft/k;->r:J

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->b(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->c(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->d(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->e(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->f(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->g(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->h(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->i(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/antivirus/antitheft/k;->j(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
