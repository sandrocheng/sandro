.class final Lcom/keniu/security/software/f;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 436
    iget-object v0, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/APKManagerActivity;->removeDialog(I)V

    .line 437
    iget-object v0, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->h(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 439
    invoke-virtual {v0}, Lcom/keniu/security/d/a;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keniu/security/d/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v0, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/f;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/APKManagerActivity;->removeDialog(I)V

    .line 457
    return-void
.end method
