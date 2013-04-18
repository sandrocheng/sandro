.class final Lcom/b/a/fk;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/b/a/fg;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/b/a/ev;

.field final synthetic c:Lcom/b/a/fg;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/b/a/ev;Lcom/b/a/fg;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/b/a/fk;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/b/a/fk;->b:Lcom/b/a/ev;

    iput-object p3, p0, Lcom/b/a/fk;->c:Lcom/b/a/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/b/a/ev;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/b/a/fk;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/b/a/fk;->c:Lcom/b/a/fg;

    invoke-interface {v1, v0}, Lcom/b/a/fg;->a(Ljava/lang/Object;)V

    .line 82
    return-void

    .line 79
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/a/fk;->b:Lcom/b/a/ev;

    invoke-static {v0, p1}, Lcom/b/a/fj;->a(Lcom/b/a/ev;Lcom/b/a/ev;)Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    check-cast p1, Lcom/b/a/ev;

    :try_start_0
    iget-object v0, p0, Lcom/b/a/fk;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ev;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/b/a/fk;->c:Lcom/b/a/fg;

    invoke-interface {v1, v0}, Lcom/b/a/fg;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/a/fk;->b:Lcom/b/a/ev;

    invoke-static {v0, p1}, Lcom/b/a/fj;->a(Lcom/b/a/ev;Lcom/b/a/ev;)Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0
.end method
