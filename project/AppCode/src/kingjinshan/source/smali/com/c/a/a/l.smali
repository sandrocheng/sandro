.class public final Lcom/c/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/c/a/a/d;


# direct methods
.method public constructor <init>(Lcom/c/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a/ag;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 807
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 809
    invoke-virtual {p1}, Lcom/c/a/a/ag;->f()I

    move-result v0

    .line 810
    iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->i(Lcom/c/a/a/d;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->j(Lcom/c/a/a/d;)Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->k(Lcom/c/a/a/d;)Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->l(Lcom/c/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    :cond_0
    return-void
.end method
