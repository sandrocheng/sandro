.class Landroid/b/a/e;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Landroid/b/a/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/b/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 342
    iget v0, p0, Landroid/b/a/e;->b:I

    iget-object v1, p0, Landroid/b/a/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/b/a/e;->a:Ljava/lang/String;

    iget v1, p0, Landroid/b/a/e;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/b/a/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/b/a/e;->a()Z

    move-result v0

    return v0
.end method
