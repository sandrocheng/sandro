.class public Lcom/tencent/feedback/common/f$c;
.super Ljava/lang/Object;
.source "MonitorDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/tencent/feedback/common/f$c;->a:J

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;JJ)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const-string v0, "MonitorDAO.deleteSpeedMonitorSources() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 122
    if-nez p0, :cond_0

    .line 123
    const-string v0, "MonitorDAO.deleteSpeedMonitorSources() context is null arg"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 124
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput v2, v1, v0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "MonitorDAO.queryMonitorTesSource() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, "queryMonitorTesSource() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput v2, v1, v0

    const/16 v6, 0x64

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v13}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IIIJILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 72
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/g;->a([B)Ljava/lang/Object;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    const-class v5, Lcom/tencent/feedback/b/b;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    const-class v5, Lcom/tencent/feedback/b/b;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/feedback/b/b;

    .line 83
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/tencent/feedback/b/b;->a(J)V

    .line 84
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    const-string v0, "query have error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there are error datas ,should be remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 104
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 107
    :cond_5
    invoke-static {p0, v4}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 110
    :cond_6
    const-string v0, "MonitorDAO.queryMonitorTesSource() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move-object v0, v2

    .line 112
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/feedback/b/b;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 29
    const-string v0, "MonitorDAO.insert() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    const-string v0, "MonitorDAO.insert() have null args"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move v0, v6

    .line 47
    :goto_0
    return v0

    .line 37
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/common/a/a;

    const/4 v1, 0x6

    const/16 v2, 0x9

    invoke-virtual {p1}, Lcom/tencent/feedback/b/b;->b()J

    move-result-wide v3

    invoke-static {p1}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    .line 39
    invoke-static {p0, v0}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/a/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    const-string v1, "MonitorDAO.insert() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    const-string v0, "insert fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    const-string v0, "MonitorDAO.insert() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MonitorDAO.insert() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    throw v0
.end method
