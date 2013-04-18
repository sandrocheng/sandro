.class public final Lorg/achartengine/b/c;
.super Ljava/lang/Object;
.source "XYMultipleSeriesDataset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0xd4402ca88aa2f71L


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(ILorg/achartengine/b/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)V
    .locals 1
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lorg/achartengine/b/d;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()[Lorg/achartengine/b/d;
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/b/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Lorg/achartengine/b/d;
    .locals 1
    .parameter

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/achartengine/b/d;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
