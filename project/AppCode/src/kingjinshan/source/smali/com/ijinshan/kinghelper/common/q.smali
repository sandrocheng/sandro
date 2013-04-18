.class final Lcom/ijinshan/kinghelper/common/q;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1477
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/common/q;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/q;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/q;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1482
    return-void
.end method
