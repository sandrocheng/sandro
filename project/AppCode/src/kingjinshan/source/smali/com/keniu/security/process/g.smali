.class final Lcom/keniu/security/process/g;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, p3}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;I)I

    .line 345
    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->l(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/d/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->k(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/process/k;

    iget-object v3, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/process/ProcessManagerActivity;->m(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    invoke-direct {v2, v3, v0}, Lcom/keniu/security/process/k;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/d/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    iget-object v0, p0, Lcom/keniu/security/process/g;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/process/o;

    invoke-virtual {p0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    goto :goto_0

    .line 357
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_1
.end method
