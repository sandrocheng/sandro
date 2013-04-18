.class public final Lcom/b/a/gl;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/b/a/eu;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/b/a/eu;


# direct methods
.method public constructor <init>(Lcom/b/a/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/b/a/gl;)Lcom/b/a/eu;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/b/a/i;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->a(I)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/b/a/gn;

    invoke-direct {v0, p0}, Lcom/b/a/gn;-><init>(Lcom/b/a/gl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/b/a/gm;

    invoke-direct {v0, p0, p1}, Lcom/b/a/gm;-><init>(Lcom/b/a/gl;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/gl;->a:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->size()I

    move-result v0

    return v0
.end method
