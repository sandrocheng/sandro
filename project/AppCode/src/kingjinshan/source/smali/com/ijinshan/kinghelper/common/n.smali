.class final Lcom/ijinshan/kinghelper/common/n;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/n;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/n;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 527
    return-void
.end method
