.class Lcom/avast/android/generic/ui/g;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/ChangePasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v0

    if-ge v0, v8, :cond_4

    move v0, v1

    .line 243
    :goto_1
    iget-object v3, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v3}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_5

    move v3, v1

    .line 244
    :goto_2
    const-string v4, "0000"

    iget-object v5, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v5}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 246
    iget-object v4, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v4}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v1

    .line 248
    :goto_3
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-eqz v4, :cond_7

    :cond_1
    move v0, v1

    .line 251
    :goto_4
    if-eqz v0, :cond_8

    .line 252
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :goto_5
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v6

    iget-object v7, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v7}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v7

    if-lt v6, v7, :cond_9

    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 258
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_6
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->length()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v7}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 266
    :goto_7
    if-nez v0, :cond_2

    if-eqz v1, :cond_f

    .line 268
    :cond_2
    if-eqz v1, :cond_b

    .line 269
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/z;->ab:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_8
    iget-object v1, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 242
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 243
    goto/16 :goto_2

    :cond_6
    move v4, v2

    .line 246
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 248
    goto/16 :goto_4

    .line 254
    :cond_8
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->d(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 260
    :cond_9
    iget-object v6, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_a
    move v1, v2

    .line 263
    goto :goto_7

    .line 270
    :cond_b
    if-eqz v4, :cond_c

    .line 271
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/z;->m:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 272
    :cond_c
    if-eqz v3, :cond_d

    .line 273
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/z;->v:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 274
    :cond_d
    if-eqz v5, :cond_e

    .line 275
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/z;->G:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 277
    :cond_e
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/z;->cN:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 283
    :cond_f
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->e(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/avast/android/generic/ui/g;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->f(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    return-void
.end method
