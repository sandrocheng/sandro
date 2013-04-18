.class final Lcom/b/a/dx;
.super Lcom/b/a/dy;
.source "GeneratedMessage.java"


# instance fields
.field private final k:Ljava/lang/reflect/Method;

.field private final l:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1690
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/dy;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1692
    iget-object v0, p0, Lcom/b/a/dx;->a:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/b/a/cp;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dx;->k:Ljava/lang/reflect/Method;

    .line 1694
    iget-object v0, p0, Lcom/b/a/dx;->a:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dx;->l:Ljava/lang/reflect/Method;

    .line 1696
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/dk;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 1704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    invoke-super {p0, p1}, Lcom/b/a/dy;->a(Lcom/b/a/dk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1706
    iget-object v3, p0, Lcom/b/a/dx;->l:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1708
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dk;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/b/a/dx;->l:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/b/a/dy;->a(Lcom/b/a/dk;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dn;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 1714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    invoke-super {p0, p1}, Lcom/b/a/dy;->a(Lcom/b/a/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1716
    iget-object v3, p0, Lcom/b/a/dx;->l:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1718
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dn;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/b/a/dx;->l:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/b/a/dy;->a(Lcom/b/a/dn;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/dn;ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/b/a/dx;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/b/a/dy;->a(Lcom/b/a/dn;ILjava/lang/Object;)V

    .line 1738
    return-void
.end method

.method public final b(Lcom/b/a/dn;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/b/a/dx;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/dk;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/b/a/dy;->b(Lcom/b/a/dn;Ljava/lang/Object;)V

    .line 1742
    return-void
.end method
