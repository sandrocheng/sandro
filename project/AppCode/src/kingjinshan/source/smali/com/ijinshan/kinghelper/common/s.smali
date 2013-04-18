.class final Lcom/ijinshan/kinghelper/common/s;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Lcom/ijinshan/kinghelper/firewall/core/u;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/r;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/r;)V
    .locals 0
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/s;->a:Lcom/ijinshan/kinghelper/common/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/s;->a:Lcom/ijinshan/kinghelper/common/r;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->g(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1336
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    :cond_0
    return-void
.end method
