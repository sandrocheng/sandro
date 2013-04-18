.class final Lcom/b/a/dl;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/b/a/du;


# instance fields
.field final synthetic a:Lcom/b/a/ev;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/b/a/ev;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/b/a/dl;->a:Lcom/b/a/ev;

    iput p2, p0, Lcom/b/a/dl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/cq;
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/b/a/dl;->a:Lcom/b/a/ev;

    invoke-interface {v0}, Lcom/b/a/ev;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->f()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/b/a/dl;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cq;

    return-object p0
.end method
