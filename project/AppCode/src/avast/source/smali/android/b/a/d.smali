.class Landroid/b/a/d;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Landroid/b/a/a;


# direct methods
.method private constructor <init>(Landroid/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Landroid/b/a/d;->a:Landroid/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/b/a/a;Landroid/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Landroid/b/a/d;-><init>(Landroid/b/a/a;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Landroid/b/a/d;->a:Landroid/b/a/a;

    invoke-static {v0}, Landroid/b/a/a;->a(Landroid/b/a/a;)Landroid/b/a/e;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/b/a/e;->a(Landroid/b/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 386
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/b/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/b/a/e;->a(Landroid/b/a/e;Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method
