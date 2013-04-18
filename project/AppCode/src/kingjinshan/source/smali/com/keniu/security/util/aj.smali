.class final Lcom/keniu/security/util/aj;
.super Landroid/widget/ArrayAdapter;
.source "MyAlertController.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

.field final synthetic b:Lcom/keniu/security/util/ai;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/ai;Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/keniu/security/util/aj;->b:Lcom/keniu/security/util/ai;

    iput-object p4, p0, Lcom/keniu/security/util/aj;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    const v0, 0x7f0300e4

    const v1, 0x7f08033b

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/keniu/security/util/aj;->b:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->C:[Z

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/keniu/security/util/aj;->b:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->C:[Z

    aget-boolean v1, v1, p1

    .line 853
    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/keniu/security/util/aj;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 857
    :cond_0
    return-object v0
.end method
