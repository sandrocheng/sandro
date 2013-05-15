.class Lcom/avast/android/generic/app/account/e;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->v(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "Avast! Account setup"

    const-string v3, "connect"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->j(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->k(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->l(Lcom/avast/android/generic/app/account/AccountFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->o(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {v0}, Lcom/avast/android/generic/util/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->h(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->c(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->w(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/avast/android/generic/util/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->p(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 857
    :cond_4
    :goto_0
    return-void

    .line 847
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    iget-object v2, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->x(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->h(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->c(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->w(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    :cond_7
    iget-object v0, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->x(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/app/account/e;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
