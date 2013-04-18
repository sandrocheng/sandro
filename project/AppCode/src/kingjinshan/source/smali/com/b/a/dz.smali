.class final Lcom/b/a/dz;
.super Lcom/b/a/dy;
.source "GeneratedMessage.java"


# instance fields
.field private final k:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1789
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/dy;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1791
    iget-object v0, p0, Lcom/b/a/dz;->a:Ljava/lang/Class;

    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dz;->k:Ljava/lang/reflect/Method;

    .line 1792
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/b/a/dz;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/dz;->k:Ljava/lang/reflect/Method;

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
    .line 1820
    iget-object v0, p0, Lcom/b/a/dz;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ew;

    return-object p0
.end method

.method public final a(Lcom/b/a/dn;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1812
    invoke-direct {p0, p3}, Lcom/b/a/dz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/b/a/dy;->a(Lcom/b/a/dn;ILjava/lang/Object;)V

    .line 1813
    return-void
.end method

.method public final b(Lcom/b/a/dn;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1816
    invoke-direct {p0, p2}, Lcom/b/a/dz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/b/a/dy;->b(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 1817
    return-void
.end method
