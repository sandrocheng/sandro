.class final Lcom/keniu/security/util/am;
.super Ljava/lang/Object;
.source "MyAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

.field final synthetic b:Lcom/keniu/security/util/MyAlertController;

.field final synthetic c:Lcom/keniu/security/util/ai;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController$RecycleListView;Lcom/keniu/security/util/MyAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/keniu/security/util/am;->c:Lcom/keniu/security/util/ai;

    iput-object p2, p0, Lcom/keniu/security/util/am;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    iput-object p3, p0, Lcom/keniu/security/util/am;->b:Lcom/keniu/security/util/MyAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Lcom/keniu/security/util/am;->c:Lcom/keniu/security/util/ai;

    iget-object v0, v0, Lcom/keniu/security/util/ai;->C:[Z

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/keniu/security/util/am;->c:Lcom/keniu/security/util/ai;

    iget-object v0, v0, Lcom/keniu/security/util/ai;->C:[Z

    iget-object v1, p0, Lcom/keniu/security/util/am;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/am;->c:Lcom/keniu/security/util/ai;

    iget-object v0, v0, Lcom/keniu/security/util/ai;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/keniu/security/util/am;->b:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->j(Lcom/keniu/security/util/MyAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/util/am;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 943
    return-void
.end method
