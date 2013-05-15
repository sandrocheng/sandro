.class Lcom/avast/android/generic/app/account/q;
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
    .line 203
    iput-object p1, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/q;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 216
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->j(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->k(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v2}, Lcom/avast/android/generic/app/account/AccountFragment;->l(Lcom/avast/android/generic/app/account/AccountFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0

    .line 225
    :cond_2
    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->o(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/avast/android/generic/util/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/avast/android/generic/util/aa;->a(Ljava/lang/String;)Lcom/avast/android/generic/util/ab;

    move-result-object v0

    .line 232
    sget-object v2, Lcom/avast/android/generic/util/ab;->a:Lcom/avast/android/generic/util/ab;

    if-ne v0, v2, :cond_4

    .line 233
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->p(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/z;->L:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 244
    :cond_4
    sget-object v2, Lcom/avast/android/generic/util/ab;->c:Lcom/avast/android/generic/util/ab;

    if-ne v0, v2, :cond_5

    .line 245
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/z;->F:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :goto_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/z;->cu:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/avast/android/generic/app/account/q;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    return-void
.end method
