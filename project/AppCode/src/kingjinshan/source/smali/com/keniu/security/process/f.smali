.class final Lcom/keniu/security/process/f;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b056c

    const v4, 0x7f0b056b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->j(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0801e7

    if-ne v0, v1, :cond_5

    .line 288
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->e(Lcom/keniu/security/process/ProcessManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z

    .line 290
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 294
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/e;->a(Z)V

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 310
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->k(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/process/k;

    iget-object v2, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v3, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/process/ProcessManagerActivity;->c(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/process/k;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z

    .line 301
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    .line 303
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 305
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/e;->a(Z)V

    .line 303
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    goto :goto_2

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->j(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0801e8

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->h(Lcom/keniu/security/process/ProcessManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z

    .line 315
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    .line 317
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 319
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/e;->a(Z)V

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    .line 334
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->k(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/process/k;

    iget-object v2, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v3, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/process/ProcessManagerActivity;->g(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/process/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/process/k;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 324
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;Z)Z

    .line 325
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    .line 327
    :goto_6
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 328
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 329
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/e;->a(Z)V

    .line 327
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/process/f;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/o;

    invoke-virtual {v0}, Lcom/keniu/security/process/o;->notifyDataSetChanged()V

    goto :goto_5
.end method
