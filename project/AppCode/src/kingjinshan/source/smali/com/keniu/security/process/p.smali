.class final Lcom/keniu/security/process/p;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/o;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/o;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/keniu/security/process/p;->a:Lcom/keniu/security/process/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 955
    check-cast p1, Landroid/widget/CheckBox;

    .line 956
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    iget-object v1, p0, Lcom/keniu/security/process/p;->a:Lcom/keniu/security/process/o;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/o;->b(I)Lcom/keniu/security/d/e;

    move-result-object v0

    .line 958
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    .line 959
    iget-object v1, p0, Lcom/keniu/security/process/p;->a:Lcom/keniu/security/process/o;

    iget-object v1, v1, Lcom/keniu/security/process/o;->c:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/b/c;->a(Ljava/lang/String;)Z

    .line 960
    iget-object v1, p0, Lcom/keniu/security/process/p;->a:Lcom/keniu/security/process/o;

    iget-object v1, v1, Lcom/keniu/security/process/o;->c:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    .line 961
    return-void
.end method
