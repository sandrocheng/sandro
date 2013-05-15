.class public abstract Lcom/avast/android/generic/util/an;
.super Ljava/lang/Object;
.source "UserTask.java"


# static fields
.field private static final a:Ljava/util/concurrent/BlockingQueue;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final d:Lcom/avast/android/generic/util/as;


# instance fields
.field private final e:Lcom/avast/android/generic/util/av;

.field private final f:Ljava/util/concurrent/FutureTask;

.field private volatile g:Lcom/avast/android/generic/util/at;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0xf

    .line 135
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/avast/android/generic/util/an;->a:Ljava/util/concurrent/BlockingQueue;

    .line 138
    new-instance v0, Lcom/avast/android/generic/util/ao;

    invoke-direct {v0}, Lcom/avast/android/generic/util/ao;-><init>()V

    sput-object v0, Lcom/avast/android/generic/util/an;->b:Ljava/util/concurrent/ThreadFactory;

    .line 146
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/avast/android/generic/util/an;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/avast/android/generic/util/an;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/avast/android/generic/util/an;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 153
    new-instance v0, Lcom/avast/android/generic/util/as;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/util/as;-><init>(Lcom/avast/android/generic/util/ao;)V

    sput-object v0, Lcom/avast/android/generic/util/an;->d:Lcom/avast/android/generic/util/as;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sget-object v0, Lcom/avast/android/generic/util/at;->a:Lcom/avast/android/generic/util/at;

    iput-object v0, p0, Lcom/avast/android/generic/util/an;->g:Lcom/avast/android/generic/util/at;

    .line 183
    new-instance v0, Lcom/avast/android/generic/util/ap;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/util/ap;-><init>(Lcom/avast/android/generic/util/an;)V

    iput-object v0, p0, Lcom/avast/android/generic/util/an;->e:Lcom/avast/android/generic/util/av;

    .line 190
    new-instance v0, Lcom/avast/android/generic/util/aq;

    iget-object v1, p0, Lcom/avast/android/generic/util/an;->e:Lcom/avast/android/generic/util/av;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/util/aq;-><init>(Lcom/avast/android/generic/util/an;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/avast/android/generic/util/an;->f:Ljava/util/concurrent/FutureTask;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/util/an;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/avast/android/generic/util/an;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/util/an;->a(Ljava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/avast/android/generic/util/at;->c:Lcom/avast/android/generic/util/at;

    iput-object v0, p0, Lcom/avast/android/generic/util/an;->g:Lcom/avast/android/generic/util/at;

    .line 417
    return-void
.end method

.method static synthetic c()Lcom/avast/android/generic/util/as;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/avast/android/generic/util/an;->d:Lcom/avast/android/generic/util/as;

    return-object v0
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public varargs b([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/avast/android/generic/util/an;
    .locals 2
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/util/an;->g:Lcom/avast/android/generic/util/at;

    sget-object v1, Lcom/avast/android/generic/util/at;->a:Lcom/avast/android/generic/util/at;

    if-eq v0, v1, :cond_0

    .line 377
    sget-object v0, Lcom/avast/android/generic/util/ar;->a:[I

    iget-object v1, p0, Lcom/avast/android/generic/util/an;->g:Lcom/avast/android/generic/util/at;

    invoke-virtual {v1}, Lcom/avast/android/generic/util/at;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 388
    :cond_0
    sget-object v0, Lcom/avast/android/generic/util/at;->b:Lcom/avast/android/generic/util/at;

    iput-object v0, p0, Lcom/avast/android/generic/util/an;->g:Lcom/avast/android/generic/util/at;

    .line 390
    invoke-virtual {p0}, Lcom/avast/android/generic/util/an;->a()V

    .line 392
    iget-object v0, p0, Lcom/avast/android/generic/util/an;->e:Lcom/avast/android/generic/util/av;

    iput-object p1, v0, Lcom/avast/android/generic/util/av;->b:[Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/avast/android/generic/util/an;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/avast/android/generic/util/an;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 395
    return-object p0

    .line 379
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
