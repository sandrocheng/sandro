.class public final Lcom/google/b/e;
.super Lcom/google/b/b;


# instance fields
.field private final a:Lcom/google/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/b/b;-><init>()V

    new-instance v0, Lcom/google/b/a/e;

    invoke-direct {v0}, Lcom/google/b/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/b/h;
    .locals 1

    iget-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/b/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/h;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0}, Lcom/google/b/a/e;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/b/b;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/b/d;->a:Lcom/google/b/d;

    :cond_0
    iget-object v1, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-static {p1}, Lcom/google/b/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/google/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/b/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/b/e;
    .locals 1

    iget-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/b/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/b/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/b/e;

    iget-object v0, p1, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    iget-object v1, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, v1}, Lcom/google/b/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/b/e;->a:Lcom/google/b/a/e;

    invoke-virtual {v0}, Lcom/google/b/a/e;->hashCode()I

    move-result v0

    return v0
.end method
