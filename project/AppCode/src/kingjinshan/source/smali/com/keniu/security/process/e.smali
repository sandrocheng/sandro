.class final Lcom/keniu/security/process/e;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b056c

    const v2, 0x7f0b056b

    .line 157
    const v0, 0x7f0801e7

    if-ne p2, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->c(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->d(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->e(Lcom/keniu/security/process/ProcessManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 167
    :cond_2
    const v0, 0x7f0801e8

    if-ne p2, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->g(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->d(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->h(Lcom/keniu/security/process/ProcessManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/process/e;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->f(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
