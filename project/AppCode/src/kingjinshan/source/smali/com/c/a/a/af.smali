.class public final Lcom/c/a/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/c/a/a/af;


# instance fields
.field a:Landroid/net/ConnectivityManager;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/c/a/a/af;->c:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/c/a/a/af;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/c/a/a/af;->a:Landroid/net/ConnectivityManager;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/c/a/a/af;
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/c/a/a/af;->b:Lcom/c/a/a/af;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/c/a/a/af;

    invoke-direct {v0, p0}, Lcom/c/a/a/af;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/c/a/a/af;->b:Lcom/c/a/a/af;

    .line 35
    :cond_0
    sget-object v0, Lcom/c/a/a/af;->b:Lcom/c/a/a/af;

    return-object v0
.end method
