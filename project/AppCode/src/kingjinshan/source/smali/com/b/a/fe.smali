.class final Lcom/b/a/fe;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field a:Lcom/b/a/fc;


# direct methods
.method constructor <init>(Lcom/b/a/fc;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/b/a/fe;->a:Lcom/b/a/fc;

    .line 616
    return-void
.end method

.method private a(I)Lcom/b/a/dk;
    .locals 1
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/b/a/fe;->a:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/b/a/fe;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/fe;->modCount:I

    .line 628
    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/b/a/fe;->a:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/b/a/fe;->a:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    return v0
.end method
