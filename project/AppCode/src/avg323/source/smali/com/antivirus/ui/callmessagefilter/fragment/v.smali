.class public Lcom/antivirus/ui/callmessagefilter/fragment/v;
.super Lcom/antivirus/ui/callmessagefilter/fragment/a;


# static fields
.field private static final ah:[Ljava/lang/String;

.field private static aj:Landroid/os/Handler;


# instance fields
.field private ai:Landroid/database/ContentObserver;

.field private ak:Landroid/content/BroadcastReceiver;

.field private al:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ah:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->al:Ljava/util/List;

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;
    .locals 10

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/antivirus/c;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->j(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    invoke-static {v9, v1}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v9}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    move v9, v0

    move-object v3, v4

    :goto_0
    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/b;

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/callmessagefilter/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;JLjava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v9}, Lcom/antivirus/ui/callmessagefilter/b/b;->b(Z)V

    invoke-virtual {p0, v0, p1, p5}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/b;Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v9}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move v9, v3

    move-object v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/v;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->al:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/antivirus/ui/callmessagefilter/b/b;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/fragment/ab;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ab;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/support/v4/app/i;Lcom/antivirus/ui/callmessagefilter/b/b;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/antivirus/ui/callmessagefilter/b/d;Landroid/app/Activity;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/core/b/a/b;)V
    .locals 9

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-direct {p0, p1, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/ad;

    invoke-direct {v1, p0, v0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/ad;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/b/d;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v4

    const v5, 0x7f09015b

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v5

    const v6, 0x7f09015c

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/antivirus/core/scanners/ad;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/b/d;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->i()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v0, p4

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/core/b/a/b;->a(JILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p2, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-gez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p2, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, p3, v0}, Lcom/antivirus/callmessagefilter/smsblocker/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/b;Z)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/d;Landroid/app/Activity;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/core/b/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Landroid/app/Activity;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/core/b/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/antivirus/callmessagefilter/callblocker/a;->a:Landroid/net/Uri;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ah:[Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " limit 1000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-static/range {p6 .. p6}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p3}, Lcom/antivirus/core/b/a/b;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    new-instance v0, Lcom/antivirus/callmessagefilter/a/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date"

    aput-object v6, v4, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/callmessagefilter/a/a;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->g:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/a/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/a/a;->a()Landroid/database/CursorJoiner$Result;

    move-result-object v2

    sget-object v4, Lcom/antivirus/ui/callmessagefilter/fragment/ae;->a:[I

    invoke-virtual {v2}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    :try_start_4
    const-string v6, "address"

    const-string v7, "date"

    const-string v8, "_id"

    const-string v9, "body"

    sget-object v10, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v10}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2, p4}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b(Lcom/antivirus/ui/callmessagefilter/d;I)V

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/b/b;->i()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->i:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/b/b;->i()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->i:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :pswitch_1
    :try_start_5
    const-string v6, "address"

    const-string v7, "date"

    const-string v8, "_id"

    const-string v9, "body"

    const-string v2, "message_type"

    invoke-virtual {p0, v3, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v10

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v10}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;

    move-result-object v2

    goto :goto_3

    :pswitch_2
    const-string v2, "message_type"

    invoke-virtual {p0, v3, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v8

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v2, v8}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->al:Ljava/util/List;

    const-string v4, "incoming_msg_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v4, "phone_number"

    const-string v5, "date"

    const-string v6, "incoming_msg_id"

    const-string v7, "message_snippet"

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v6

    move-object v1, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v6

    move-object v1, v7

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v3, v6

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;)Z
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p2, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->d:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p2, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p2, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_show_block_dialog"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001f

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090200

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090201

    invoke-virtual {p0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v2, 0x7f090203

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    const v2, 0x7f09000d

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/fragment/z;

    invoke-direct {v3, p0, v0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/z;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/widget/CheckBox;Lcom/antivirus/ui/callmessagefilter/b/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09000e

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/fragment/aa;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/aa;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected F()Lcom/antivirus/ui/callmessagefilter/v;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ag;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V

    return-object v0
.end method

.method public synthetic H()Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->M()Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    move-result-object v0

    return-object v0
.end method

.method protected J()Lcom/antivirus/ui/callmessagefilter/j;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/c;

    invoke-direct {v0}, Lcom/antivirus/ui/callmessagefilter/b/c;-><init>()V

    return-object v0
.end method

.method protected K()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    const-string v1, "DESC"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V

    return-void

    :cond_0
    const-string v2, "default_filter_option"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected L()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->c:Lcom/antivirus/ui/callmessagefilter/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/b/a;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->c:Lcom/antivirus/ui/callmessagefilter/a;

    :cond_0
    return-void
.end method

.method public M()Lcom/antivirus/ui/callmessagefilter/fragment/ah;
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->H()Lcom/antivirus/ui/callmessagefilter/w;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->a(I)Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method protected a(IZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(IZ)V

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/ae;->c:[I

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_all_messages_filter"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_blocked_message_filter"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "all_message_blocker_suspicious_message_filter"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/w;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/w;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->aj:Landroid/os/Handler;

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/support/v4/a/c;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Landroid/support/v4/a/c;Ljava/lang/Void;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(Landroid/support/v4/a/c;Ljava/lang/Void;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/fragment/y;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/y;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_setting_dialog_in_calls"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/b/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->I()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/ae;->b:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->a()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/b/d;->a:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b(Lcom/antivirus/ui/callmessagefilter/b/b;)V

    goto :goto_0

    :cond_2
    :pswitch_1
    invoke-static {}, Lcom/antivirus/c;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->c(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/b/b;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-ge v3, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/b/b;)V

    return-void
.end method

.method protected synthetic d(I)Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->f(I)Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->d(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ai;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ai:Landroid/database/ContentObserver;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/af;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/v;->aj:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/af;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ak:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ai:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ak:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "blocked_message_view_update_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected e(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ai:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ai:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ai:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ak:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ak:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->ak:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method protected f(I)Lcom/antivirus/ui/callmessagefilter/fragment/ah;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    move-result-object v0

    return-object v0
.end method
