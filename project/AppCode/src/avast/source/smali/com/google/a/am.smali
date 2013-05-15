.class public Lcom/google/a/am;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/google/a/z;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/google/a/z;


# direct methods
.method public constructor <init>(Lcom/google/a/z;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/a/am;->a:Lcom/google/a/z;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/a/am;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/a/am;->a:Lcom/google/a/z;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/a/am;->a:Lcom/google/a/z;

    invoke-interface {v0, p1}, Lcom/google/a/z;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(I)Lcom/google/a/c;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/a/am;->a:Lcom/google/a/z;

    invoke-interface {v0, p1}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/a/am;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/google/a/ao;

    invoke-direct {v0, p0}, Lcom/google/a/ao;-><init>(Lcom/google/a/am;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/google/a/an;

    invoke-direct {v0, p0, p1}, Lcom/google/a/an;-><init>(Lcom/google/a/am;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/a/am;->a:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->size()I

    move-result v0

    return v0
.end method
