.class final Lcom/b/a/gn;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field final synthetic b:Lcom/b/a/gl;


# direct methods
.method constructor <init>(Lcom/b/a/gl;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/b/a/gn;->b:Lcom/b/a/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/b/a/gn;->b:Lcom/b/a/gl;

    invoke-static {v0}, Lcom/b/a/gl;->a(Lcom/b/a/gl;)Lcom/b/a/eu;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/eu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/gn;->a:Ljava/util/Iterator;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/b/a/gn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/b/a/gn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/b/a/gn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
