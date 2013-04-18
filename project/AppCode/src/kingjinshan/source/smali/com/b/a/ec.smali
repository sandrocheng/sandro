.class final Lcom/b/a/ec;
.super Lcom/b/a/eb;
.source "GeneratedMessage.java"


# instance fields
.field private final h:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1753
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/eb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1755
    iget-object v0, p0, Lcom/b/a/ec;->a:Ljava/lang/Class;

    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ec;->h:Ljava/lang/reflect/Method;

    .line 1756
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/b/a/ec;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1768
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ec;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ew;

    check-cast p1, Lcom/b/a/ev;

    invoke-interface {p0, p1}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/b/a/ew;
    .locals 3

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/b/a/ec;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ew;

    return-object p0
.end method

.method public final a(Lcom/b/a/dn;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/b/a/ec;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/b/a/eb;->a(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 1776
    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/b/a/ec;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ew;

    check-cast p2, Lcom/b/a/ev;

    invoke-interface {v0, p2}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0
.end method
