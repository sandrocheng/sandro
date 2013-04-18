.class final Lcom/keniu/security/software/c;
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
    .line 133
    iput-object p1, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0220

    const v4, 0x7f0b021f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    if-ne v0, v2, :cond_5

    .line 143
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->c(Lcom/keniu/security/software/APKManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 147
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/a;->b(Z)V

    .line 144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v3}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;Z)Z

    .line 183
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->f(Lcom/keniu/security/software/APKManagerActivity;)Lcom/keniu/security/software/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/software/k;->notifyDataSetChanged()V

    .line 184
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->g(Lcom/keniu/security/software/APKManagerActivity;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 153
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 156
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/a;->b(Z)V

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;Z)Z

    goto :goto_2

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    iget v0, v0, Lcom/keniu/security/d/a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->e(Lcom/keniu/security/software/APKManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    .line 163
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 166
    invoke-virtual {v0, v3}, Lcom/keniu/security/d/a;->b(Z)V

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v3}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;Z)Z

    goto/16 :goto_2

    :cond_7
    move v1, v2

    .line 172
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/a;

    .line 175
    invoke-virtual {v0, v2}, Lcom/keniu/security/d/a;->b(Z)V

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 177
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/keniu/security/software/c;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;Z)Z

    goto/16 :goto_2
.end method
