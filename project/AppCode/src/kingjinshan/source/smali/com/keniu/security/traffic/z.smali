.class public final Lcom/keniu/security/traffic/z;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrafficDbHelper2.java"


# static fields
.field private static final A:Ljava/lang/String; = "wifiSended"

.field private static final B:Ljava/lang/String; = "wifiTotalRecved"

.field private static final C:Ljava/lang/String; = "wifiTotalSended"

.field private static final D:Ljava/lang/String; = "netRecved"

.field private static final E:Ljava/lang/String; = "netSended"

.field private static final F:Ljava/lang/String; = "netTotalRecved"

.field private static final G:Ljava/lang/String; = "netTotalSended"

.field private static final H:Ljava/lang/String; = "updateDate"

.field private static final I:Ljava/lang/String; = "dayRecord"

.field private static final J:Ljava/lang/String; = "recved"

.field private static final K:Ljava/lang/String; = "sended"

.field private static final L:Ljava/lang/String; = "daySoftRecord"

.field private static final M:Lcom/hoi/netstat/g; = null

.field public static final a:Ljava/lang/String; = "mosecurity_traffic.db"

.field public static final b:I = 0xf4240

.field public static final c:I = 0xf4241

.field public static final d:I = 0xf4242

.field public static final e:Ljava/lang/String; = "3G2G"

.field public static final f:Ljava/lang/String; = "wifi"

.field public static final g:Ljava/lang/String; = "uninstaledSoft"

.field public static h:Ljava/util/Comparator; = null

.field public static i:Ljava/util/Comparator; = null

.field private static n:Z = false

.field private static o:J = 0x0L

.field private static p:Z = false

.field private static final q:I = 0x0

.field private static final r:I = 0x1

.field private static final s:I = 0x2

.field private static t:I = 0x0

.field private static u:Ljava/lang/String; = null

.field private static final v:I = 0x7

.field private static final w:Ljava/lang/String; = "lastRecord"

.field private static final x:Ljava/lang/String; = "userID"

.field private static final y:Ljava/lang/String; = "apkName"

.field private static final z:Ljava/lang/String; = "wifiRecved"


# instance fields
.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Landroid/database/sqlite/SQLiteDatabase;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sput-boolean v2, Lcom/keniu/security/traffic/z;->n:Z

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/keniu/security/traffic/z;->o:J

    .line 52
    invoke-static {}, Lcom/keniu/security/traffic/z;->d()Z

    move-result v0

    sput-boolean v0, Lcom/keniu/security/traffic/z;->p:Z

    .line 59
    sput v2, Lcom/keniu/security/traffic/z;->t:I

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/hoi/netstat/f;->a()Lcom/hoi/netstat/g;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    .line 124
    new-instance v0, Lcom/keniu/security/traffic/aa;

    invoke-direct {v0}, Lcom/keniu/security/traffic/aa;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/z;->h:Ljava/util/Comparator;

    .line 155
    new-instance v0, Lcom/keniu/security/traffic/ab;

    invoke-direct {v0}, Lcom/keniu/security/traffic/ab;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/z;->i:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1448
    const-string v0, "mosecurity_traffic.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/z;->m:I

    .line 1449
    iput-object p1, p0, Lcom/keniu/security/traffic/z;->j:Landroid/content/Context;

    .line 1450
    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1571
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "userID"

    aput-object v0, v2, v1

    const-string v0, "apkName"

    aput-object v0, v2, v3

    const-string v0, "wifiSended"

    aput-object v0, v2, v4

    const-string v0, "wifiRecved"

    aput-object v0, v2, v5

    const/4 v0, 0x4

    const-string v1, "wifiTotalSended"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "wifiTotalRecved"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "netSended"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "netRecved"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "netTotalSended"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "netTotalRecved"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "updateDate"

    aput-object v1, v2, v0

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1584
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "lastRecord"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "0, 1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1587
    new-instance v1, Lcom/keniu/security/traffic/ad;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1589
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/keniu/security/traffic/ad;->a:I

    .line 1590
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    .line 1591
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->c:J

    .line 1592
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->d:J

    .line 1593
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->e:J

    .line 1594
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->f:J

    .line 1595
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->g:J

    .line 1596
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->h:J

    .line 1597
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->i:J

    .line 1598
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->j:J

    .line 1599
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ad;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1604
    :goto_0
    if-eqz v0, :cond_2

    .line 1605
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1610
    :cond_0
    :goto_1
    return-object v0

    .line 1604
    :catch_0
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_0

    .line 1605
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1604
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_1

    .line 1605
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_1
    throw v0

    .line 1604
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v9

    goto :goto_0
.end method

.method private a(ILjava/lang/String;J)Lcom/keniu/security/traffic/ad;
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1248
    invoke-static/range {p3 .. p4}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v11

    .line 1250
    const/4 v13, 0x0

    .line 1251
    const/4 v14, 0x0

    .line 1254
    const/4 v2, 0x7

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "userID"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "apkName"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "wifiTotalSended"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "wifiTotalRecved"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "netTotalSended"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "netTotalRecved"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "updateDate"

    aput-object v3, v4, v2

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apkName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "updateDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "daySoftRecord"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "0, 1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1266
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1267
    new-instance v3, Lcom/keniu/security/traffic/ad;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1268
    :try_start_2
    move/from16 v0, p1

    move-object v1, v3

    iput v0, v1, Lcom/keniu/security/traffic/ad;->a:I

    .line 1269
    move-object/from16 v0, p2

    move-object v1, v3

    iput-object v0, v1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    .line 1270
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keniu/security/traffic/ad;->e:J

    .line 1271
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keniu/security/traffic/ad;->f:J

    .line 1272
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keniu/security/traffic/ad;->i:J

    .line 1273
    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keniu/security/traffic/ad;->j:J

    .line 1274
    iput-wide v11, v3, Lcom/keniu/security/traffic/ad;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1280
    :goto_0
    if-eqz v2, :cond_2

    .line 1281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 1287
    :cond_0
    :goto_1
    return-object v2

    .line 1277
    :catch_0
    move-exception v2

    move-object v2, v14

    move-object v3, v13

    .line 1280
    :goto_2
    if-eqz v3, :cond_0

    .line 1281
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1280
    :catchall_0
    move-exception v2

    move-object v3, v13

    :goto_3
    if-eqz v3, :cond_1

    .line 1281
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1282
    :cond_1
    throw v2

    .line 1280
    :catchall_1
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_3

    .line 1277
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v3, v14

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;
    .locals 1
    .parameter

    .prologue
    .line 212
    new-instance v0, Lcom/keniu/security/traffic/z;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    .line 317
    sget-wide v0, Lcom/keniu/security/traffic/z;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/keniu/security/traffic/z;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-boolean v0, Lcom/keniu/security/traffic/z;->p:Z

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM lastRecord WHERE updateDate < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM daySoftRecord WHERE updateDate < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM dayRecord WHERE updateDate < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    sput-wide p1, Lcom/keniu/security/traffic/z;->o:J

    goto :goto_0
.end method

