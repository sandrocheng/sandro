.class final Lcom/keniu/security/software/a;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b057a

    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    :goto_0
    return-void

    :cond_1
    move v1, v3

    move v2, v3

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 106
    invoke-virtual {v0}, Lcom/keniu/security/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    add-int/lit8 v0, v2, 0x1

    .line 104
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 111
    :cond_2
    if-gtz v2, :cond_3

    .line 112
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    const v2, 0x7f0b0564

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/software/a;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/APKManagerActivity;->showDialog(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method
