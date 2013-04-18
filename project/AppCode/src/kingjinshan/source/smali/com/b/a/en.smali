.class public final Lcom/b/a/en;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# instance fields
.field private final a:Lcom/b/a/ex;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/b/a/ex;

.field private final d:Lcom/b/a/em;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/em;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/en;-><init>(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/em;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ex;Ljava/lang/Object;Lcom/b/a/ex;Lcom/b/a/em;B)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    if-nez p1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    invoke-virtual {p4}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v0

    sget-object v1, Lcom/b/a/gq;->k:Lcom/b/a/gq;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_1
    iput-object p1, p0, Lcom/b/a/en;->a:Lcom/b/a/ex;

    .line 644
    iput-object p2, p0, Lcom/b/a/en;->b:Ljava/lang/Object;

    .line 645
    iput-object p3, p0, Lcom/b/a/en;->c:Lcom/b/a/ex;

    .line 646
    iput-object p4, p0, Lcom/b/a/en;->d:Lcom/b/a/em;

    .line 647
    return-void
.end method

.method static synthetic a(Lcom/b/a/en;)Lcom/b/a/em;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/b/a/en;->d:Lcom/b/a/em;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/en;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/b/a/en;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/b/a/en;->c:Lcom/b/a/ex;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/en;)Lcom/b/a/ex;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/b/a/en;->c:Lcom/b/a/ex;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/b/a/en;->a:Lcom/b/a/ex;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/b/a/en;->d:Lcom/b/a/em;

    invoke-virtual {v0}, Lcom/b/a/em;->e()I

    move-result v0

    return v0
.end method
