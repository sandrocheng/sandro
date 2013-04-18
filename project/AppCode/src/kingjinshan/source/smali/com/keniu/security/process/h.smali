.class final Lcom/keniu/security/process/h;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 374
    iget v1, v0, Lcom/keniu/security/d/e;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->n(Lcom/keniu/security/process/ProcessManagerActivity;)I

    .line 376
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->l(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/d/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/m;->d(Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/keniu/security/process/o;

    .line 384
    invoke-virtual {v1, p3}, Lcom/keniu/security/process/o;->a(I)V

    .line 386
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->p(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 387
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->d()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;J)V

    .line 388
    const/4 v0, 0x1

    return v0

    .line 377
    :cond_1
    iget v1, v0, Lcom/keniu/security/d/e;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->o(Lcom/keniu/security/process/ProcessManagerActivity;)I

    .line 380
    iget-object v1, p0, Lcom/keniu/security/process/h;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->l(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/d/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/m;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
