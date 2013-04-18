.class public final Lorg/achartengine/b/d;
.super Ljava/lang/Object;
.source "XYSeries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1817027cad6c1957L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b/d;->d:Ljava/util/List;

    .line 40
    iput-wide v3, p0, Lorg/achartengine/b/d;->e:D

    .line 42
    iput-wide v1, p0, Lorg/achartengine/b/d;->f:D

    .line 44
    iput-wide v3, p0, Lorg/achartengine/b/d;->g:D

    .line 46
    iput-wide v1, p0, Lorg/achartengine/b/d;->h:D

    .line 66
    iput-object p1, p0, Lorg/achartengine/b/d;->b:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/achartengine/b/d;->i:I

    .line 68
    invoke-direct {p0}, Lorg/achartengine/b/d;->h()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/achartengine/b/d;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lorg/achartengine/b/d;->b:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private b(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/achartengine/b/d;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/b/d;->e:D

    .line 99
    iget-wide v0, p0, Lorg/achartengine/b/d;->f:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/b/d;->f:D

    .line 100
    iget-wide v0, p0, Lorg/achartengine/b/d;->g:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/b/d;->g:D

    .line 101
    iget-wide v0, p0, Lorg/achartengine/b/d;->h:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/b/d;->h:D

    .line 102
    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 7
    .parameter

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 141
    iget-object v0, p0, Lorg/achartengine/b/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 142
    iget-wide v5, p0, Lorg/achartengine/b/d;->e:D

    cmpl-double v0, v1, v5

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lorg/achartengine/b/d;->f:D

    cmpl-double v0, v1, v5

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/achartengine/b/d;->g:D

    cmpl-double v0, v3, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/achartengine/b/d;->h:D

    cmpl-double v0, v3, v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0}, Lorg/achartengine/b/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 6

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    const-wide v0, -0x10000000000001L

    .line 79
    iput-wide v2, p0, Lorg/achartengine/b/d;->e:D

    .line 80
    iput-wide v0, p0, Lorg/achartengine/b/d;->f:D

    .line 81
    iput-wide v2, p0, Lorg/achartengine/b/d;->g:D

    .line 82
    iput-wide v0, p0, Lorg/achartengine/b/d;->h:D

    .line 83
    invoke-virtual {p0}, Lorg/achartengine/b/d;->c()I

    move-result v0

    .line 84
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lorg/achartengine/b/d;->a(I)D

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v1}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v4

    .line 87
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/achartengine/b/d;->b(DD)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    iget-object v0, p0, Lorg/achartengine/b/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    invoke-direct {p0}, Lorg/achartengine/b/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(I)D
    .locals 2
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/achartengine/b/d;->i:I

    return v0
.end method

.method public final declared-synchronized a(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lorg/achartengine/b/d;->d:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/achartengine/b/d;->b(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)D
    .locals 2
    .parameter

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/achartengine/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized c()I
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/b/d;->c:Ljava/util/List;

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

.method public final d()D
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/achartengine/b/d;->e:D

    return-wide v0
.end method

.method public final e()D
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/achartengine/b/d;->g:D

    return-wide v0
.end method

.method public final f()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/achartengine/b/d;->f:D

    return-wide v0
.end method

.method public final g()D
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/achartengine/b/d;->h:D

    return-wide v0
.end method
