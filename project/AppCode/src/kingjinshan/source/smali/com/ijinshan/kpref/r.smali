.class final Lcom/ijinshan/kpref/r;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/r;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ijinshan/kpref/r;)I
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ijinshan/kpref/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/ijinshan/kpref/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    iget v0, p0, Lcom/ijinshan/kpref/r;->a:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->a:I

    if-ne v0, v1, :cond_2

    .line 101
    iget v0, p0, Lcom/ijinshan/kpref/r;->b:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->b:I

    if-ne v0, v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v0, p0, Lcom/ijinshan/kpref/r;->b:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/ijinshan/kpref/r;->a:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kpref/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/ijinshan/kpref/r;->a:I

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kpref/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ijinshan/kpref/r;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/kpref/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/ijinshan/kpref/r;->b:I

    return p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 92
    check-cast p1, Lcom/ijinshan/kpref/r;

    iget-object v0, p0, Lcom/ijinshan/kpref/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/ijinshan/kpref/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ijinshan/kpref/r;->a:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ijinshan/kpref/r;->b:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/ijinshan/kpref/r;->b:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ijinshan/kpref/r;->a:I

    iget v1, p1, Lcom/ijinshan/kpref/r;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
