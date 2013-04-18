.class final Lcom/b/a/ea;
.super Lcom/b/a/eb;
.source "GeneratedMessage.java"


# instance fields
.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1657
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/eb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1659
    iget-object v0, p0, Lcom/b/a/ea;->a:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/b/a/cp;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ea;->h:Ljava/lang/reflect/Method;

    .line 1661
    iget-object v0, p0, Lcom/b/a/ea;->a:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ea;->i:Ljava/lang/reflect/Method;

    .line 1663
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/dk;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/b/a/ea;->i:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/b/a/eb;->a(Lcom/b/a/dk;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dn;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/b/a/ea;->i:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/b/a/eb;->a(Lcom/b/a/dn;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dn;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/b/a/ea;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/b/a/eb;->a(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 1681
    return-void
.end method
