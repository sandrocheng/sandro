.class public final Lcom/jxphone/b/b/b;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/Comparable;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 16
    if-ltz v0, :cond_0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 21
    :goto_0
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    return v0

    .line 19
    :cond_0
    neg-int v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
