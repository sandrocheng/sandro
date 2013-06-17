.class public Lcom/antivirus/ui/callmessagefilter/fragment/g;
.super Lcom/antivirus/ui/callmessagefilter/fragment/a;


# static fields
.field private static ah:[Ljava/lang/String;

.field private static ai:[Ljava/lang/String;

.field private static aj:[Ljava/lang/String;


# instance fields
.field private ak:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ah:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ai:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->aj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;-><init>()V

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/i;->a:Lcom/antivirus/ui/callmessagefilter/fragment/i;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/antivirus/ui/callmessagefilter/a/d;)Lcom/antivirus/ui/callmessagefilter/a/b;
    .locals 13

    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/antivirus/c;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

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

    invoke-static {v10, v1}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v11, v12}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move v9, v0

    move-object v0, v3

    :goto_0
    const-string v3, "photo_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x0

    if-nez v9, :cond_4

    invoke-direct {p0, v4, p1, v0, v7}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(ILandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v10}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/antivirus/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :goto_1
    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/b;

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/callmessagefilter/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/a/d;JLjava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v9}, Lcom/antivirus/ui/callmessagefilter/a/b;->b(Z)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v10}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0901e6

    invoke-virtual {p0, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(I)Ljava/lang/String;

    move-result-object v3

    move v9, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move v9, v0

    move-object v0, v7

    goto :goto_0

    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move v9, v0

    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/fragment/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/antivirus/core/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

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

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/callmessagefilter/a/a;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->g:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/a/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/antivirus/callmessagefilter/a/a;->a()Landroid/database/CursorJoiner$Result;

    move-result-object v2

    sget-object v4, Lcom/antivirus/ui/callmessagefilter/fragment/h;->c:[I

    invoke-virtual {v2}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_1
    :try_start_4
    const-string v2, "type"

    invoke-virtual {p0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Landroid/database/Cursor;Lcom/antivirus/ui/callmessagefilter/a/d;)Lcom/antivirus/ui/callmessagefilter/a/b;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2, p5}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->b(Lcom/antivirus/ui/callmessagefilter/d;I)V

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/a/b;->i()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->i:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/a/b;->i()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->i:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :pswitch_2
    :try_start_5
    const-string v2, "call_type"

    invoke-virtual {p0, v3, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Landroid/database/Cursor;Lcom/antivirus/ui/callmessagefilter/a/d;)Lcom/antivirus/ui/callmessagefilter/a/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILandroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-ltz p1, :cond_0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected F()Lcom/antivirus/ui/callmessagefilter/v;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/j;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/j;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/g;)V

    return-object v0
.end method

.method public synthetic H()Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->M()Lcom/antivirus/ui/callmessagefilter/fragment/i;

    move-result-object v0

    return-object v0
.end method

.method protected J()Lcom/antivirus/ui/callmessagefilter/j;
    .locals 1

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/c;

    invoke-direct {v0}, Lcom/antivirus/ui/callmessagefilter/a/c;-><init>()V

    return-object v0
.end method

.method protected K()V
    .locals 7

    const/4 v1, 0x0

    const-string v2, "DESC"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected L()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->c:Lcom/antivirus/ui/callmessagefilter/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/a/a;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->c:Lcom/antivirus/ui/callmessagefilter/a;

    :cond_0
    return-void
.end method

.method public M()Lcom/antivirus/ui/callmessagefilter/fragment/i;
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->H()Lcom/antivirus/ui/callmessagefilter/w;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/i;

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/i;->a:Lcom/antivirus/ui/callmessagefilter/fragment/i;

    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/g;->aj:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type<>? AND messageid is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v6}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ai:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type<>?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v6}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ah:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type<>?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->a(I)Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/i;->a:Lcom/antivirus/ui/callmessagefilter/fragment/i;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->b:Lcom/antivirus/ui/callmessagefilter/w;

    return-void
.end method

.method protected a(IZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->a(IZ)V

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/h;->b:[I

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/i;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/i;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_all_calls_filter"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_blocked_calls_filter"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/antivirus/ui/callmessagefilter/a/b;)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_setting_dialog_in_calls"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/a/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->I()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;)Lcom/antivirus/ui/callmessagefilter/contacts/a;

    move-result-object v0

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/h;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/a;->b()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/antivirus/c;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->c(Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic b(Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/a/b;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(Lcom/antivirus/ui/callmessagefilter/a/b;)V

    return-void
.end method

.method protected synthetic d(I)Lcom/antivirus/ui/callmessagefilter/w;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->f(I)Lcom/antivirus/ui/callmessagefilter/fragment/i;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->d(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/k;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/k;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/g;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ak:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ak:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected e(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/i;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/i;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ak:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/g;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/g;->ak:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected f(I)Lcom/antivirus/ui/callmessagefilter/fragment/i;
    .locals 1

    invoke-static {p1}, Lcom/antivirus/ui/callmessagefilter/fragment/i;->a(I)Lcom/antivirus/ui/callmessagefilter/fragment/i;

    move-result-object v0

    return-object v0
.end method
