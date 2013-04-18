.class final Lcom/ijinshan/software/recommand/d;
.super Ljava/lang/Object;
.source "HotTopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/HotTopActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/software/recommand/HotTopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    new-instance v0, Lcom/ijinshan/software/recommand/g;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/d;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-direct {v0, v1}, Lcom/ijinshan/software/recommand/g;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    :cond_0
    return-void
.end method
