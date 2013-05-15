.class Lcom/avast/android/generic/app/account/r;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/r;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 182
    :goto_0
    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->g(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->h(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->i(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->g(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 180
    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->i(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->g(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->g(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/avast/android/generic/app/account/r;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->i(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    return-void
.end method
