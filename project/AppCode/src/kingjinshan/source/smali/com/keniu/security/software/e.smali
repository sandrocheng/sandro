.class final Lcom/keniu/security/software/e;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/d/a;

.field final synthetic b:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;Lcom/keniu/security/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    iput-object p2, p0, Lcom/keniu/security/software/e;->a:Lcom/keniu/security/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    iget-object v0, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->i(Lcom/keniu/security/software/APKManagerActivity;)J

    move-result-wide v0

    .line 401
    iget-object v2, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v3

    add-int/2addr v2, v3

    .line 403
    iget-object v3, p0, Lcom/keniu/security/software/e;->a:Lcom/keniu/security/d/a;

    iget v3, v3, Lcom/keniu/security/d/a;->e:I

    if-ne v3, v10, :cond_0

    .line 404
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->l(Lcom/keniu/security/software/APKManagerActivity;)I

    .line 405
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->h(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 410
    :goto_0
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v4, p0, Lcom/keniu/security/software/e;->a:Lcom/keniu/security/d/a;

    invoke-virtual {v4}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;J)J

    .line 411
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/keniu/security/software/e;->a:Lcom/keniu/security/d/a;

    invoke-virtual {v4}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 413
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->o(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    const v5, 0x7f0b0578

    invoke-virtual {v4, v5}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v6}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v7}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v6}, Lcom/keniu/security/software/APKManagerActivity;->i(Lcom/keniu/security/software/APKManagerActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->f(Lcom/keniu/security/software/APKManagerActivity;)Lcom/keniu/security/software/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/software/k;->notifyDataSetChanged()V

    .line 419
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v4, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    const v5, 0x7f0b057b

    invoke-virtual {v4, v5}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v6}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v6

    sub-int/2addr v2, v6

    iget-object v6, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v6}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    iget-object v2, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->i(Lcom/keniu/security/software/APKManagerActivity;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    iget-object v0, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0, v9}, Lcom/keniu/security/software/APKManagerActivity;->removeDialog(I)V

    .line 430
    return-void

    .line 407
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->n(Lcom/keniu/security/software/APKManagerActivity;)I

    .line 408
    iget-object v3, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/software/e;->b:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->h(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method
