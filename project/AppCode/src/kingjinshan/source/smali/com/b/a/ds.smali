.class public final Lcom/b/a/ds;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# instance fields
.field final synthetic a:Lcom/b/a/dr;

.field private final b:Ljava/util/Iterator;

.field private c:Ljava/util/Map$Entry;

.field private final d:Z


# direct methods
.method synthetic constructor <init>(Lcom/b/a/dr;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/ds;-><init>(Lcom/b/a/dr;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dr;ZB)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/b/a/ds;->a:Lcom/b/a/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iget-object v0, p0, Lcom/b/a/ds;->a:Lcom/b/a/dr;

    invoke-static {v0}, Lcom/b/a/dr;->a(Lcom/b/a/dr;)Lcom/b/a/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/dh;->h()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ds;->b:Ljava/util/Iterator;

    .line 645
    iget-object v0, p0, Lcom/b/a/ds;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/b/a/ds;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    .line 648
    :cond_0
    iput-boolean p2, p0, Lcom/b/a/ds;->d:Z

    .line 649
    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 653
    :goto_0
    iget-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    invoke-virtual {v0}, Lcom/b/a/cq;->e()I

    move-result v0

    const/high16 v1, 0x2000

    if-ge v0, v1, :cond_2

    .line 654
    iget-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 655
    iget-boolean v1, p0, Lcom/b/a/ds;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/cq;->g()Lcom/b/a/gv;

    move-result-object v1

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/b/a/cq;->e()I

    move-result v1

    iget-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->c(ILcom/b/a/ex;)V

    .line 663
    :goto_1
    iget-object v0, p0, Lcom/b/a/ds;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/b/a/ds;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    goto :goto_1

    .line 666
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ds;->c:Ljava/util/Map$Entry;

    goto :goto_0

    .line 669
    :cond_2
    return-void
.end method
