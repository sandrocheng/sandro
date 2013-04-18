.class public abstract Lcom/b/a/dr;
.super Lcom/b/a/dk;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/b/a/dt;


# instance fields
.field private final a:Lcom/b/a/dh;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 545
    invoke-static {}, Lcom/b/a/dh;->a()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    .line 546
    return-void
.end method

.method protected constructor <init>(Lcom/b/a/dq;)V
    .locals 1
    .parameter

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 551
    invoke-static {p1}, Lcom/b/a/dq;->a(Lcom/b/a/dq;)Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    .line 552
    return-void
.end method

.method static synthetic a(Lcom/b/a/dr;)Lcom/b/a/dh;
    .locals 1
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    return-object v0
.end method

.method private d(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 754
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/dr;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    return-void
.end method

.method private d(Lcom/b/a/ed;)V
    .locals 3
    .parameter

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/dr;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" which does not match message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/dr;->C()Lcom/b/a/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    return-void
.end method

.method private h()Lcom/b/a/ds;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Lcom/b/a/ds;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/b/a/ds;-><init>(Lcom/b/a/dr;Z)V

    return-object v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->k()I

    move-result v0

    return v0
.end method

.method private j()Ljava/util/Map;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final J()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    return v0
.end method

.method protected final K()Lcom/b/a/ds;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Lcom/b/a/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/ds;-><init>(Lcom/b/a/dr;Z)V

    return-object v0
.end method

.method protected final L()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->j()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 745
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/cq;)V

    .line 747
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/b/a/dk;->a(Lcom/b/a/cq;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/ed;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/ed;)V

    .line 614
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/ed;->b(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 626
    invoke-super {p0}, Lcom/b/a/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/cq;)V

    .line 705
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    .line 707
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dk;->a(Lcom/b/a/cq;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/ed;)Z
    .locals 2
    .parameter

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/ed;)V

    .line 572
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method public final a_()Ljava/util/Map;
    .locals 2

    .prologue
    .line 696
    invoke-static {p0}, Lcom/b/a/dk;->a(Lcom/b/a/dk;)Ljava/util/Map;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v1}, Lcom/b/a/dh;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 698
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/ed;)I
    .locals 2
    .parameter

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/ed;)V

    .line 580
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 713
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/cq;)V

    .line 715
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 720
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    .line 728
    :cond_0
    :goto_0
    return-object v0

    .line 722
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 728
    :cond_2
    invoke-super {p0, p1}, Lcom/b/a/dk;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 734
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/cq;)V

    .line 736
    iget-object v0, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    .line 738
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dk;->c(Lcom/b/a/cq;)I

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/b/a/ed;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/b/a/dr;->d(Lcom/b/a/ed;)V

    .line 590
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/b/a/dr;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v1

    .line 592
    if-nez v1, :cond_2

    .line 593
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 595
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v1, v2, :cond_1

    .line 597
    invoke-virtual {p1}, Lcom/b/a/ed;->b()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/ed;->a(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_2
    invoke-static {p1, v1}, Lcom/b/a/ed;->a(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
