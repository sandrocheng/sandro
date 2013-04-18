.class final Lcom/keniu/security/software/d;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/keniu/security/software/d;->a:Lcom/keniu/security/software/APKManagerActivity;

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
    const/4 v2, 0x1

    .line 202
    iget-object v0, p0, Lcom/keniu/security/software/d;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, p3}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;I)I

    .line 203
    iget-object v0, p0, Lcom/keniu/security/software/d;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/d;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->h(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 205
    iget v1, v0, Lcom/keniu/security/d/a;->e:I

    if-eq v1, v2, :cond_0

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/d;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0, v2}, Lcom/keniu/security/software/APKManagerActivity;->showDialog(I)V

    goto :goto_0
.end method
