.class public abstract Lcom/c/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final d:Lcom/c/a/a/ab;


# instance fields
.field private final e:Lcom/c/a/a/ad;

.field private final f:Ljava/util/concurrent/FutureTask;

.field private volatile g:Lcom/c/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    .line 163
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/c/a/a/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 166
    new-instance v0, Lcom/c/a/a/ae;

    invoke-direct {v0}, Lcom/c/a/a/ae;-><init>()V

    sput-object v0, Lcom/c/a/a/x;->b:Ljava/util/concurrent/ThreadFactory;

    .line 174
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/c/a/a/x;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v7, Lcom/c/a/a/x;->b:Ljava/util/concurrent/ThreadFactory;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/c/a/a/x;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 181
    new-instance v0, Lcom/c/a/a/ab;

    invoke-direct {v0}, Lcom/c/a/a/ab;-><init>()V

    sput-object v0, Lcom/c/a/a/x;->d:Lcom/c/a/a/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-object v0, Lcom/c/a/a/ac;->a:Lcom/c/a/a/ac;

    iput-object v0, p0, Lcom/c/a/a/x;->g:Lcom/c/a/a/ac;

    .line 217
    new-instance v0, Lcom/c/a/a/y;

    invoke-direct {v0, p0}, Lcom/c/a/a/y;-><init>(Lcom/c/a/a/x;)V

    iput-object v0, p0, Lcom/c/a/a/x;->e:Lcom/c/a/a/ad;

    .line 232
    new-instance v0, Lcom/c/a/a/z;

    iget-object v1, p0, Lcom/c/a/a/x;->e:Lcom/c/a/a/ad;

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/z;-><init>(Lcom/c/a/a/x;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/c/a/a/x;->f:Ljava/util/concurrent/FutureTask;

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/c/a/a/x;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    sget-object v0, Lcom/c/a/a/ac;->c:Lcom/c/a/a/ac;

    iput-object v0, p0, Lcom/c/a/a/x;->g:Lcom/c/a/a/ac;

    return-void
.end method

.method protected static varargs b()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method protected static c()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method static synthetic e()Lcom/c/a/a/ab;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/c/a/a/x;->d:Lcom/c/a/a/ab;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Lcom/c/a/a/x;
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/c/a/a/x;->g:Lcom/c/a/a/ac;

    sget-object v1, Lcom/c/a/a/ac;->a:Lcom/c/a/a/ac;

    if-eq v0, v1, :cond_0

    .line 426
    sget-object v0, Lcom/c/a/a/aa;->a:[I

    iget-object v1, p0, Lcom/c/a/a/x;->g:Lcom/c/a/a/ac;

    invoke-virtual {v1}, Lcom/c/a/a/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    :cond_0
    sget-object v0, Lcom/c/a/a/ac;->b:Lcom/c/a/a/ac;

    iput-object v0, p0, Lcom/c/a/a/x;->g:Lcom/c/a/a/ac;

    .line 439
    iget-object v0, p0, Lcom/c/a/a/x;->e:Lcom/c/a/a/ad;

    iput-object p1, v0, Lcom/c/a/a/ad;->a:[Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/c/a/a/x;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/c/a/a/x;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 444
    return-object p0

    .line 428
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a()Ljava/lang/Object;
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/c/a/a/x;->f:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 373
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
