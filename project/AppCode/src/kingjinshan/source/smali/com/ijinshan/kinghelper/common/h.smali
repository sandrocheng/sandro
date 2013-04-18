.class final Lcom/ijinshan/kinghelper/common/h;
.super Landroid/os/Handler;
.source "PickListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/h;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/h;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->notifyDataSetChanged()V

    .line 279
    :cond_0
    return-void
.end method