.method private a(JJJ)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    const-wide/16 v5, 0x0

    .line 588
    invoke-static/range {p5 .. p6}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v8

    .line 591
    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v8

    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v7

    .line 593
    if-eqz v7, :cond_1

    .line 594
    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v5, v7, Lcom/keniu/security/traffic/ac;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-long/2addr v5, v10

    sub-long v5, p1, v5

    .line 601
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-nez v7, :cond_2

    .line 696
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide/from16 v5, p1

    .line 599
    goto :goto_0

    .line 604
    :cond_2
    const/4 v13, 0x0

    .line 608
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-lez v7, :cond_5

    .line 610
    const v7, 0xf4240

    const-wide/16 v8, 0x1

    add-long v8, v8, p3

    :try_start_1
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/keniu/security/traffic/z;->b(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v7

    .line 613
    if-eqz v7, :cond_4

    .line 614
    const/4 v8, 0x0

    .line 615
    iget-wide v9, v7, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v5, v9

    iput-wide v5, v7, Lcom/keniu/security/traffic/ac;->b:J

    move-object v5, v7

    move v6, v8

    .line 625
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v13

    .line 689
    :cond_3
    :goto_3
    if-eqz v5, :cond_0

    .line 690
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 617
    :cond_4
    const/4 v7, 0x1

    .line 618
    :try_start_2
    new-instance v8, Lcom/keniu/security/traffic/ac;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 620
    const v9, 0xf4240

    iput v9, v8, Lcom/keniu/security/traffic/ac;->a:I

    .line 621
    iput-wide v5, v8, Lcom/keniu/security/traffic/ac;->b:J

    .line 622
    const-wide/16 v5, 0x1

    add-long v5, v5, p3

    iput-wide v5, v8, Lcom/keniu/security/traffic/ac;->d:J

    move-object v5, v8

    move v6, v7

    goto :goto_2

    .line 626
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-gez v7, :cond_c

    .line 629
    const v7, 0xf4240

    const-wide/16 v10, 0x1

    add-long v10, v10, p3

    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/keniu/security/traffic/z;->b(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v7

    .line 631
    if-eqz v7, :cond_6

    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-eqz v10, :cond_6

    .line 632
    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    neg-long v14, v5

    cmp-long v10, v10, v14

    if-ltz v10, :cond_8

    .line 633
    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v5, v10

    iput-wide v5, v7, Lcom/keniu/security/traffic/ac;->b:J

    .line 634
    const-wide/16 v5, 0x0

    .line 639
    :goto_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v10

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V

    :cond_6
    move-wide v14, v5

    .line 644
    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-gez v5, :cond_c

    .line 645
    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sended"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "recved"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "updateDate"

    aput-object v6, v7, v5

    .line 647
    const-string v5, "%s = %d AND %s >= %d AND %s <= %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "userID"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0xf4240

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "updateDate"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "updateDate"

    aput-object v11, v6, v10

    const/4 v10, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 652
    new-instance v16, Lcom/keniu/security/traffic/ac;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 654
    const v5, 0xf4240

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/keniu/security/traffic/ac;->a:I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "dayRecord"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "updateDate"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 659
    if-eqz v5, :cond_3

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    move-wide v6, v14

    .line 661
    :cond_7
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->b:J

    .line 662
    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->c:J

    .line 663
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide v8, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->c:J

    move-wide v10, v0

    add-long/2addr v8, v10

    neg-long v10, v6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    .line 664
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide v8, v0

    neg-long v10, v6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 665
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide v8, v0

    add-long/2addr v6, v8

    move-wide v0, v6

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->b:J

    .line 671
    :goto_5
    const-wide/16 v6, 0x0

    .line 679
    :goto_6
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->d:J

    .line 680
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V

    .line 681
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_3

    .line 636
    :cond_8
    :try_start_4
    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v5, v10

    .line 637
    const-wide/16 v10, 0x0

    iput-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 689
    :catch_0
    move-exception v5

    move-object v5, v13

    :goto_7
    if-eqz v5, :cond_0

    .line 690
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 667
    :cond_9
    :try_start_5
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->c:J

    move-wide v8, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide v10, v0

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    move-wide v0, v6

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->c:J

    .line 668
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->b:J

    goto :goto_5

    .line 689
    :catch_1
    move-exception v6

    goto :goto_7

    .line 673
    :cond_a
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide v8, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->c:J

    move-wide v10, v0

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 675
    const-wide/16 v8, 0x0

    move-wide v0, v8

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->b:J

    .line 676
    const-wide/16 v8, 0x0

    move-wide v0, v8

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->c:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 689
    :catchall_0
    move-exception v6

    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    :goto_8
    if-eqz v6, :cond_b

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_b
    throw v5

    .line 689
    :catchall_1
    move-exception v5

    move-object v6, v13

    goto :goto_8

    .line 598
    :catch_2
    move-exception v7

    goto/16 :goto_0

    :cond_c
    move-object v5, v13

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 488
    :try_start_0
    const-string v1, "DELETE FROM %s WHERE %s = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dayRecord"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "userID"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 490
    iget-object v2, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 492
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v1

    iget-object v2, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    .line 498
    throw v1
.end method

.method public static a(Landroid/content/Context;JJJZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 425
    :cond_0
    if-eqz p7, :cond_2

    .line 426
    new-instance p7, Ljava/util/Date;

    invoke-direct {p7}, Ljava/util/Date;-><init>()V

    .line 427
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 428
    invoke-virtual {v1, p7}, Lcom/keniu/security/traffic/y;->b(Ljava/util/Date;)J

    move-result-wide v2

    .line 431
    invoke-virtual {v0, p3, p4, v2, v3}, Lcom/keniu/security/traffic/z;->b(JJ)Lcom/keniu/security/traffic/ac;

    move-result-object v2

    .line 434
    const-wide/16 v3, 0x0

    .line 435
    if-eqz v2, :cond_4

    .line 436
    iget-wide v3, v2, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v5, v2, Lcom/keniu/security/traffic/ac;->b:J

    add-long v2, v3, v5

    .line 439
    :goto_1
    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v4

    .line 440
    const-string v5, "6"

    invoke-static {p0, v5, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {p1, p2}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v4

    .line 444
    const-string v5, "7"

    invoke-static {p0, v5, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget p0, v1, Lcom/keniu/security/traffic/y;->v:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 449
    const-wide/16 v4, 0x0

    .line 451
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, p7}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-wide v1, v2

    .line 466
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    .line 467
    add-long p0, p1, v1

    move-wide v1, p0

    :goto_3
    move-wide v3, p3

    move-wide v5, p5

    .line 473
    invoke-direct/range {v0 .. v6}, Lcom/keniu/security/traffic/z;->a(JJJ)V

    .line 475
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    .line 458
    :cond_1
    const p0, 0xf4240

    invoke-virtual {p7}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object p0

    .line 461
    if-eqz p0, :cond_3

    .line 462
    iget-wide v1, p0, Lcom/keniu/security/traffic/ac;->c:J

    iget-wide v3, p0, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v1, v3

    goto :goto_2

    :cond_2
    move-wide v1, p1

    goto :goto_3

    :cond_3
    move-wide v1, v4

    goto :goto_2

    :cond_4
    move-wide v2, v3

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 254
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 256
    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 263
    :cond_2
    sget-object v1, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    monitor-enter v1

    .line 264
    const/4 v2, 0x0

    .line 265
    :try_start_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 266
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keniu/security/traffic/y;->t:J

    .line 270
    const v2, 0x7f0b03c2

    invoke-virtual {v0, p0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    move v0, v4

    .line 278
    :goto_1
    sget v2, Lcom/keniu/security/traffic/z;->t:I

    if-eq v0, v2, :cond_3

    .line 280
    sput v0, Lcom/keniu/security/traffic/z;->t:I

    if-eqz v0, :cond_3

    .line 281
    invoke-static {}, Lcom/keniu/security/traffic/z;->f()V

    .line 284
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 273
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/keniu/security/traffic/ac;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1636
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1638
    const-string v1, "userID"

    iget v2, p1, Lcom/keniu/security/traffic/ac;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v1, "sended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ac;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1640
    const-string v1, "recved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ac;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1641
    const-string v1, "updateDate"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ac;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1643
    if-eqz p2, :cond_0

    .line 1644
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dayRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1648
    :goto_0
    return-void

    .line 1646
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dayRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/traffic/ad;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1614
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    const-string v1, "userID"

    iget v2, p1, Lcom/keniu/security/traffic/ad;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1617
    const-string v1, "apkName"

    iget-object v2, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v1, "wifiSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1619
    const-string v1, "wifiRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1620
    const-string v1, "wifiTotalSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1621
    const-string v1, "wifiTotalRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1622
    const-string v1, "netSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1623
    const-string v1, "netRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1624
    const-string v1, "netTotalSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1625
    const-string v1, "netTotalRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1626
    const-string v1, "updateDate"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1628
    if-eqz p2, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "lastRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1633
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "lastRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private a(Ljava/util/Date;)V
    .locals 20
    .parameter

    .prologue
    .line 1395
    new-instance v5, Lcom/keniu/security/traffic/ad;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1396
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/keniu/security/traffic/ad;->k:J

    .line 1398
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1399
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->j:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1402
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1404
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1405
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1407
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v5, Lcom/keniu/security/traffic/ad;->a:I

    .line 1408
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    .line 1410
    sget-object v7, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    iget v8, v5, Lcom/keniu/security/traffic/ad;->a:I

    invoke-interface {v7, v8}, Lcom/hoi/netstat/g;->a(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/keniu/security/traffic/ad;->g:J

    .line 1411
    sget-object v7, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    iget v8, v5, Lcom/keniu/security/traffic/ad;->a:I

    invoke-interface {v7, v8}, Lcom/hoi/netstat/g;->b(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/keniu/security/traffic/ad;->h:J

    .line 1412
    iget-wide v7, v5, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    iget-wide v7, v5, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1413
    :cond_1
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    iget v11, v5, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v12, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v12, 0x0

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    iget-wide v7, v5, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->g:J

    sub-long/2addr v7, v9

    iget-wide v9, v5, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->h:J

    sub-long/2addr v9, v13

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_2

    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-eqz v13, :cond_0

    :cond_2
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gez v13, :cond_3

    iget-wide v7, v5, Lcom/keniu/security/traffic/ad;->g:J

    :cond_3
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-gez v13, :cond_a

    iget-wide v9, v5, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v17, v9

    move-wide v9, v7

    move-wide/from16 v7, v17

    :goto_1
    iget-wide v13, v5, Lcom/keniu/security/traffic/ad;->g:J

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v13, v5, Lcom/keniu/security/traffic/ad;->h:J

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->h:J

    sget v13, Lcom/keniu/security/traffic/z;->t:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v13, v9

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->i:J

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v13, v7

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->j:J

    :goto_2
    iget-wide v13, v5, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    iget v11, v5, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v12, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iget-wide v13, v5, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;J)Lcom/keniu/security/traffic/ad;

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    new-instance v12, Lcom/keniu/security/traffic/ad;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v13, v5, Lcom/keniu/security/traffic/ad;->a:I

    iput v13, v12, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v13, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v13, v12, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v17, v12

    move v12, v11

    move-object/from16 v11, v17

    :goto_3
    sget v13, Lcom/keniu/security/traffic/z;->t:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v9, v13

    iput-wide v9, v11, Lcom/keniu/security/traffic/ad;->i:J

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v7, v9

    iput-wide v7, v11, Lcom/keniu/security/traffic/ad;->j:J

    :goto_4
    iget-wide v7, v5, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v7, v11, Lcom/keniu/security/traffic/ad;->k:J

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "userID"

    iget v9, v11, Lcom/keniu/security/traffic/ad;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "apkName"

    iget-object v9, v11, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "wifiTotalSended"

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->e:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "wifiTotalRecved"

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->f:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "netTotalSended"

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->i:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "netTotalRecved"

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->j:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "updateDate"

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->k:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "daySoftRecord"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x1

    new-instance v12, Lcom/keniu/security/traffic/ad;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v13, v5, Lcom/keniu/security/traffic/ad;->a:I

    iput v13, v12, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v13, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v13, v12, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-wide/from16 v17, v9

    move-wide v9, v7

    move-wide/from16 v7, v17

    move-object/from16 v19, v12

    move v12, v11

    move-object/from16 v11, v19

    goto/16 :goto_1

    :cond_5
    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v13, v9

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->e:J

    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v13, v7

    iput-wide v13, v11, Lcom/keniu/security/traffic/ad;->f:J

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_7
    iget-wide v13, v11, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v9, v13

    iput-wide v9, v11, Lcom/keniu/security/traffic/ad;->e:J

    iget-wide v9, v11, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v7, v9

    iput-wide v7, v11, Lcom/keniu/security/traffic/ad;->f:J

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "daySoftRecord"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 1419
    :cond_9
    return-void

    :cond_a
    move-wide/from16 v17, v9

    move-wide v9, v7

    move-wide/from16 v7, v17

    goto/16 :goto_1
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 216
    sput-boolean p0, Lcom/keniu/security/traffic/z;->n:Z

    .line 217
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1872
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1873
    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1876
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1877
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v1, v4

    .line 1878
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1879
    aget-object v2, v0, v1

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1880
    const/4 v0, 0x1

    .line 1887
    :goto_1
    return v0

    .line 1878
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move v0, v4

    .line 1887
    goto :goto_1
.end method

.method private a(Lcom/keniu/security/traffic/ad;)Z
    .locals 22
    .parameter

    .prologue
    .line 1671
    const-wide/16 v4, 0x0

    .line 1672
    const-wide/16 v6, 0x0

    .line 1673
    const-wide/16 v8, 0x0

    .line 1674
    const-wide/16 v10, 0x0

    .line 1676
    move-object/from16 v0, p1

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v12

    .line 1679
    if-eqz v12, :cond_4

    .line 1680
    const/4 v13, 0x0

    .line 1686
    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->d:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->c:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    .line 1688
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide v4, v0

    iget-wide v6, v12, Lcom/keniu/security/traffic/ad;->c:J

    sub-long/2addr v4, v6

    .line 1689
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide v6, v0

    iget-wide v8, v12, Lcom/keniu/security/traffic/ad;->d:J

    sub-long/2addr v6, v8

    .line 1690
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide v8, v0

    iget-wide v10, v12, Lcom/keniu/security/traffic/ad;->g:J

    sub-long/2addr v8, v10

    .line 1691
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide v10, v0

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->h:J

    sub-long/2addr v10, v14

    .line 1693
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_0

    .line 1696
    const/4 v4, 0x0

    .line 1756
    :goto_0
    return v4

    .line 1703
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_1

    .line 1704
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide v4, v0

    .line 1706
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-gez v14, :cond_2

    .line 1707
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide v6, v0

    .line 1709
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gez v14, :cond_3

    .line 1710
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide v8, v0

    .line 1712
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_6

    .line 1713
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide v10, v0

    move-object/from16 v18, v12

    move/from16 v19, v13

    move-wide v12, v4

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v20, v6

    move-wide v6, v10

    move-wide/from16 v10, v20

    .line 1724
    :goto_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide v14, v0

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->c:J

    .line 1725
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide v14, v0

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->d:J

    .line 1726
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide v14, v0

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->g:J

    .line 1727
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide v14, v0

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->h:J

    .line 1729
    iget-wide v14, v4, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v14, v12

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->e:J

    .line 1730
    iget-wide v14, v4, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v14, v10

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->f:J

    .line 1731
    iget-wide v14, v4, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v14, v8

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->i:J

    .line 1732
    iget-wide v14, v4, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v14, v6

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->j:J

    .line 1733
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide v14, v0

    iput-wide v14, v4, Lcom/keniu/security/traffic/ad;->k:J

    .line 1735
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    .line 1740
    move-object/from16 v0, p1

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move v4, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide v14, v0

    move-object/from16 v0, p0

    move v1, v4

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v4

    .line 1743
    if-nez v4, :cond_5

    .line 1744
    const/4 v4, 0x1

    .line 1745
    new-instance v5, Lcom/keniu/security/traffic/ac;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1746
    move-object/from16 v0, p1

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move v14, v0

    iput v14, v5, Lcom/keniu/security/traffic/ac;->a:I

    .line 1747
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide v14, v0

    iput-wide v14, v5, Lcom/keniu/security/traffic/ac;->d:J

    move-object/from16 v18, v5

    move v5, v4

    move-object/from16 v4, v18

    .line 1752
    :goto_2
    iget-wide v14, v4, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v8, v12

    add-long/2addr v8, v14

    iput-wide v8, v4, Lcom/keniu/security/traffic/ac;->b:J

    .line 1753
    iget-wide v8, v4, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/keniu/security/traffic/ac;->c:J

    .line 1755
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V

    .line 1756
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1717
    :cond_4
    const/4 v12, 0x1

    .line 1718
    new-instance v13, Lcom/keniu/security/traffic/ad;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1719
    move-object/from16 v0, p1

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move v14, v0

    iput v14, v13, Lcom/keniu/security/traffic/ad;->a:I

    .line 1720
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object v14, v0

    iput-object v14, v13, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v18, v13

    move/from16 v19, v12

    move-wide v12, v4

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v20, v6

    move-wide v6, v10

    move-wide/from16 v10, v20

    goto/16 :goto_1

    .line 1749
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v18, v12

    move/from16 v19, v13

    move-wide v12, v4

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v20, v6

    move-wide v6, v10

    move-wide/from16 v10, v20

    goto/16 :goto_1
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 699
    const-wide/16 v0, 0x0

    .line 700
    sget-object v2, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    monitor-enter v2

    .line 701
    :try_start_0
    sget-object v3, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    sget-object v0, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v1, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hoi/netstat/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 704
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    return-wide v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private b(IJ)Lcom/keniu/security/traffic/ac;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1291
    .line 1295
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "sended"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "recved"

    aput-object v1, v2, v0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "updateDate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1298
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dayRecord"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "0, 1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1303
    new-instance v1, Lcom/keniu/security/traffic/ac;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1305
    :try_start_2
    iput p1, v1, Lcom/keniu/security/traffic/ac;->a:I

    .line 1306
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ac;->b:J

    .line 1307
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ac;->c:J

    .line 1308
    iput-wide p2, v1, Lcom/keniu/security/traffic/ac;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1313
    :goto_0
    if-eqz v0, :cond_2

    .line 1314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1319
    :cond_0
    :goto_1
    return-object v0

    .line 1311
    :catch_0
    move-exception v0

    move-object v0, v9

    move-object v1, v9

    .line 1313
    :goto_2
    if-eqz v1, :cond_0

    .line 1314
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1313
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_1

    .line 1314
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1315
    :cond_1
    throw v0

    .line 1313
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    .line 1311
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v9

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    monitor-enter v0

    .line 225
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 227
    if-nez p0, :cond_0

    .line 228
    monitor-exit v0

    .line 250
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 231
    if-nez v1, :cond_1

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 233
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 234
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_4

    .line 235
    const/4 v1, 0x2

    sput v1, Lcom/keniu/security/traffic/z;->t:I

    .line 247
    :cond_2
    :goto_1
    sget v1, Lcom/keniu/security/traffic/z;->t:I

    if-eqz v1, :cond_3

    .line 248
    invoke-static {}, Lcom/keniu/security/traffic/z;->f()V

    .line 250
    :cond_3
    monitor-exit v0

    goto :goto_0

    .line 237
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 239
    if-nez v1, :cond_5

    .line 240
    monitor-exit v0

    goto :goto_0

    .line 241
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 242
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 243
    const/4 v1, 0x1

    sput v1, Lcom/keniu/security/traffic/z;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/traffic/ad;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1652
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1654
    const-string v1, "userID"

    iget v2, p1, Lcom/keniu/security/traffic/ad;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1655
    const-string v1, "apkName"

    iget-object v2, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v1, "wifiTotalSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1657
    const-string v1, "wifiTotalRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1658
    const-string v1, "netTotalSended"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1659
    const-string v1, "netTotalRecved"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1660
    const-string v1, "updateDate"

    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1662
    if-eqz p2, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "daySoftRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1668
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "daySoftRecord"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Ljava/util/Date;)V
    .locals 24
    .parameter

    .prologue
    .line 1422
    new-instance v4, Lcom/keniu/security/traffic/ad;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1423
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/keniu/security/traffic/ad;->k:J

    .line 1425
    sget-object v5, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v6, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/hoi/netstat/g;->b(Ljava/lang/String;)J

    move-result-wide v5

    .line 1426
    sget-object v7, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v8, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/hoi/netstat/g;->a(Ljava/lang/String;)J

    move-result-wide v7

    .line 1427
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gtz v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5

    .line 1428
    :cond_0
    sget v9, Lcom/keniu/security/traffic/z;->t:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 1429
    const v9, 0xf4240

    iput v9, v4, Lcom/keniu/security/traffic/ad;->a:I

    .line 1430
    const-string v9, "3G2G"

    iput-object v9, v4, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    .line 1431
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lcom/keniu/security/traffic/ad;->c:J

    .line 1432
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lcom/keniu/security/traffic/ad;->d:J

    .line 1433
    iput-wide v5, v4, Lcom/keniu/security/traffic/ad;->g:J

    .line 1434
    iput-wide v7, v4, Lcom/keniu/security/traffic/ad;->h:J

    .line 1443
    :goto_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    iget v13, v4, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v14, v4, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v13

    if-eqz v13, :cond_7

    const/4 v14, 0x0

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->d:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_9

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->c:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_9

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_9

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_9

    iget-wide v5, v4, Lcom/keniu/security/traffic/ad;->c:J

    iget-wide v7, v13, Lcom/keniu/security/traffic/ad;->c:J

    sub-long/2addr v5, v7

    iget-wide v7, v4, Lcom/keniu/security/traffic/ad;->d:J

    iget-wide v9, v13, Lcom/keniu/security/traffic/ad;->d:J

    sub-long/2addr v7, v9

    iget-wide v9, v4, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v11, v13, Lcom/keniu/security/traffic/ad;->g:J

    sub-long/2addr v9, v11

    iget-wide v11, v4, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->h:J

    sub-long/2addr v11, v15

    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-nez v15, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-nez v15, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v15, v9, v15

    if-nez v15, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-eqz v15, :cond_5

    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-gez v15, :cond_2

    iget-wide v5, v4, Lcom/keniu/security/traffic/ad;->c:J

    :cond_2
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-gez v15, :cond_3

    iget-wide v7, v4, Lcom/keniu/security/traffic/ad;->d:J

    :cond_3
    const-wide/16 v15, 0x0

    cmp-long v15, v9, v15

    if-gez v15, :cond_4

    iget-wide v9, v4, Lcom/keniu/security/traffic/ad;->g:J

    :cond_4
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gez v15, :cond_9

    iget-wide v11, v4, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v19, v11

    move-wide v11, v5

    move-wide/from16 v5, v19

    move-wide/from16 v21, v7

    move-wide v7, v9

    move-wide/from16 v9, v21

    :goto_1
    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->c:J

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->c:J

    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->d:J

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->d:J

    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->g:J

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->h:J

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v15, v11

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->e:J

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v15, v9

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->f:J

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v15, v7

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->i:J

    iget-wide v15, v13, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v15, v5

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->j:J

    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v15, v13, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    iget v13, v4, Lcom/keniu/security/traffic/ad;->a:I

    iget-wide v14, v4, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move v1, v13

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    new-instance v14, Lcom/keniu/security/traffic/ac;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v15, v4, Lcom/keniu/security/traffic/ad;->a:I

    iput v15, v14, Lcom/keniu/security/traffic/ac;->a:I

    iget-wide v15, v4, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v15, v14, Lcom/keniu/security/traffic/ac;->d:J

    move-object v4, v14

    :goto_2
    iget-wide v14, v4, Lcom/keniu/security/traffic/ac;->b:J

    add-long/2addr v7, v11

    add-long/2addr v7, v14

    iput-wide v7, v4, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v7, v4, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v5, v9

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/keniu/security/traffic/ac;->c:J

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V

    .line 1445
    :cond_5
    return-void

    .line 1436
    :cond_6
    const v9, 0xf4241

    iput v9, v4, Lcom/keniu/security/traffic/ad;->a:I

    .line 1437
    const-string v9, "wifi"

    iput-object v9, v4, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    .line 1438
    iput-wide v5, v4, Lcom/keniu/security/traffic/ad;->c:J

    .line 1439
    iput-wide v7, v4, Lcom/keniu/security/traffic/ad;->d:J

    .line 1440
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/keniu/security/traffic/ad;->g:J

    .line 1441
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/keniu/security/traffic/ad;->h:J

    goto/16 :goto_0

    .line 1443
    :cond_7
    const/4 v13, 0x1

    new-instance v14, Lcom/keniu/security/traffic/ad;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v15, v4, Lcom/keniu/security/traffic/ad;->a:I

    iput v15, v14, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v15, v4, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v15, v14, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-wide/from16 v19, v11

    move-wide v11, v5

    move-wide/from16 v5, v19

    move-wide/from16 v21, v7

    move-wide v7, v9

    move-wide/from16 v9, v21

    move-object/from16 v23, v14

    move v14, v13

    move-object/from16 v13, v23

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v19, v13

    move v13, v4

    move-object/from16 v4, v19

    goto :goto_2

    :cond_9
    move-wide/from16 v19, v11

    move-wide v11, v5

    move-wide/from16 v5, v19

    move-wide/from16 v21, v7

    move-wide v7, v9

    move-wide/from16 v9, v21

    goto/16 :goto_1
.end method

.method private b(Lcom/keniu/security/traffic/ad;)Z
    .locals 12
    .parameter

    .prologue
    .line 1760
    const-wide/16 v0, 0x0

    .line 1761
    const-wide/16 v2, 0x0

    .line 1763
    iget v4, p1, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v5, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v4

    .line 1766
    if-eqz v4, :cond_2

    .line 1767
    const/4 v5, 0x0

    .line 1768
    iget-wide v6, v4, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, v4, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 1770
    iget-wide v0, p1, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v2, v4, Lcom/keniu/security/traffic/ad;->g:J

    sub-long/2addr v0, v2

    .line 1771
    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v6, v4, Lcom/keniu/security/traffic/ad;->h:J

    sub-long/2addr v2, v6

    .line 1772
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 1773
    const/4 v0, 0x0

    .line 1830
    :goto_0
    return v0

    .line 1776
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 1777
    iget-wide v0, p1, Lcom/keniu/security/traffic/ad;->g:J

    .line 1779
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    .line 1780
    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->h:J

    move-object v10, v4

    move v11, v5

    move-wide v4, v0

    move-object v0, v10

    move v1, v11

    .line 1790
    :goto_1
    iget-wide v6, p1, Lcom/keniu/security/traffic/ad;->g:J

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->g:J

    .line 1791
    iget-wide v6, p1, Lcom/keniu/security/traffic/ad;->h:J

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->h:J

    .line 1792
    sget v6, Lcom/keniu/security/traffic/z;->t:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1793
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->i:J

    .line 1794
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->j:J

    .line 1799
    :goto_2
    iget-wide v6, p1, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->k:J

    .line 1801
    invoke-direct {p0, v0, v1}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    .line 1806
    iget v0, p1, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v1, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iget-wide v6, p1, Lcom/keniu/security/traffic/ad;->k:J

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;J)Lcom/keniu/security/traffic/ad;

    move-result-object v0

    .line 1809
    if-nez v0, :cond_4

    .line 1810
    const/4 v0, 0x1

    .line 1811
    new-instance v1, Lcom/keniu/security/traffic/ad;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1812
    iget v6, p1, Lcom/keniu/security/traffic/ad;->a:I

    iput v6, v1, Lcom/keniu/security/traffic/ad;->a:I

    .line 1813
    iget-object v6, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v6, v1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 1818
    :goto_3
    sget v6, Lcom/keniu/security/traffic/z;->t:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 1819
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/keniu/security/traffic/ad;->i:J

    .line 1820
    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/keniu/security/traffic/ad;->j:J

    .line 1826
    :goto_4
    iget-wide v2, p1, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v2, v0, Lcom/keniu/security/traffic/ad;->k:J

    .line 1828
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "userID"

    iget v4, v0, Lcom/keniu/security/traffic/ad;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "apkName"

    iget-object v4, v0, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wifiTotalSended"

    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "wifiTotalRecved"

    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "netTotalSended"

    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "netTotalRecved"

    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "updateDate"

    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "daySoftRecord"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1830
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1784
    :cond_2
    const/4 v4, 0x1

    .line 1785
    new-instance v5, Lcom/keniu/security/traffic/ad;

    invoke-direct {v5, p0}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1786
    iget v6, p1, Lcom/keniu/security/traffic/ad;->a:I

    iput v6, v5, Lcom/keniu/security/traffic/ad;->a:I

    .line 1787
    iget-object v6, p1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v6, v5, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object v10, v5

    move v11, v4

    move-wide v4, v0

    move-object v0, v10

    move v1, v11

    goto/16 :goto_1

    .line 1796
    :cond_3
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->e:J

    .line 1797
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/keniu/security/traffic/ad;->f:J

    goto/16 :goto_2

    .line 1815
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1822
    :cond_5
    iget-wide v6, v0, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/keniu/security/traffic/ad;->e:J

    .line 1823
    iget-wide v4, v0, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/keniu/security/traffic/ad;->f:J

    goto/16 :goto_4

    .line 1828
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "daySoftRecord"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    :cond_7
    move-object v10, v4

    move v11, v5

    move-wide v4, v0

    move-object v0, v10

    move v1, v11

    goto/16 :goto_1
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 710
    const-wide/16 v0, 0x0

    .line 711
    sget-object v2, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    monitor-enter v2

    .line 712
    :try_start_0
    sget-object v3, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    sget-object v0, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v1, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hoi/netstat/g;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 715
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    return-wide v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 373
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    :try_start_0
    const-string v1, "UPDATE lastRecord SET wifiRecved = -1, wifiSended = -1, netRecved = -1, netSended = -1;"

    iget-object v2, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 385
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 386
    invoke-direct {v0}, Lcom/keniu/security/traffic/z;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    :try_start_0
    invoke-direct {v0, v3, v4}, Lcom/keniu/security/traffic/z;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE lastRecord SET wifiRecved = 0, wifiSended = 0, netRecved = 0, netSended = 0 WHERE updateDate < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 1331
    const/4 v0, 0x0

    .line 1333
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uid_stat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1339
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 397
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v0

    .line 398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 405
    :try_start_0
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "lastRecord"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dayRecord"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 407
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "daySoftRecord"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 414
    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/traffic/z;->a()V

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    iget-object v1, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/keniu/security/traffic/z;->n:Z

    return v0
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 289
    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/net/route"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 301
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "0003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 302
    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 304
    :cond_1
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 305
    const/4 v2, 0x0

    aget-object v0, v0, v2

    sput-object v0, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    .line 309
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Ljava/util/Vector;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1835
    const-class v1, Lcom/keniu/security/traffic/z;

    monitor-enter v1

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1838
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1840
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v6

    .line 1866
    :goto_0
    monitor-exit v1

    return-object v0

    .line 1843
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1844
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1846
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1848
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1852
    invoke-static {p0, v0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1855
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1856
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1835
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1861
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v6

    .line 1864
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 1866
    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/keniu/security/traffic/z;->k:Z

    .line 510
    iget-boolean v0, p0, Lcom/keniu/security/traffic/z;->k:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 513
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    :try_start_2
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->j:Landroid/content/Context;

    const-string v1, "mosecurity_traffic.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 524
    iget-boolean v0, p0, Lcom/keniu/security/traffic/z;->k:Z

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 532
    :catch_1
    move-exception v0

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 534
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 536
    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 573
    :try_start_0
    const-string v0, "UPDATE lastRecord SET wifiRecved = -1, wifiSended = -1, netRecved = -1, netSended = -1;"

    .line 577
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 581
    :catchall_0
    move-exception v0

    throw v0

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 346
    invoke-static {p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 349
    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v2

    .line 354
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/keniu/security/traffic/z;->a(J)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE lastRecord SET wifiRecved = 0, wifiSended = 0, netRecved = 0, netSended = 0 WHERE updateDate < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(IJ)Lcom/keniu/security/traffic/ac;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1323
    invoke-static {p2, p3}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v0

    .line 1324
    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/traffic/z;->b(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(JILjava/lang/String;)Lcom/keniu/security/traffic/u;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 839
    .line 843
    :try_start_0
    invoke-static {p1, p2}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v0

    .line 845
    const-string v2, "SELECT (%s + %s) AS wifiDayTraffic, (%s + %s) AS mobileDayTraffic   FROM %s  WHERE %s = %d AND %s = \'%s\' AND %s = %d  "

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "wifiTotalSended"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "wifiTotalRecved"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "netTotalSended"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "netTotalRecved"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "daySoftRecord"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "userID"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "apkName"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object p4, v3, v4

    const/16 v4, 0x9

    const-string v5, "updateDate"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 855
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    new-instance v1, Lcom/keniu/security/traffic/u;

    invoke-direct {v1}, Lcom/keniu/security/traffic/u;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 857
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/u;->b:J

    .line 858
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/u;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 863
    :goto_0
    if-eqz v0, :cond_2

    .line 864
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 869
    :goto_1
    return-object v0

    .line 860
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 863
    if-eqz v1, :cond_1

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 865
    goto :goto_1

    .line 863
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_0

    .line 864
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 865
    :cond_0
    throw v0

    .line 863
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 860
    :catch_1
    move-exception v1

    move-object v2, v6

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v6

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;J)Ljava/util/Vector;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 1053
    invoke-static/range {p1 .. p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    .line 1058
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1059
    invoke-virtual {v3, v4}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 1062
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(J)V

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1068
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1070
    const/16 v3, 0x1000

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 1073
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1074
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1077
    new-instance v7, Lcom/keniu/security/traffic/x;

    invoke-direct {v7}, Lcom/keniu/security/traffic/x;-><init>()V

    .line 1079
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v8, v7, Lcom/keniu/security/traffic/x;->a:I

    .line 1080
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    .line 1082
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1089
    :cond_0
    const/4 v3, 0x0

    .line 1090
    const/4 v6, 0x0

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1095
    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v7

    .line 1096
    const-string v9, "SELECT %s, %s, (%s + %s) AS wifiTraffic, (%s + %s) AS mobileTraffic, (%s + %s + %s + %s) AS traffic FROM %s WHERE %s = %d ORDER BY mobileTraffic DESC;"

    const/16 v10, 0xd

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "userID"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "apkName"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "wifiTotalSended"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "wifiTotalRecved"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "netTotalSended"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "netTotalRecved"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "wifiTotalSended"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "wifiTotalRecved"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "netTotalSended"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "netTotalRecved"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "daySoftRecord"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "updateDate"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1106
    const/4 v8, 0x0

    .line 1107
    new-instance v9, Lcom/keniu/security/traffic/x;

    invoke-direct {v9}, Lcom/keniu/security/traffic/x;-><init>()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1110
    if-eqz v3, :cond_f

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1112
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1113
    const/4 v6, 0x0

    .line 1114
    const/4 v10, 0x0

    move/from16 v17, v8

    move-object v8, v10

    move-object v10, v6

    move/from16 v6, v17

    .line 1118
    :cond_1
    const/4 v11, 0x0

    :try_start_2
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v9, Lcom/keniu/security/traffic/x;->a:I

    .line 1119
    iget v11, v9, Lcom/keniu/security/traffic/x;->a:I

    const v12, 0xf4240

    if-eq v11, v12, :cond_5

    iget v11, v9, Lcom/keniu/security/traffic/x;->a:I

    const v12, 0xf4241

    if-eq v11, v12, :cond_5

    .line 1121
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    .line 1125
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 1126
    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1127
    const/4 v13, 0x3

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1128
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_5

    .line 1129
    :cond_2
    if-eqz p2, :cond_c

    .line 1133
    iget-object v15, v9, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    const-string v16, "com.wd.AndroidDaemon"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v9, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    const-string v16, "com.wandoujia.phoenix2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v9, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    const-string v16, "com.dragon.android.pandaspace"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v9, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    const-string v16, "com.qq.AppService"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1141
    :cond_3
    if-nez v8, :cond_4

    .line 1142
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1145
    :cond_4
    new-instance v15, Lcom/keniu/security/traffic/ae;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1146
    move-object v0, v9

    iget v0, v0, Lcom/keniu/security/traffic/x;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/keniu/security/traffic/ae;->a:I

    .line 1147
    move-object v0, v9

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 1148
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 1149
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 1151
    add-long/2addr v11, v13

    iput-wide v11, v15, Lcom/keniu/security/traffic/ae;->e:J

    .line 1152
    const-wide/16 v11, -0x3e8

    iput-wide v11, v15, Lcom/keniu/security/traffic/ae;->f:J

    .line 1154
    invoke-virtual {v8, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1170
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 1187
    :cond_5
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x32

    if-lt v6, v11, :cond_1

    .line 1188
    :cond_6
    if-eqz v10, :cond_7

    .line 1189
    invoke-virtual {v7, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1190
    sget-object v4, Lcom/keniu/security/traffic/z;->i:Ljava/util/Comparator;

    invoke-static {v7, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1193
    :cond_7
    if-eqz v8, :cond_8

    .line 1194
    invoke-virtual {v7, v8}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    move-object v4, v7

    .line 1199
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1202
    if-eqz v3, :cond_9

    .line 1203
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1204
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v3, v4

    .line 1210
    :goto_4
    return-object v3

    .line 1158
    :cond_a
    :try_start_4
    new-instance v15, Lcom/keniu/security/traffic/ae;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1159
    move-object v0, v9

    iget v0, v0, Lcom/keniu/security/traffic/x;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/keniu/security/traffic/ae;->a:I

    .line 1160
    move-object v0, v9

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 1161
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 1162
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 1164
    iput-wide v11, v15, Lcom/keniu/security/traffic/ae;->e:J

    .line 1165
    iput-wide v13, v15, Lcom/keniu/security/traffic/ae;->f:J

    .line 1167
    invoke-virtual {v7, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1200
    :catch_0
    move-exception v4

    move-object v4, v3

    move-object v3, v7

    .line 1202
    :goto_5
    if-eqz v4, :cond_b

    .line 1203
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1204
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    .line 1173
    :cond_c
    if-nez v10, :cond_d

    .line 1174
    :try_start_5
    new-instance v10, Lcom/keniu/security/traffic/ae;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 1176
    const v15, 0xf4242

    iput v15, v10, Lcom/keniu/security/traffic/ae;->a:I

    .line 1177
    const-string v15, "uninstaledSoft"

    iput-object v15, v10, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 1178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020220

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v10, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 1182
    const-string v15, "\u5df2\u5378\u8f7d\u8f6f\u4ef6"

    iput-object v15, v10, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 1184
    :cond_d
    iget-wide v15, v10, Lcom/keniu/security/traffic/ae;->e:J

    add-long/2addr v11, v15

    iput-wide v11, v10, Lcom/keniu/security/traffic/ae;->e:J

    .line 1185
    iget-wide v11, v10, Lcom/keniu/security/traffic/ae;->f:J

    add-long/2addr v11, v13

    iput-wide v11, v10, Lcom/keniu/security/traffic/ae;->f:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1202
    :catchall_0
    move-exception v4

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    :goto_6
    if-eqz v4, :cond_e

    .line 1203
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1204
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1202
    :catchall_1
    move-exception v4

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    goto :goto_6

    .line 1200
    :catch_1
    move-exception v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_5

    :catch_3
    move-exception v5

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    goto :goto_5

    :cond_f
    move-object v4, v6

    goto/16 :goto_3
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    .line 504
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->close()V

    .line 505
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Date;JZ)Z
    .locals 27
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    const/4 v5, 0x1

    .line 1351
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(J)V

    .line 1354
    sget-boolean v6, Lcom/keniu/security/traffic/z;->n:Z

    if-eqz v6, :cond_4

    .line 1355
    if-eqz p5, :cond_a

    sget-boolean v6, Lcom/keniu/security/traffic/z;->p:Z

    if-eqz v6, :cond_a

    .line 1356
    new-instance v6, Lcom/keniu/security/traffic/ad;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/keniu/security/traffic/ad;->k:J

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->j:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v8, v6, Lcom/keniu/security/traffic/ad;->a:I

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    sget-object v8, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    iget v9, v6, Lcom/keniu/security/traffic/ad;->a:I

    invoke-interface {v8, v9}, Lcom/hoi/netstat/g;->a(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/keniu/security/traffic/ad;->g:J

    sget-object v8, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    iget v9, v6, Lcom/keniu/security/traffic/ad;->a:I

    invoke-interface {v8, v9}, Lcom/hoi/netstat/g;->b(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v8, v6, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    iget-wide v8, v6, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    :cond_1
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    iget v12, v6, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v13, v6, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v13, 0x0

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->h:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_16

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_16

    iget-wide v8, v6, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v10, v12, Lcom/keniu/security/traffic/ad;->g:J

    sub-long/2addr v8, v10

    iget-wide v10, v6, Lcom/keniu/security/traffic/ad;->h:J

    iget-wide v14, v12, Lcom/keniu/security/traffic/ad;->h:J

    sub-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_0

    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gez v14, :cond_3

    iget-wide v8, v6, Lcom/keniu/security/traffic/ad;->g:J

    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_16

    iget-wide v10, v6, Lcom/keniu/security/traffic/ad;->h:J

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-wide v12, v8

    move-object/from16 v8, v22

    move/from16 v9, v23

    :goto_1
    iget-wide v14, v6, Lcom/keniu/security/traffic/ad;->g:J

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->g:J

    iget-wide v14, v6, Lcom/keniu/security/traffic/ad;->h:J

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->h:J

    sget v14, Lcom/keniu/security/traffic/z;->t:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v14, v12

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->i:J

    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v14, v10

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->j:J

    :goto_2
    iget-wide v14, v6, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    iget v8, v6, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v9, v6, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iget-wide v14, v6, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;J)Lcom/keniu/security/traffic/ad;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    new-instance v9, Lcom/keniu/security/traffic/ad;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v14, v6, Lcom/keniu/security/traffic/ad;->a:I

    iput v14, v9, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v14, v6, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v14, v9, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v22, v9

    move v9, v8

    move-object/from16 v8, v22

    :goto_3
    sget v14, Lcom/keniu/security/traffic/z;->t:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->i:J

    add-long/2addr v12, v14

    iput-wide v12, v8, Lcom/keniu/security/traffic/ad;->i:J

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->j:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/keniu/security/traffic/ad;->j:J

    :goto_4
    iget-wide v10, v6, Lcom/keniu/security/traffic/ad;->k:J

    iput-wide v10, v8, Lcom/keniu/security/traffic/ad;->k:J

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "userID"

    iget v12, v8, Lcom/keniu/security/traffic/ad;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "apkName"

    iget-object v12, v8, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "wifiTotalSended"

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->e:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "wifiTotalRecved"

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "netTotalSended"

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->i:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "netTotalRecved"

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->j:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "updateDate"

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->k:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "daySoftRecord"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1369
    :catch_0
    move-exception v5

    const/4 v5, 0x0

    .line 1370
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/traffic/z;->m:I

    move v6, v0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_14

    .line 1371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/traffic/z;->m:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/traffic/z;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    :cond_4
    :goto_5
    return v5

    .line 1356
    :cond_5
    const/4 v12, 0x1

    :try_start_2
    new-instance v13, Lcom/keniu/security/traffic/ad;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    iget v14, v6, Lcom/keniu/security/traffic/ad;->a:I

    iput v14, v13, Lcom/keniu/security/traffic/ad;->a:I

    iget-object v14, v6, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-object v14, v13, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v22, v13

    move/from16 v23, v12

    move-wide v12, v8

    move-object/from16 v8, v22

    move/from16 v9, v23

    goto/16 :goto_1

    :cond_6
    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v14, v12

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->e:J

    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v14, v10

    iput-wide v14, v8, Lcom/keniu/security/traffic/ad;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1377
    :catchall_0
    move-exception v5

    throw v5

    .line 1356
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_8
    :try_start_3
    iget-wide v14, v8, Lcom/keniu/security/traffic/ad;->e:J

    add-long/2addr v12, v14

    iput-wide v12, v8, Lcom/keniu/security/traffic/ad;->e:J

    iget-wide v12, v8, Lcom/keniu/security/traffic/ad;->f:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/keniu/security/traffic/ad;->f:J

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "daySoftRecord"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 1359
    :cond_a
    sget-object v6, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1360
    :try_start_4
    sget v7, Lcom/keniu/security/traffic/z;->t:I

    if-eqz v7, :cond_10

    sget-object v7, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_10

    .line 1362
    new-instance v7, Lcom/keniu/security/traffic/ad;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/keniu/security/traffic/ad;->k:J

    sget-object v8, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v9, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/hoi/netstat/g;->b(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v10, Lcom/keniu/security/traffic/z;->M:Lcom/hoi/netstat/g;

    sget-object v11, Lcom/keniu/security/traffic/z;->u:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/hoi/netstat/g;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_b

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_10

    :cond_b
    sget v12, Lcom/keniu/security/traffic/z;->t:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    const v12, 0xf4240

    iput v12, v7, Lcom/keniu/security/traffic/ad;->a:I

    const-string v12, "3G2G"

    iput-object v12, v7, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    const-wide/16 v12, 0x0

    iput-wide v12, v7, Lcom/keniu/security/traffic/ad;->c:J

    const-wide/16 v12, 0x0

    iput-wide v12, v7, Lcom/keniu/security/traffic/ad;->d:J

    iput-wide v8, v7, Lcom/keniu/security/traffic/ad;->g:J

    iput-wide v10, v7, Lcom/keniu/security/traffic/ad;->h:J

    :goto_6
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v0, v7

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move/from16 v16, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(ILjava/lang/String;)Lcom/keniu/security/traffic/ad;

    move-result-object v16

    if-eqz v16, :cond_12

    const/16 v17, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_15

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_15

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_15

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_15

    iget-wide v8, v7, Lcom/keniu/security/traffic/ad;->c:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    iget-wide v10, v7, Lcom/keniu/security/traffic/ad;->d:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide v12, v0

    sub-long/2addr v10, v12

    iget-wide v12, v7, Lcom/keniu/security/traffic/ad;->g:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide v14, v0

    sub-long/2addr v12, v14

    iget-wide v14, v7, Lcom/keniu/security/traffic/ad;->h:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_c

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-nez v18, :cond_c

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_c

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_10

    :cond_c
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_d

    iget-wide v8, v7, Lcom/keniu/security/traffic/ad;->c:J

    :cond_d
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-gez v18, :cond_e

    iget-wide v10, v7, Lcom/keniu/security/traffic/ad;->d:J

    :cond_e
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-gez v18, :cond_f

    iget-wide v12, v7, Lcom/keniu/security/traffic/ad;->g:J

    :cond_f
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_15

    iget-wide v14, v7, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v22, v14

    move-wide v14, v8

    move-wide/from16 v8, v22

    move-wide/from16 v24, v10

    move-wide v10, v12

    move-wide/from16 v12, v24

    :goto_7
    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->c:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->c:J

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->d:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->d:J

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->g:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->g:J

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->h:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->h:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->e:J

    move-wide/from16 v18, v0

    add-long v18, v18, v14

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->e:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->f:J

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->f:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->i:J

    move-wide/from16 v18, v0

    add-long v18, v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->i:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->j:J

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->j:J

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/keniu/security/traffic/ad;->k:J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ad;Z)V

    move-object v0, v7

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move/from16 v16, v0

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/traffic/z;->a(IJ)Lcom/keniu/security/traffic/ac;

    move-result-object v16

    if-nez v16, :cond_13

    const/16 v16, 0x1

    new-instance v17, Lcom/keniu/security/traffic/ac;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V

    move-object v0, v7

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/keniu/security/traffic/ac;->a:I

    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ad;->k:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/keniu/security/traffic/ac;->d:J

    move-object/from16 v7, v17

    :goto_8
    move-object v0, v7

    iget-wide v0, v0, Lcom/keniu/security/traffic/ac;->b:J

    move-wide/from16 v17, v0

    add-long/2addr v10, v14

    add-long v10, v10, v17

    iput-wide v10, v7, Lcom/keniu/security/traffic/ac;->b:J

    iget-wide v10, v7, Lcom/keniu/security/traffic/ac;->c:J

    add-long/2addr v8, v12

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/keniu/security/traffic/ac;->c:J

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(Lcom/keniu/security/traffic/ac;Z)V

    .line 1364
    :cond_10
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1362
    :cond_11
    const v12, 0xf4241

    :try_start_6
    iput v12, v7, Lcom/keniu/security/traffic/ad;->a:I

    const-string v12, "wifi"

    iput-object v12, v7, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    iput-wide v8, v7, Lcom/keniu/security/traffic/ad;->c:J

    iput-wide v10, v7, Lcom/keniu/security/traffic/ad;->d:J

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/keniu/security/traffic/ad;->g:J

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/keniu/security/traffic/ad;->h:J

    goto/16 :goto_6

    :cond_12
    const/16 v16, 0x1

    new-instance v17, Lcom/keniu/security/traffic/ad;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ad;-><init>(Lcom/keniu/security/traffic/z;)V

    move-object v0, v7

    iget v0, v0, Lcom/keniu/security/traffic/ad;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/keniu/security/traffic/ad;->a:I

    move-object v0, v7

    iget-object v0, v0, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/keniu/security/traffic/ad;->b:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v22, v14

    move-wide v14, v8

    move-wide/from16 v8, v22

    move-wide/from16 v24, v10

    move-wide v10, v12

    move-wide/from16 v12, v24

    move-object/from16 v26, v17

    move/from16 v17, v16

    move-object/from16 v16, v26

    goto/16 :goto_7

    :cond_13
    const/4 v7, 0x0

    move-object/from16 v22, v16

    move/from16 v16, v7

    move-object/from16 v7, v22

    goto :goto_8

    .line 1372
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/traffic/z;->m:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 1373
    const-string v6, "mg_traffic_crash"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/traffic/z;->m:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/traffic/z;->m:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :cond_15
    move-wide/from16 v22, v14

    move-wide v14, v8

    move-wide/from16 v8, v22

    move-wide/from16 v24, v10

    move-wide v10, v12

    move-wide/from16 v12, v24

    goto/16 :goto_7

    :cond_16
    move-object/from16 v22, v12

    move/from16 v23, v13

    move-wide v12, v8

    move-object/from16 v8, v22

    move/from16 v9, v23

    goto/16 :goto_1
.end method

.method public final a(JJ)[J
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x1f

    const/4 v8, 0x0

    .line 728
    .line 732
    :try_start_0
    invoke-static {p1, p2}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v0

    .line 733
    invoke-static {p3, p4}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v2

    .line 735
    const-string v4, "SELECT (%s + %s) AS traffic, %s FROM %s WHERE %s = %d AND %s >= %d AND %s < %d ORDER BY %s;"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "recved"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "sended"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "updateDate"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "dayRecord"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "userID"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const v7, 0xf4240

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "updateDate"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "updateDate"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/16 v2, 0xa

    const-string v3, "updateDate"

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 743
    iget-object v3, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 744
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 745
    const/16 v3, 0x1f

    new-array v3, v3, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 748
    :cond_0
    const/4 v4, 0x1

    :try_start_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 751
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 752
    sub-long/2addr v4, v0

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 756
    if-ltz v4, :cond_1

    if-ge v4, v9, :cond_1

    .line 757
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 759
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 763
    :goto_0
    if-eqz v2, :cond_2

    .line 764
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 769
    :cond_2
    :goto_1
    return-object v0

    .line 763
    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    :goto_2
    if-eqz v0, :cond_4

    .line 764
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 765
    goto :goto_1

    .line 763
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    .line 764
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_3
    throw v0

    .line 763
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v1, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v8

    goto :goto_0
.end method

.method public final a(JJILjava/lang/String;)[Lcom/keniu/security/traffic/u;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 782
    const/4 v1, 0x0

    .line 785
    :try_start_0
    invoke-static {p1, p2}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v2

    .line 786
    invoke-static {p3, p4}, Lcom/keniu/security/traffic/y;->a(J)J

    move-result-wide v4

    .line 788
    const-string v6, "SELECT (%s + %s) AS wifiDayTraffic, (%s + %s) AS mobileDayTraffic , %s FROM %s  WHERE %s = %d AND %s = \'%s\' AND %s >= %d AND %s < %d ORDER BY %s;"

    const/16 v7, 0xf

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "wifiTotalSended"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "wifiTotalRecved"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "netTotalSended"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "netTotalRecved"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "updateDate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "daySoftRecord"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "userID"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "apkName"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    aput-object p6, v7, v8

    const/16 v8, 0xa

    const-string v9, "updateDate"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "updateDate"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/16 v4, 0xe

    const-string v5, "updateDate"

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 799
    iget-object v5, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 801
    const/16 v4, 0x1f

    new-array v0, v4, [Lcom/keniu/security/traffic/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x1f

    if-ge v4, v5, :cond_0

    .line 804
    :try_start_1
    new-instance v5, Lcom/keniu/security/traffic/u;

    invoke-direct {v5}, Lcom/keniu/security/traffic/u;-><init>()V

    aput-object v5, v0, v4

    .line 803
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    :cond_0
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 810
    sub-long/2addr v4, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 811
    if-ltz v4, :cond_1

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_1

    .line 812
    aget-object v5, v0, v4

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/keniu/security/traffic/u;->b:J

    .line 813
    aget-object v4, v0, v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/keniu/security/traffic/u;->a:J

    .line 816
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 821
    :cond_2
    if-eqz v1, :cond_3

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_3
    :goto_1
    return-object v0

    .line 818
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    if-eqz v1, :cond_5

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 823
    goto :goto_1

    .line 821
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 822
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 823
    :cond_4
    throw v0

    .line 818
    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public final b(JJ)Lcom/keniu/security/traffic/ac;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1215
    .line 1219
    :try_start_0
    const-string v0, "SELECT SUM(%s) AS totalSend, SUM(%s) AS totalRecved FROM %s WHERE %s = %d AND %s >= %d AND %s < %d;"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sended"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "recved"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "dayRecord"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "userID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0xf4240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "updateDate"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "updateDate"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1227
    new-instance v1, Lcom/keniu/security/traffic/ac;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ac;-><init>(Lcom/keniu/security/traffic/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1229
    const v2, 0xf4240

    :try_start_2
    iput v2, v1, Lcom/keniu/security/traffic/ac;->a:I

    .line 1230
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ac;->b:J

    .line 1231
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/traffic/ac;->c:J

    .line 1232
    iput-wide p1, v1, Lcom/keniu/security/traffic/ac;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1237
    :goto_0
    if-eqz v0, :cond_2

    .line 1238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1243
    :cond_0
    :goto_1
    return-object v0

    .line 1235
    :catch_0
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    .line 1237
    :goto_2
    if-eqz v1, :cond_0

    .line 1238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1237
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_1

    .line 1238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1239
    :cond_1
    throw v0

    .line 1237
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 1235
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method public final b(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 541
    :try_start_0
    iput-boolean p1, p0, Lcom/keniu/security/traffic/z;->k:Z

    .line 542
    iget-boolean v0, p0, Lcom/keniu/security/traffic/z;->k:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 545
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    :try_start_2
    iget-object v0, p0, Lcom/keniu/security/traffic/z;->j:Landroid/content/Context;

    const-string v1, "mosecurity_traffic.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 554
    iget-boolean v0, p0, Lcom/keniu/security/traffic/z;->k:Z

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 562
    :catch_1
    move-exception v0

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 564
    :catch_2
    move-exception v0

    goto :goto_0

    .line 566
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;)Ljava/util/Vector;
    .locals 22
    .parameter

    .prologue
    .line 876
    invoke-static/range {p1 .. p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v4

    .line 881
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 882
    invoke-virtual {v4, v3}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v5

    .line 885
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/z;->a(J)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 891
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 893
    const/16 v3, 0x1000

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 896
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 897
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 900
    new-instance v10, Lcom/keniu/security/traffic/x;

    invoke-direct {v10}, Lcom/keniu/security/traffic/x;-><init>()V

    .line 902
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v11, v10, Lcom/keniu/security/traffic/x;->a:I

    .line 903
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v11, v10, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    .line 905
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 912
    :cond_0
    const/4 v3, 0x0

    .line 913
    const/4 v9, 0x0

    .line 914
    const/4 v10, 0x0

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 919
    :try_start_0
    const-string v11, "SELECT %s, %s, (%s + %s) AS wifiTraffic, (%s + %s) AS mobileTraffic, (%s + %s + %s + %s) AS traffic FROM %s ORDER BY mobileTraffic DESC;"

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "userID"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "apkName"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "wifiTotalSended"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "wifiTotalRecved"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "netTotalSended"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "netTotalRecved"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "wifiTotalSended"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const-string v14, "wifiTotalRecved"

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const-string v14, "netTotalSended"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    const-string v14, "netTotalRecved"

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const-string v14, "lastRecord"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 929
    const/4 v12, 0x0

    .line 930
    new-instance v13, Lcom/keniu/security/traffic/x;

    invoke-direct {v13}, Lcom/keniu/security/traffic/x;-><init>()V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 933
    if-eqz v11, :cond_12

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 935
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 936
    const/4 v3, 0x0

    move v9, v12

    move-object v12, v10

    move-object v10, v3

    .line 940
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/keniu/security/traffic/x;->a:I

    .line 941
    iget v3, v13, Lcom/keniu/security/traffic/x;->a:I

    const v15, 0xf4240

    if-eq v3, v15, :cond_10

    iget v3, v13, Lcom/keniu/security/traffic/x;->a:I

    const v15, 0xf4241

    if-eq v3, v15, :cond_10

    .line 943
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    .line 947
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 948
    const/4 v15, 0x2

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 949
    const/16 v17, 0x3

    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 950
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-nez v19, :cond_1

    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_10

    .line 952
    :cond_1
    if-eqz v3, :cond_c

    .line 956
    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.wd.AndroidDaemon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.wandoujia.phoenix2"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.dragon.android.pandaspace"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.qq.AppService"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 964
    :cond_2
    if-nez v12, :cond_3

    .line 965
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 968
    :cond_3
    new-instance v19, Lcom/keniu/security/traffic/ae;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 969
    move-object v0, v13

    iget v0, v0, Lcom/keniu/security/traffic/x;->a:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/keniu/security/traffic/ae;->a:I

    .line 970
    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 971
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 972
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 974
    add-long v15, v15, v17

    move-wide v0, v15

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/keniu/security/traffic/ae;->e:J

    .line 975
    const-wide/16 v15, -0x3e8

    move-wide v0, v15

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/keniu/security/traffic/ae;->f:J

    .line 977
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    .line 993
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v9

    move-object v9, v10

    move-object v10, v3

    move/from16 v3, v21

    .line 1011
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x32

    if-lt v3, v12, :cond_11

    .line 1012
    :cond_4
    if-eqz v9, :cond_5

    .line 1013
    invoke-virtual {v14, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1014
    sget-object v3, Lcom/keniu/security/traffic/z;->i:Ljava/util/Comparator;

    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1017
    :cond_5
    if-eqz v10, :cond_6

    .line 1018
    invoke-virtual {v14, v10}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    move-object v3, v14

    .line 1022
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1025
    if-eqz v11, :cond_7

    .line 1026
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1034
    :goto_5
    iget-wide v7, v4, Lcom/keniu/security/traffic/y;->j:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_8

    .line 1035
    iput-wide v5, v4, Lcom/keniu/security/traffic/y;->j:J

    .line 1036
    const v5, 0x7f0b03d6

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1040
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1041
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/keniu/security/traffic/y;->j:J

    .line 1042
    const v5, 0x7f0b03d6

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1045
    :cond_a
    return-object v3

    .line 981
    :cond_b
    :try_start_4
    new-instance v19, Lcom/keniu/security/traffic/ae;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 982
    move-object v0, v13

    iget v0, v0, Lcom/keniu/security/traffic/x;->a:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/keniu/security/traffic/ae;->a:I

    .line 983
    move-object v0, v13

    iget-object v0, v0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 984
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 985
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 987
    move-wide v0, v15

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/keniu/security/traffic/ae;->e:J

    .line 988
    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/keniu/security/traffic/ae;->f:J

    .line 990
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    goto/16 :goto_2

    .line 996
    :cond_c
    if-nez v10, :cond_f

    .line 997
    new-instance v3, Lcom/keniu/security/traffic/ae;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/keniu/security/traffic/ae;-><init>(Lcom/keniu/security/traffic/z;)V

    .line 999
    const v10, 0xf4242

    iput v10, v3, Lcom/keniu/security/traffic/ae;->a:I

    .line 1000
    const-string v10, "uninstaledSoft"

    iput-object v10, v3, Lcom/keniu/security/traffic/ae;->b:Ljava/lang/String;

    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v19, 0x7f020220

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v3, Lcom/keniu/security/traffic/ae;->c:Landroid/graphics/drawable/Drawable;

    .line 1005
    const-string v10, "\u5df2\u5378\u8f7d\u8f6f\u4ef6"

    iput-object v10, v3, Lcom/keniu/security/traffic/ae;->d:Ljava/lang/String;

    .line 1007
    :goto_6
    move-object v0, v3

    iget-wide v0, v0, Lcom/keniu/security/traffic/ae;->e:J

    move-wide/from16 v19, v0

    add-long v15, v15, v19

    iput-wide v15, v3, Lcom/keniu/security/traffic/ae;->e:J

    .line 1008
    iget-wide v15, v3, Lcom/keniu/security/traffic/ae;->f:J

    add-long v15, v15, v17

    iput-wide v15, v3, Lcom/keniu/security/traffic/ae;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v10, v12

    move-object/from16 v21, v3

    move v3, v9

    move-object/from16 v9, v21

    goto/16 :goto_3

    .line 1023
    :catch_0
    move-exception v7

    move-object v7, v3

    move-object v3, v9

    .line 1025
    :goto_7
    if-eqz v7, :cond_d

    .line 1026
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    .line 1025
    :catchall_0
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_8
    if-eqz v4, :cond_e

    .line 1026
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/traffic/z;->l:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1025
    :catchall_1
    move-exception v3

    move-object v4, v11

    goto :goto_8

    .line 1023
    :catch_1
    move-exception v3

    move-object v3, v9

    move-object v7, v11

    goto :goto_7

    :catch_2
    move-exception v3

    move-object v3, v14

    move-object v7, v11

    goto :goto_7

    :catch_3
    move-exception v7

    move-object v7, v11

    goto :goto_7

    :cond_f
    move-object v3, v10

    goto :goto_6

    :cond_10
    move v3, v9

    move-object v9, v10

    move-object v10, v12

    goto/16 :goto_3

    :cond_11
    move-object v12, v10

    move-object v10, v9

    move v9, v3

    goto/16 :goto_1

    :cond_12
    move-object v3, v9

    goto/16 :goto_4
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1456
    const-string v0, "CREATE TABLE lastRecord (userID INTEGER, apkName TEXT, wifiSended INTEGER, wifiRecved INTEGER, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netSended INTEGER, netRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID, apkName))"

    .line 1466
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1469
    const-string v0, "CREATE TABLE dayRecord (userID INTEGER, sended INTEGER, recved INTEGER, updateDate INTERGER, PRIMARY KEY (userID, updateDate))"

    .line 1474
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1477
    const-string v0, "CREATE TABLE daySoftRecord (userID INTEGER, apkName TEXT, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID , apkName , updateDate))"

    .line 1485
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1489
    const-string v0, "CREATE INDEX lastRecord_userID ON lastRecord(userID)"

    .line 1492
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1495
    const-string v0, "CREATE INDEX lastRecord_userID_apkName ON lastRecord(userID, apkName)"

    .line 1498
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1501
    const-string v0, "CREATE INDEX dayRecord_userID_updateDate ON dayRecord(userID, updateDate)"

    .line 1504
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string v0, "CREATE INDEX daySoftRecord_userID_apkName_updateDate ON daySoftRecord(userID, apkName, updateDate)"

    .line 1511
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1513
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    const-string v0, "DROP TABLE IF EXISTS tb_chip"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1520
    const-string v0, "DROP TABLE IF EXISTS tb_day"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1521
    const-string v0, "DROP TABLE IF EXISTS tb_hour"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    const-string v0, "DROP TABLE IF EXISTS tb_latest"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    .line 1525
    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/z;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    const/4 v0, 0x7

    if-ne p3, v0, :cond_2

    .line 1528
    const-string v0, "CREATE TABLE daySoftRecord (userID INTEGER, apkName TEXT, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID , apkName , updateDate))"

    .line 1537
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1540
    const-string v0, "CREATE INDEX daySoftRecord_userID_apkName_updateDate ON daySoftRecord(userID, apkName, updateDate)"

    .line 1545
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1546
    :cond_2
    if-le p2, p3, :cond_0

    .line 1549
    const-string v0, "DROP TABLE IF EXISTS lastRecord"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1550
    const-string v0, "DROP TABLE IF EXISTS dayRecord"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1551
    const-string v0, "DROP TABLE IF EXISTS daySoftRecord"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0, p1}, Lcom/keniu/security/traffic/z;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
