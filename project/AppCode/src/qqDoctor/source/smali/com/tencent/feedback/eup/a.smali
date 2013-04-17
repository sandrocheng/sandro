.class public final Lcom/tencent/feedback/eup/a;
.super Ljava/util/LinkedList;
.source "BoundedLinkedList.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/feedback/eup/a;->a:I

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/feedback/eup/a;->a:I

    .line 21
    iput p1, p0, Lcom/tencent/feedback/eup/a;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/feedback/eup/a;->a:I

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->removeFirst()Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/feedback/eup/a;->a:I

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->removeFirst()Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget v1, p0, Lcom/tencent/feedback/eup/a;->a:I

    sub-int/2addr v0, v1

    .line 52
    if-lez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/feedback/eup/a;->removeRange(II)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/feedback/eup/a;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
