.class public final Lcom/b/a/fj;
.super Ljava/lang/Object;
.source "RpcUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/ev;Lcom/b/a/ev;)Lcom/b/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-interface {p0}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/fg;)Lcom/b/a/fg;
    .locals 0
    .parameter

    .prologue
    .line 49
    return-object p0
.end method

.method private static a(Lcom/b/a/fg;Ljava/lang/Class;Lcom/b/a/ev;)Lcom/b/a/fg;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/b/a/fk;

    invoke-direct {v0, p1, p2, p0}, Lcom/b/a/fk;-><init>(Ljava/lang/Class;Lcom/b/a/ev;Lcom/b/a/fg;)V

    return-object v0
.end method

.method private static b(Lcom/b/a/ev;Lcom/b/a/ev;)Lcom/b/a/ev;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-interface {p0}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/b/a/fg;)Lcom/b/a/fg;
    .locals 1
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/b/a/fl;

    invoke-direct {v0, p0}, Lcom/b/a/fl;-><init>(Lcom/b/a/fg;)V

    return-object v0
.end method
