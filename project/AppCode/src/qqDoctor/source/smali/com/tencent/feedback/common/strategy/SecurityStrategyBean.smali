.class public Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
.super Ljava/lang/Object;
.source "SecurityStrategyBean.java"


# static fields
.field public static final DEFAULT_ENCRYALGORITHM:I = -0x1

.field public static final DEFAULT_ENCRYKEY:Ljava/lang/String; = "*^@K#K@!"

.field public static final DEFAULT_PUBENCRYKEY:Ljava/lang/String; = "S(@L@L@)"

.field public static final DEFAULT_ZIPALGORITHM:I = -0x1


# instance fields
.field private encryAlgorithm:I

.field private encryKey:Ljava/lang/String;

.field private pubEncryKey:Ljava/lang/String;

.field private zipAlgorithm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "*^@K#K@!"

    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I

    .line 16
    const-string v0, "S(@L@L@)"

    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I

    return-void
.end method


# virtual methods
.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    monitor-enter p0

    if-nez p1, :cond_0

    move v0, v1

    .line 92
    :goto_0
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    :try_start_0
    const-class v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    const-class v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    .line 77
    iget v2, v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I

    iget v3, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    iget v0, v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I

    iget v2, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_4

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 92
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncryAlgorithm()I
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPubEncryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getZipAlgorithm()I
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEncryAlgorithm(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEncryKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPubEncryKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setZipAlgorithm(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encryKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "encryAlgorithm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->encryAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pubEncryKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->pubEncryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zipAlgorithm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->zipAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
