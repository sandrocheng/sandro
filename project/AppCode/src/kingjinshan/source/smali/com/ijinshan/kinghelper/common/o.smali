.class final Lcom/ijinshan/kinghelper/common/o;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Lcom/ijinshan/kinghelper/common/c;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1431
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/common/o;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/o;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/o;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->i(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/o;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->i(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1438
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/o;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->g(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1439
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/o;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;I)V

    .line 1441
    :cond_0
    return-void
.end method
