.class public Lcom/google/a/q;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# instance fields
.field final synthetic a:Lcom/google/a/p;

.field private final b:Ljava/util/Iterator;

.field private c:Ljava/util/Map$Entry;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/google/a/p;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/a/q;->a:Lcom/google/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/google/a/q;->a:Lcom/google/a/p;

    invoke-static {v0}, Lcom/google/a/p;->a(Lcom/google/a/p;)Lcom/google/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/i;->e()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/q;->b:Ljava/util/Iterator;

    .line 214
    iget-object v0, p0, Lcom/google/a/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/a/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    .line 217
    :cond_0
    iput-boolean p2, p0, Lcom/google/a/q;->d:Z

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/p;ZLcom/google/a/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/google/a/q;-><init>(Lcom/google/a/p;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/a/e;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    :goto_0
    iget-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/s;

    invoke-virtual {v0}, Lcom/google/a/s;->a()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/s;

    .line 224
    iget-boolean v1, p0, Lcom/google/a/q;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/a/s;->c()Lcom/google/a/aw;

    move-result-object v1

    sget-object v2, Lcom/google/a/aw;->i:Lcom/google/a/aw;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/a/s;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/google/a/s;->a()I

    move-result v1

    iget-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p2, v1, v0}, Lcom/google/a/e;->c(ILcom/google/a/aa;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/google/a/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/a/q;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/a/i;->a(Lcom/google/a/k;Ljava/lang/Object;Lcom/google/a/e;)V

    goto :goto_1

    .line 235
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/q;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 238
    :cond_2
    return-void
.end method
