.class final Lcom/b/a/em;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/b/a/dj;


# instance fields
.field private final a:Lcom/b/a/er;

.field private final b:I

.field private final c:Lcom/b/a/gq;

.field private final d:Z

.field private final e:Z


# direct methods
.method synthetic constructor <init>(Lcom/b/a/er;ILcom/b/a/gq;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/em;-><init>(Lcom/b/a/er;ILcom/b/a/gq;ZZB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/er;ILcom/b/a/gq;ZZB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/b/a/em;->a:Lcom/b/a/er;

    .line 571
    iput p2, p0, Lcom/b/a/em;->b:I

    .line 572
    iput-object p3, p0, Lcom/b/a/em;->c:Lcom/b/a/gq;

    .line 573
    iput-boolean p4, p0, Lcom/b/a/em;->d:Z

    .line 574
    iput-boolean p5, p0, Lcom/b/a/em;->e:Z

    .line 575
    return-void
.end method

.method static synthetic a(Lcom/b/a/em;)Z
    .locals 1
    .parameter

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/b/a/em;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/b/a/em;)Lcom/b/a/gq;
    .locals 1
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/b/a/em;->c:Lcom/b/a/gq;

    return-object v0
.end method

.method private c(Lcom/b/a/em;)I
    .locals 2
    .parameter

    .prologue
    .line 614
    iget v0, p0, Lcom/b/a/em;->b:I

    iget v1, p1, Lcom/b/a/em;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/b/a/ey;Lcom/b/a/ex;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 610
    check-cast p1, Lcom/b/a/eh;

    invoke-virtual {p1}, Lcom/b/a/eh;->g()Lcom/b/a/eh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 561
    check-cast p1, Lcom/b/a/em;

    iget v0, p0, Lcom/b/a/em;->b:I

    iget v1, p1, Lcom/b/a/em;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/b/a/em;->b:I

    return v0
.end method

.method public final g()Lcom/b/a/gv;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/b/a/em;->c:Lcom/b/a/gq;

    invoke-virtual {v0}, Lcom/b/a/gq;->a()Lcom/b/a/gv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/b/a/gq;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/b/a/em;->c:Lcom/b/a/gq;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/b/a/em;->d:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/b/a/em;->e:Z

    return v0
.end method

.method public final v()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/b/a/em;->a:Lcom/b/a/er;

    return-object v0
.end method
