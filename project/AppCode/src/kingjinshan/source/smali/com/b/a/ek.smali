.class public final Lcom/b/a/ek;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# instance fields
.field final synthetic a:Lcom/b/a/ej;

.field private final b:Ljava/util/Iterator;

.field private c:Ljava/util/Map$Entry;

.field private final d:Z


# direct methods
.method synthetic constructor <init>(Lcom/b/a/ej;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/ek;-><init>(Lcom/b/a/ej;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ej;ZB)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/b/a/ek;->a:Lcom/b/a/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/b/a/ek;->a:Lcom/b/a/ej;

    invoke-static {v0}, Lcom/b/a/ej;->a(Lcom/b/a/ej;)Lcom/b/a/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/dh;->h()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ek;->b:Ljava/util/Iterator;

    .line 212
    iget-object v0, p0, Lcom/b/a/ek;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/b/a/ek;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    .line 215
    :cond_0
    iput-boolean p2, p0, Lcom/b/a/ek;->d:Z

    .line 216
    return-void
.end method

.method private a(ILcom/b/a/n;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    :goto_0
    iget-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/em;

    invoke-virtual {v0}, Lcom/b/a/em;->e()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/em;

    .line 222
    iget-boolean v1, p0, Lcom/b/a/ek;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/em;->g()Lcom/b/a/gv;

    move-result-object v1

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/b/a/em;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/b/a/em;->e()I

    move-result v1

    iget-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p2, v1, v0}, Lcom/b/a/n;->c(ILcom/b/a/ex;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/b/a/ek;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/b/a/ek;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    goto :goto_1

    .line 233
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ek;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 236
    :cond_2
    return-void
.end method
