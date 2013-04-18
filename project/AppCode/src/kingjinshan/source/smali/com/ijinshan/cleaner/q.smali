.class final Lcom/ijinshan/cleaner/q;
.super Landroid/os/Handler;
.source "CleanRubEngine.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/p;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/p;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/ijinshan/cleaner/q;->a:Lcom/ijinshan/cleaner/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/ijinshan/cleaner/q;->a:Lcom/ijinshan/cleaner/p;

    iget-object v0, v0, Lcom/ijinshan/cleaner/p;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->b(Lcom/ijinshan/cleaner/o;)Z

    .line 393
    :cond_0
    return-void
.end method
