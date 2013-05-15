.class public Lcom/google/analytics/tracking/android/w;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bk;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static j:Lcom/google/analytics/tracking/android/w;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/analytics/tracking/android/j;

.field private volatile d:Lcom/google/analytics/tracking/android/l;

.field private e:I

.field private f:Z

.field private g:Lcom/google/analytics/tracking/android/k;

.field private h:Landroid/os/Handler;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->f:Z

    .line 42
    new-instance v0, Lcom/google/analytics/tracking/android/x;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/x;-><init>(Lcom/google/analytics/tracking/android/w;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/w;->g:Lcom/google/analytics/tracking/android/k;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->i:Z

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/w;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    return v0
.end method

.method public static a()Lcom/google/analytics/tracking/android/w;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/analytics/tracking/android/w;->j:Lcom/google/analytics/tracking/android/w;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/w;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/w;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/w;->j:Lcom/google/analytics/tracking/android/w;

    .line 60
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/w;->j:Lcom/google/analytics/tracking/android/w;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/w;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/y;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/y;-><init>(Lcom/google/analytics/tracking/android/w;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    .line 94
    iget v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/w;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4
    .parameter

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 173
    const-string v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    .line 174
    iput p1, p0, Lcom/google/analytics/tracking/android/w;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->T:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 180
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->i:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 183
    :cond_2
    iput p1, p0, Lcom/google/analytics/tracking/android/w;->e:I

    .line 184
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->i:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/analytics/tracking/android/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/w;->b:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->d:Lcom/google/analytics/tracking/android/l;

    if-nez v0, :cond_0

    .line 115
    iput-object p2, p0, Lcom/google/analytics/tracking/android/w;->d:Lcom/google/analytics/tracking/android/l;

    .line 116
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->f:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/l;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/w;->e:I

    if-lez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/w;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_3

    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->e(Ljava/lang/String;)I

    .line 205
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/w;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_3
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized b()Lcom/google/analytics/tracking/android/j;
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->c:Lcom/google/analytics/tracking/android/j;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/bh;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/w;->g:Lcom/google/analytics/tracking/android/k;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/w;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/bh;-><init>(Lcom/google/analytics/tracking/android/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/w;->c:Lcom/google/analytics/tracking/android/j;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->h:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/w;->e()V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->c:Lcom/google/analytics/tracking/android/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->d:Lcom/google/analytics/tracking/android/l;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/w;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->S:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 167
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->d:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/l;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
