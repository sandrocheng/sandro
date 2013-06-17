.class public final La/a/r;
.super Ljava/util/AbstractList;

# interfaces
.implements La/a/n;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:La/a/n;


# direct methods
.method public constructor <init>(La/a/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, La/a/r;->a:La/a/n;

    return-void
.end method

.method static synthetic a(La/a/r;)La/a/n;
    .locals 1

    iget-object v0, p0, La/a/r;->a:La/a/n;

    return-object v0
.end method


# virtual methods
.method public final a(I)La/a/c;
    .locals 1

    iget-object v0, p0, La/a/r;->a:La/a/n;

    invoke-interface {v0, p1}, La/a/n;->a(I)La/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/a/c;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/r;->a:La/a/n;

    invoke-interface {v0, p1}, La/a/n;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, La/a/t;

    invoke-direct {v0, p0}, La/a/t;-><init>(La/a/r;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, La/a/s;

    invoke-direct {v0, p0, p1}, La/a/s;-><init>(La/a/r;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, La/a/r;->a:La/a/n;

    invoke-interface {v0}, La/a/n;->size()I

    move-result v0

    return v0
.end method
