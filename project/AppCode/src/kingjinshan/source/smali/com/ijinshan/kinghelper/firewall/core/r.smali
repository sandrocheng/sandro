.class public final Lcom/ijinshan/kinghelper/firewall/core/r;
.super Ljava/lang/Object;
.source "GetLocationThread.java"


# static fields
.field private static b:Lcom/ijinshan/kinghelper/firewall/core/r;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/r;->b:Lcom/ijinshan/kinghelper/firewall/core/r;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/r;->a:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/r;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/core/r;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/r;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/ijinshan/kinghelper/firewall/core/r;
    .locals 1
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/core/r;->b:Lcom/ijinshan/kinghelper/firewall/core/r;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/r;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/core/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/r;->b:Lcom/ijinshan/kinghelper/firewall/core/r;

    .line 27
    :cond_0
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/core/r;->b:Lcom/ijinshan/kinghelper/firewall/core/r;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/core/u;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/s;

    invoke-direct {v0, p0, p3}, Lcom/ijinshan/kinghelper/firewall/core/s;-><init>(Lcom/ijinshan/kinghelper/firewall/core/r;Lcom/ijinshan/kinghelper/firewall/core/u;)V

    .line 50
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/r;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/t;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/ijinshan/kinghelper/firewall/core/t;-><init>(Lcom/ijinshan/kinghelper/firewall/core/r;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method
