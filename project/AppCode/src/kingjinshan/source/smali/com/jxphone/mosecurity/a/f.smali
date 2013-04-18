.class public final Lcom/jxphone/mosecurity/a/f;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/jxphone/mosecurity/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/jxphone/mosecurity/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    sget-object v0, Lcom/jxphone/mosecurity/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 13
    return-void
.end method
