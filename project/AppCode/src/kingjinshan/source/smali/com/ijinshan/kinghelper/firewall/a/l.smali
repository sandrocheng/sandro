.class final Lcom/ijinshan/kinghelper/firewall/a/l;
.super Ljava/lang/Object;
.source "FirewallRuleManager.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/a/l;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    sget v0, Lcom/keniu/security/monitor/a;->q:I

    if-ne p1, v0, :cond_0

    .line 127
    check-cast p2, Ljava/lang/Integer;

    .line 128
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 129
    check-cast p3, Lcom/keniu/security/f/w;

    .line 130
    invoke-virtual {p3}, Lcom/keniu/security/f/w;->i()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/keniu/security/f/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/e;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 139
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 140
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
