.class final Lcom/keniu/security/process/c;
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
    .line 127
    iput-object p1, p0, Lcom/keniu/security/process/c;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/process/c;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/keniu/security/process/c;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    const v1, 0x7f0b0530

    invoke-virtual {v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/keniu/security/process/c;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/c;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method
