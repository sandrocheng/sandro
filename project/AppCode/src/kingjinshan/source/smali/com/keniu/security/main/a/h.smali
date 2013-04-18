.class public final Lcom/keniu/security/main/a/h;
.super Ljava/lang/Object;
.source "MCheckMainModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/l;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/keniu/security/main/a/j;

.field private f:Lcom/keniu/security/main/a/i;

.field private g:Z

.field private h:J

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/keniu/security/main/a/h;->d:I

    .line 19
    iput-object v3, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    .line 20
    iput-object v3, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;

    .line 21
    iput-boolean v2, p0, Lcom/keniu/security/main/a/h;->g:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/main/a/h;->h:J

    .line 23
    iput v2, p0, Lcom/keniu/security/main/a/h;->a:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    .line 26
    iput-object v3, p0, Lcom/keniu/security/main/a/h;->j:Ljava/util/List;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/a/h;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/keniu/security/main/a/h;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/main/a/h;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/main/a/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c(Lcom/keniu/security/main/a/m;)I
    .locals 3
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/main/a/m;

    .line 181
    if-eq p0, p1, :cond_0

    .line 182
    invoke-interface {p0}, Lcom/keniu/security/main/a/m;->d()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 186
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/keniu/security/main/a/h;)J
    .locals 2
    .parameter

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/keniu/security/main/a/h;->h:J

    return-wide v0
.end method

.method private declared-synchronized d(Lcom/keniu/security/main/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/keniu/security/main/a/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/keniu/security/main/a/h;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/keniu/security/main/a/m;)I
    .locals 4
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/h;->c(Lcom/keniu/security/main/a/m;)I

    move-result v0

    .line 194
    sget v1, Lcom/keniu/security/main/a/k;->k:I

    invoke-interface {p1, v1}, Lcom/keniu/security/main/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/main/a/h;->c:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    invoke-interface {v1, p1}, Lcom/keniu/security/main/a/j;->b(Lcom/keniu/security/main/a/m;)V

    .line 198
    iget-object v1, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    iget-object v2, p0, Lcom/keniu/security/main/a/h;->c:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x64

    iget v3, p0, Lcom/keniu/security/main/a/h;->d:I

    div-int/2addr v0, v3

    invoke-interface {v1, v2, v0}, Lcom/keniu/security/main/a/j;->a(Ljava/lang/String;I)V

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->b:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/main/a/h;->b:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/ag;

    invoke-direct {v1}, Lcom/keniu/security/main/a/ag;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/x;

    invoke-direct {v1}, Lcom/keniu/security/main/a/x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/p;

    invoke-direct {v1}, Lcom/keniu/security/main/a/p;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/q;

    invoke-direct {v1}, Lcom/keniu/security/main/a/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/af;

    invoke-direct {v1}, Lcom/keniu/security/main/a/af;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/n;

    invoke-direct {v1}, Lcom/keniu/security/main/a/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/a;

    invoke-direct {v1}, Lcom/keniu/security/main/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/u;

    invoke-direct {v1}, Lcom/keniu/security/main/a/u;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/w;

    invoke-direct {v1}, Lcom/keniu/security/main/a/w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/main/a/ab;

    invoke-direct {v1}, Lcom/keniu/security/main/a/ab;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/a/m;

    .line 56
    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->e()V

    .line 58
    iget v2, p0, Lcom/keniu/security/main/a/h;->d:I

    invoke-interface {v0}, Lcom/keniu/security/main/a/m;->d()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keniu/security/main/a/h;->d:I

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/keniu/security/main/a/j;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->j:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/main/a/h;->g:Z

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/a/h;->a:I

    .line 96
    iput-object p1, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    .line 97
    new-instance v0, Lcom/keniu/security/main/a/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/a/i;-><init>(Lcom/keniu/security/main/a/h;)V

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;

    .line 98
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/i;->start()V

    .line 101
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 102
    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param2"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/keniu/security/main/a/m;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/keniu/security/main/a/h;->g:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/h;->c(Lcom/keniu/security/main/a/m;)I

    move-result v0

    .line 210
    invoke-interface {p1}, Lcom/keniu/security/main/a/m;->d()I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    .line 212
    iget-object v1, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    iget-object v2, p0, Lcom/keniu/security/main/a/h;->c:Ljava/lang/String;

    iget v3, p0, Lcom/keniu/security/main/a/h;->d:I

    div-int/2addr v0, v3

    invoke-interface {v1, v2, v0}, Lcom/keniu/security/main/a/j;->a(Ljava/lang/String;I)V

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/keniu/security/main/a/m;)I
    .locals 1
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/h;->d(Lcom/keniu/security/main/a/m;)V

    .line 232
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    invoke-interface {v0, p1}, Lcom/keniu/security/main/a/j;->a(Lcom/keniu/security/main/a/m;)V

    .line 233
    iget v0, p0, Lcom/keniu/security/main/a/h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/main/a/h;->a:I

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/keniu/security/main/a/h;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized e()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    invoke-interface {v0}, Lcom/keniu/security/main/a/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized f()V
    .locals 4

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/keniu/security/main/a/h;->g:Z

    if-nez v1, :cond_0

    .line 127
    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param2"

    const-string v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param1"

    const-string v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget v2, Lcom/keniu/security/main/bn;->f:I

    const-string v3, "param3"

    invoke-virtual {v0, v2, v3, v1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;

    iget-boolean v1, p0, Lcom/keniu/security/main/a/h;->g:Z

    invoke-interface {v0, v1}, Lcom/keniu/security/main/a/j;->b(Z)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->f:Lcom/keniu/security/main/a/i;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/a/h;->e:Lcom/keniu/security/main/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
