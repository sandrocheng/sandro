.class final Lcom/b/a/fd;
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
    .line 647
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/b/a/fd;->a:Lcom/b/a/fc;

    .line 649
    return-void
.end method

.method private a(I)Lcom/b/a/dn;
    .locals 1
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/b/a/fd;->a:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/b/a/fd;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/fd;->modCount:I

    .line 661
    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 638
    iget-object v0, p0, Lcom/b/a/fd;->a:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/b/a/fd;->a:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    return v0
.end method
