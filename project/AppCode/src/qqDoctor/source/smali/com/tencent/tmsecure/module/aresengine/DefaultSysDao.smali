.class public final Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
.super Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$a;,
        Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$b;,
        Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;,
        Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;,
        Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

.field private static final b:Landroid/net/Uri;


# instance fields
.field private c:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;

.field private d:Landroid/content/ContentResolver;

.field private e:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v3, "number"

    aput-object v3, v2, v0

    const-string v3, "name"

    aput-object v3, v2, v5

    const-string v3, "type"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "duration"

    aput-object v4, v2, v3

    const-string v3, "date"

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->i:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v3, "address"

    aput-object v3, v2, v0

    const-string v3, "type"

    aput-object v3, v2, v5

    const-string v3, "body"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "person"

    aput-object v3, v2, v7

    const/4 v3, 0x6

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->j:[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v3, "date"

    aput-object v3, v2, v0

    const-string v3, "read"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->k:[Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    if-lt v2, v7, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$b;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$b;-><init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)V

    :goto_1
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;-><init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->e:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$a;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$a;-><init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic a(Landroid/database/Cursor;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v6

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->k:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    const-wide/16 v2, 0x0

    iget-wide v4, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    :cond_3
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    move v0, v7

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_2
.end method

.method private a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/MmsData;-><init>()V

    iput-object v2, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    instance-of v2, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/google/android/mms/pdu/SendReq;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v2, :cond_7

    :cond_3
    instance-of v2, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/SendReq;)V

    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    :cond_4
    :goto_1
    const/4 v1, 0x1

    iput v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    :goto_2
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    :try_start_1
    instance-of v2, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_8

    iget-object v5, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    move-object v0, v1

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v2, v0

    invoke-virtual {v5, v2}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/RetrieveConf;)V

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    :try_start_2
    instance-of v2, v1, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v2, :cond_6

    iget-object v5, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    move-object v0, v1

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v2, v0

    invoke-virtual {v5, v2}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/NotificationInd;)V

    goto :goto_3

    :cond_9
    const-string v1, ""

    iput-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;

    return-object v0
.end method

.method private static c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    return-object v0
.end method

.method private static d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 4

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ -]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
    .locals 2

    sget-object v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    invoke-direct {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;-><init>(B)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->e:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    invoke-static {p1}, La;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, La;->k(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getAllCallLog()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->i:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v8

    return-object v7

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final getAllContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;->b()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->i:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_4

    const-string v0, "null"

    :goto_3
    iput-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    :cond_2
    return-object v6

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_4
    iget-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public final getLastInBoxMms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    sub-long/2addr v3, v5

    if-ltz p1, :cond_0

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iget v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    :cond_1
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public final getLastInBoxSms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 8

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type=1 AND read="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->j:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    sub-long/2addr v2, v4

    if-ltz p1, :cond_1

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method public final getLastOutBoxMms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->getLastSentMms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public final getLastOutBoxSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->getLastSentSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public final getLastSentMms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-lez p1, :cond_1

    iget-wide v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/16 v3, 0xa

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->g:I

    iget v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    if-lt v3, v4, :cond_1

    :cond_0
    iget v1, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    iput v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->g:I

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    iget v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    iput v3, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->g:I

    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    iget v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    :cond_2
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final getLastSentSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 10

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v7

    :try_start_0
    const-string v3, "type=2"

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->j:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-lez p1, :cond_2

    :try_start_1
    iget-wide v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v8, v0

    add-long/2addr v3, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v3, v8

    if-gez v0, :cond_2

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->h:I

    iget v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    if-lt v0, v3, :cond_2

    :cond_0
    iget v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    iget v0, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v1

    :cond_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_4

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v6

    :goto_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v1

    goto :goto_3
.end method

.method public final getMms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 3

    sget-object v0, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    sget-object v0, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Landroid/net/Uri;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSimContact()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "number"

    aput-object v1, v2, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->b:Landroid/net/Uri;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    :try_start_3
    monitor-exit v9

    move-object v0, v6

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v9

    move-object v0, v6

    goto :goto_3

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;-><init>()V

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->id:I

    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->isSimContact:Z

    iget-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "address"

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "read"

    iget v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->read:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    iget v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->d()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    if-ne v2, v3, :cond_3

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v3

    const/16 v4, 0x11

    if-ge v3, v4, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_2
    move-object v6, v0

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v7

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_5
    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    move-object v0, v6

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method

.method public final remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
    .locals 5

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 5

    const/4 v1, 0x1

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v2, v1, :cond_0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->d:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final supportThisPhone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
