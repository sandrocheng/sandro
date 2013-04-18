.class public final Lcom/ijinshan/kinghelper/firewall/a/e;
.super Ljava/lang/Object;
.source "FirewallRuleManager.java"


# static fields
.field public static final a:Ljava/lang/String; = "FirewallRuleManager"

.field public static final b:Z = true

.field public static final c:Ljava/lang/Object; = null

.field public static final d:Ljava/lang/String; = "firewall_user_rules.db"

.field public static final e:Ljava/lang/String; = "firewall_sys_rules.db"

.field private static final f:I = 0x1

.field private static g:Landroid/content/Context;

.field private static h:Landroid/database/sqlite/SQLiteDatabase;

.field private static i:Landroid/database/sqlite/SQLiteDatabase;

.field private static j:Lcom/ijinshan/kinghelper/firewall/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static declared-synchronized a(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1498
    const-class v6, Lcom/ijinshan/kinghelper/firewall/a/e;

    monitor-enter v6

    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(IILjava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1504
    const-class v0, Lcom/ijinshan/kinghelper/firewall/a/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1507
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    const-string v2, "rule_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1511
    const/4 v2, 0x1

    if-ne p5, v2, :cond_1

    .line 1512
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1514
    :goto_0
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const v4, 0x7f0b00de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1517
    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 1518
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const v4, 0x7f0b00df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1520
    :cond_0
    const-string v4, "matcher"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v2, "owner"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v2, "desc"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v2, "apply_mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    const-string v2, "match_mode"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1527
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "datable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1529
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    :try_start_2
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1533
    monitor-exit v0

    return v1

    .line 1531
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1504
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method

.method public static declared-synchronized a(J)I
    .locals 5
    .parameter

    .prologue
    .line 1466
    const-class v0, Lcom/ijinshan/kinghelper/firewall/a/e;

    monitor-enter v0

    .line 1467
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1469
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1470
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "datable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1472
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    :try_start_2
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1476
    monitor-exit v0

    return v1

    .line 1474
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1466
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1417
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized a(ILjava/lang/String;Ljava/lang/String;II)J
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1434
    const-class v0, Lcom/ijinshan/kinghelper/firewall/a/e;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1435
    const-string v2, "rule_type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1436
    const-string v2, "apply_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    const-string v2, "match_mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 1441
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1443
    :goto_0
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const v4, 0x7f0b00de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1445
    const/4 v4, 0x2

    if-eq p0, v4, :cond_0

    .line 1446
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const v4, 0x7f0b00df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1448
    :cond_0
    const-string v4, "matcher"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v2, "owner"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v2, "desc"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1455
    :try_start_1
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "datable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1457
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    :try_start_2
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1461
    monitor-exit v0

    return-wide v1

    .line 1459
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1434
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method private static a(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1030
    const-string v3, "apply_mode=? or apply_mode =?"

    .line 1032
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    if-eqz p0, :cond_0

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/a/g;->j:[Ljava/lang/String;

    :goto_0
    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/a/g;->k:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(ZI)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1010
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1014
    if-eqz p0, :cond_0

    .line 1015
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    .line 1023
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const-string v7, "_id DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1041
    const-string v3, "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)"

    .line 1045
    const-string v8, "regx = 2 and match_mode=? and matcher=substr(?,1,length(matcher))  and ( apply_mode=? or apply_mode =?)"

    .line 1052
    const-string v0, "FirewallRuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySystemRuleByNumber selection="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    if-eqz p0, :cond_3

    .line 1055
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object p1, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    move-object v4, v0

    .line 1065
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1068
    :cond_0
    if-eqz v0, :cond_1

    .line 1069
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_1
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const-string v7, "length(matcher) desc"

    move-object v3, v8

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1076
    :cond_2
    return-object v0

    .line 1060
    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object p1, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    move-object v4, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .parameter

    .prologue
    .line 50
    sput-object p0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b0110

    const v3, 0x7f0b010d

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 264
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2

    .line 210
    const-string v2, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin macht user rule:phoneNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 217
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    neg-int v3, v3

    iput v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 219
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 221
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 224
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    if-ne v3, v5, :cond_1

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    const-string v1, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found BLACK in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",rule="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 230
    goto :goto_0

    .line 233
    :cond_1
    const-string v3, "FirewallRuleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found white or normal in user rule,number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",rule="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 237
    goto/16 :goto_0

    .line 242
    :cond_2
    const-string v1, "106"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 243
    goto/16 :goto_0

    .line 247
    :cond_3
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v6

    .line 248
    goto/16 :goto_0

    .line 251
    :cond_4
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v6

    .line 252
    goto/16 :goto_0

    .line 254
    :cond_5
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 255
    iput v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 256
    const/4 v1, 0x3

    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 257
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 259
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 260
    const/4 v1, 0x1

    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 261
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 262
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b0110

    const v7, 0x7f0b010a

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 386
    :goto_0
    return-object v0

    .line 315
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {p2, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_2

    .line 321
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 324
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    neg-int v3, v3

    iput v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 326
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 328
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 331
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    if-ne v3, v5, :cond_1

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 334
    const-string v1, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found BLACK in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",rule="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 337
    goto :goto_0

    .line 340
    :cond_1
    const-string v3, "FirewallRuleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found white or normal in user rule,number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",rule="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 344
    goto :goto_0

    .line 349
    :cond_2
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 350
    goto :goto_0

    .line 353
    :cond_3
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v6

    .line 354
    goto/16 :goto_0

    .line 356
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->h()Ljava/lang/String;

    move-result-object v1

    .line 360
    const-string v2, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mache user key,body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",userKeyWord="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v1, p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    const-string v0, "FirewallRuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found in user rules keyword macher,body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",userKeyWord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 372
    const/4 v2, 0x0

    iput v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 373
    const/4 v2, 0x3

    iput v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 374
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 376
    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 377
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 378
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 380
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    goto/16 :goto_0

    .line 386
    :cond_5
    invoke-static {v0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x0

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    .line 158
    :cond_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v1, 0x0

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    :cond_1
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    const/4 v1, 0x0

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 82
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/keniu/security/f/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    const-string v3, "firewall_sys_rules.db"

    invoke-static {}, Lcom/keniu/security/f/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    :cond_2
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    .line 94
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/m;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/a/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/a/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    :cond_3
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->j:Lcom/ijinshan/kinghelper/firewall/a/l;

    if-nez v1, :cond_4

    .line 99
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/l;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/l;-><init>()V

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->j:Lcom/ijinshan/kinghelper/firewall/a/l;

    .line 100
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    sget v2, Lcom/keniu/security/monitor/a;->q:I

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/a/e;->j:Lcom/ijinshan/kinghelper/firewall/a/l;

    const v4, 0x4fffffff

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 104
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 875
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 876
    const-string v3, "id=?"

    .line 877
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sptype"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_1

    .line 880
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 888
    :goto_0
    return v0

    .line 885
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 888
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 831
    :goto_0
    return v0

    .line 813
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 814
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 821
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_3

    .line 826
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    const/4 v1, 0x1

    .line 829
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    .line 817
    :cond_1
    sget-object v0, Lcom/ijinshan/kinghelper/a/e;->c:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1553
    const-string v3, "matcher= ? and match_mode=? and rule_type=?"

    .line 1556
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p0, v4, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1559
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_1

    .line 1563
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v9

    .line 1564
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1566
    :goto_1
    return v0

    :cond_0
    move v1, v8

    .line 1563
    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IJ)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1572
    const-string v0, "matcher= ? and match_mode=? and rule_type=?"

    .line 1575
    const-wide/16 v3, -0x1

    cmp-long v1, p2, v3

    if-eqz v1, :cond_0

    .line 1578
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    .line 1588
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1591
    if-eqz v0, :cond_2

    .line 1592
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v8

    .line 1593
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1595
    :goto_2
    return v0

    .line 1583
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object p0, v1, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 1592
    goto :goto_1

    :cond_2
    move v0, v9

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 1601
    const-string v0, "matcher= ? and match_mode=? and rule_type=?"

    .line 1604
    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_0

    .line 1607
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    .line 1617
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1620
    if-eqz v0, :cond_2

    .line 1621
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v9

    .line 1622
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1624
    :goto_2
    return v0

    .line 1612
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_1
    move v1, v8

    .line 1621
    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1406
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 693
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 719
    :goto_0
    return v0

    .line 696
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 700
    if-eqz v1, :cond_2

    .line 701
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 703
    iget v2, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    if-ne v2, v4, :cond_1

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 706
    const-string v1, "FirewallRuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found BLACK in user rule,number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 708
    goto :goto_0

    .line 711
    :cond_1
    const-string v2, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found white or normal in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v5

    .line 715
    goto :goto_0

    :cond_2
    move v0, v5

    .line 719
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 918
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->i(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 919
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->b:I

    return v0
.end method

.method public static b(I)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rule_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1229
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static b(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1113
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1117
    if-eqz p0, :cond_0

    .line 1118
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    move-object v4, v0

    .line 1128
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1123
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    move-object v4, v0

    goto :goto_0
.end method

.method private static b(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1246
    const-string v3, "matcher=? and (apply_mode=? or apply_mode =? ) and match_mode =? "

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    move-object v4, v0

    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 1251
    :cond_0
    if-nez v0, :cond_1

    .line 1254
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 1266
    :cond_1
    :goto_1
    return-object v0

    .line 1246
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    move-object v4, v0

    goto :goto_0

    .line 1259
    :cond_3
    const-string v3, "match_mode =? and (apply_mode=? or apply_mode =? )"

    if-eqz p0, :cond_9

    new-array v0, v10, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    move-object v4, v0

    :goto_2
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v2

    :cond_4
    const-string v3, "matcher"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const-string v3, "_id =? "

    new-array v4, v8, [Ljava/lang/String;

    aput-object v5, v4, v11

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v2

    .line 1260
    :cond_8
    if-nez v0, :cond_1

    .line 1262
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto/16 :goto_1

    .line 1259
    :cond_9
    new-array v0, v10, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    move-object v4, v0

    goto/16 :goto_2

    .line 1262
    :cond_a
    const-string v3, "match_mode=? and matcher=substr(?,1,length(matcher)) and (apply_mode=? or apply_mode =?)"

    if-eqz p0, :cond_b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v11

    aput-object v0, v1, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    move-object v4, v1

    :goto_5
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v11

    aput-object v0, v1, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    move-object v4, v1

    goto :goto_5

    :cond_c
    move-object v1, v2

    goto/16 :goto_3

    :cond_d
    move-object v5, v2

    goto/16 :goto_4
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 p0, 0x0

    .line 569
    :goto_0
    return-object p0

    .line 403
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    const-string v3, "regx = 1 and match_mode = ? and matcher = ? and (apply_mode=? or apply_mode =?)"

    const-string v8, "regx = 2 and match_mode=? and matcher=substr(?,1,length(matcher))  and ( apply_mode=? or apply_mode =?)"

    const-string v0, "FirewallRuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySystemRuleByNumber selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v4, v0

    :goto_1
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "length(matcher) desc"

    move-object v3, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 405
    :cond_3
    if-eqz v0, :cond_7

    .line 406
    const-string v1, "FirewallRuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySystemRuleByNumber("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 410
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 412
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 414
    const-string p1, "FirewallRuleManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found in system rules,number="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ",rule="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v1

    .line 418
    goto/16 :goto_0

    .line 404
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v4, v0

    goto/16 :goto_1

    .line 419
    :cond_5
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 421
    const-string p1, "FirewallRuleManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found in system rules,number="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ",rule="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 425
    sget-object p1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const-string p2, "mg_sms_spused"

    invoke-static {p1, p2, p0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 428
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 433
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 439
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    if-eqz p2, :cond_9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v4, v0

    :goto_2
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_b

    .line 441
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 442
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 443
    iget-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 446
    const-string p0, "FirewallRuleManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found in system rules keyword macher,body="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",rule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object p0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const p1, 0x7f0b010a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    move-object p0, v1

    .line 453
    goto/16 :goto_0

    .line 439
    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v4, v0

    goto :goto_2

    .line 456
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_b
    if-nez p2, :cond_11

    .line 461
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(Landroid/content/Context;)V

    .line 462
    invoke-static {p0, p1}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/core/f;

    move-result-object p0

    .line 464
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 465
    iget-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 468
    :cond_c
    iget-boolean p0, p0, Lcom/ijinshan/kinghelper/firewall/core/f;->a:Z

    if-eqz p0, :cond_d

    .line 469
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 492
    :cond_d
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    if-eqz p2, :cond_f

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    move-object v4, p0

    :goto_3
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 493
    if-eqz p0, :cond_11

    .line 494
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 496
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 497
    const-string v1, "baibaibaibaibai"

    iget-object v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/ijinshan/kinghelper/a/i;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 499
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 501
    const-string p0, "FirewallRuleManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found in white system rules keyword macher,body="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",rule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 492
    :cond_f
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    move-object v4, p0

    goto :goto_3

    .line 508
    :cond_10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object p0, p1

    .line 528
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    if-eqz p2, :cond_13

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    move-object v4, p1

    :goto_4
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 529
    if-eqz p1, :cond_15

    .line 530
    :cond_12
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 532
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object p2

    .line 533
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/a/i;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 534
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 536
    const-string p1, "FirewallRuleManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found in system rules keyword macher,body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ",rule="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object p0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    const p1, 0x7f0b010a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    move-object p0, p2

    .line 543
    goto/16 :goto_0

    .line 528
    :cond_13
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    move-object v4, p1

    goto :goto_4

    .line 546
    :cond_14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_15
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 728
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    .line 753
    :goto_0
    return-object v0

    .line 731
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 735
    if-eqz v1, :cond_2

    .line 736
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 738
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 739
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 741
    const-string v1, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found BLACK in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 743
    goto :goto_0

    .line 746
    :cond_1
    const-string v2, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found white or normal in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 750
    goto :goto_0

    :cond_2
    move-object v0, v5

    .line 753
    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 846
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 848
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sptype"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    :cond_0
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/k;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/k;-><init>()V

    .line 856
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    .line 858
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->b:Ljava/lang/String;

    .line 860
    const-string v2, "desc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->c:Ljava/lang/String;

    .line 863
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 867
    :cond_1
    if-eqz v0, :cond_2

    .line 868
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_2
    return-object v8
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/m;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/a/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/a/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 115
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;J)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 1630
    const-string v0, "matcher= ? and match_mode=? and rule_type=?"

    .line 1633
    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_0

    .line 1636
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    .line 1648
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1651
    if-eqz v0, :cond_2

    .line 1652
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v9

    .line 1653
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1655
    :goto_2
    return v0

    .line 1642
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_1
    move v1, v8

    .line 1652
    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2
.end method

.method private static c(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 1134
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1138
    if-eqz p0, :cond_0

    .line 1139
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    move-object v4, v0

    .line 1149
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    move-object v4, v0

    goto :goto_0
.end method

.method private static c(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1271
    const-string v3, "matcher=? and (apply_mode=? or apply_mode =? ) and match_mode =? "

    .line 1276
    if-eqz p0, :cond_1

    .line 1279
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    move-object v4, v0

    .line 1289
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1291
    if-eqz v0, :cond_0

    .line 1292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 1297
    :cond_0
    return-object v0

    .line 1284
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    move-object v4, v0

    goto :goto_0
.end method

.method static synthetic c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b010d

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 762
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    .line 803
    :goto_0
    return-object v0

    .line 765
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_2

    .line 770
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 772
    iget v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    if-ne v3, v4, :cond_1

    .line 773
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 775
    const-string v1, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found BLACK in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 777
    goto :goto_0

    .line 780
    :cond_1
    const-string v2, "FirewallRuleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found white or normal in user rule,number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 784
    goto :goto_0

    .line 790
    :cond_2
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v5

    .line 791
    goto :goto_0

    .line 794
    :cond_3
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 795
    const/4 v1, 0x0

    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 796
    iput v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 797
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 799
    iput v2, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 800
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 801
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 802
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    goto :goto_0
.end method

.method private static c(I)Lcom/ijinshan/kinghelper/firewall/a/k;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 893
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 894
    const-string v3, "id=?"

    .line 895
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sptype"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_1

    .line 898
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/k;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/k;-><init>()V

    .line 901
    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    .line 903
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->b:Ljava/lang/String;

    .line 905
    const-string v2, "desc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->c:Ljava/lang/String;

    .line 908
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 914
    :goto_0
    return-object v0

    .line 911
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v2

    .line 914
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 990
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x0

    .line 997
    :goto_0
    return-object v0

    .line 993
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/i;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 994
    if-nez v0, :cond_1

    .line 995
    const-string v0, ""

    goto :goto_0

    .line 997
    :cond_1
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(I)I
    .locals 2
    .parameter

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 1236
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1237
    if-eqz v1, :cond_0

    .line 1238
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1241
    :cond_0
    return v0
.end method

.method private static d(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1155
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1159
    if-eqz p0, :cond_0

    .line 1160
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    .line 1170
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    goto :goto_0
.end method

.method private static d(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1303
    .line 1304
    const-string v3, "match_mode =? and (apply_mode=? or apply_mode =? )"

    .line 1308
    if-eqz p0, :cond_5

    .line 1309
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    move-object v4, v0

    .line 1319
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1324
    if-eqz v0, :cond_7

    .line 1325
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    .line 1327
    :cond_0
    const-string v3, "matcher"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1329
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1333
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1337
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    .line 1338
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1342
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const-string v3, "_id =? "

    new-array v4, v8, [Ljava/lang/String;

    aput-object v5, v4, v9

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_3

    .line 1346
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v2

    .line 1354
    :cond_4
    return-object v0

    .line 1314
    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    move-object v4, v0

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    move-object v5, v2

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1001
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->i(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 1002
    if-nez v0, :cond_0

    .line 1003
    const-string v0, ""

    .line 1005
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static declared-synchronized e(I)I
    .locals 5
    .parameter

    .prologue
    .line 1481
    const-class v0, Lcom/ijinshan/kinghelper/firewall/a/e;

    monitor-enter v0

    .line 1482
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1484
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rule_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "datable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1487
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1489
    :try_start_2
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1491
    monitor-exit v0

    return v1

    .line 1489
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1481
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1084
    const-string v3, "_id>? and _id<? and match_mode=? and ((matcher=substr(?,1,length(matcher))and regx = 2) or (regx =1 and matcher= ?)) and (apply_mode=? or apply_mode =?)"

    .line 1098
    const-string v0, "FirewallRuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySystemRuleByNumber selection="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x15f90

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x3

    aput-object p0, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    const/4 v0, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1106
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const-string v7, "length(matcher) desc"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static e(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1176
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1180
    if-eqz p0, :cond_0

    .line 1181
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    .line 1191
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    goto :goto_0
.end method

.method private static e(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1359
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 1397
    :cond_0
    :goto_0
    return-object v0

    .line 1366
    :cond_1
    const-string v3, "match_mode=? and matcher=substr(?,1,length(matcher)) and (apply_mode=? or apply_mode =?)"

    .line 1374
    if-eqz p0, :cond_2

    .line 1375
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    aput-object v0, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    move-object v4, v1

    .line 1388
    :goto_1
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_0

    .line 1391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 1393
    goto :goto_0

    .line 1381
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    aput-object v0, v1, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    move-object v4, v1

    goto :goto_1
.end method

.method private static f(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1197
    const-string v3, "match_mode=? and (apply_mode=? or apply_mode =?)"

    .line 1201
    if-eqz p0, :cond_0

    .line 1202
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    .line 1212
    :goto_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1207
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    move-object v4, v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1538
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1539
    if-lez v0, :cond_0

    move v0, v2

    .line 1549
    :goto_0
    return v0

    .line 1544
    :cond_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/a/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1546
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    move v0, v2

    .line 1547
    goto :goto_0

    .line 1549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Z)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1218
    const-string v3, "apply_mode=? or apply_mode =?"

    .line 1220
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    if-eqz p0, :cond_0

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/a/g;->j:[Ljava/lang/String;

    :goto_0
    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/a/g;->k:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1660
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->i(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 1661
    const/4 v1, 0x0

    .line 1662
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->e:I

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1664
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/k;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 923
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->i(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 924
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->b:I

    if-eqz v1, :cond_2

    .line 925
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/j;->b:I

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v3, "id=?"

    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sptype"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/k;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/k;-><init>()V

    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->a:I

    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->b:Ljava/lang/String;

    const-string v2, "desc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/k;->c:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 926
    :goto_0
    return-object v0

    .line 925
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 926
    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 930
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    .line 986
    :cond_0
    :goto_0
    return-object v0

    .line 933
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/i;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;

    move-result-object v0

    .line 934
    if-nez v0, :cond_0

    .line 937
    new-instance v8, Lcom/ijinshan/kinghelper/firewall/a/j;

    invoke-direct {v8}, Lcom/ijinshan/kinghelper/firewall/a/j;-><init>()V

    .line 940
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p0, v4, v10

    .line 941
    const-string v3, "regx = 1 and matcher = ?"

    .line 945
    :try_start_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 947
    if-eqz v9, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 948
    :cond_2
    const-string v3, "regx = 2 and matcher=substr(?, 1, length(matcher))"

    .line 951
    if-eqz v9, :cond_3

    .line 952
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_3
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "datable"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "length(matcher) desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 965
    :goto_1
    const-string v1, ""

    .line 966
    const-string v2, ""

    .line 967
    if-eqz v0, :cond_5

    .line 968
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 969
    const-string v1, "owner"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 971
    const-string v2, "sptype"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 973
    const-string v3, "apply_mode"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 975
    const-string v4, "rule_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object v11, v3

    move v3, v2

    move-object v2, v11

    .line 978
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    .line 979
    :goto_3
    iput v2, v8, Lcom/ijinshan/kinghelper/firewall/a/j;->b:I

    .line 982
    iput-object v1, v8, Lcom/ijinshan/kinghelper/firewall/a/j;->c:Ljava/lang/String;

    .line 983
    iput-object v0, v8, Lcom/ijinshan/kinghelper/firewall/a/j;->d:Ljava/lang/String;

    .line 984
    iput v3, v8, Lcom/ijinshan/kinghelper/firewall/a/j;->e:I

    .line 985
    invoke-static {p0, v8}, Lcom/ijinshan/kinghelper/firewall/a/i;->a(Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/j;)V

    move-object v0, v8

    .line 986
    goto/16 :goto_0

    .line 959
    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_4

    :cond_4
    move v3, v10

    move v4, v10

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_2

    :cond_5
    move-object v0, v2

    move v3, v10

    move v2, v10

    goto :goto_3

    :cond_6
    move-object v0, v9

    goto :goto_1
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1401
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1410
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/e;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
