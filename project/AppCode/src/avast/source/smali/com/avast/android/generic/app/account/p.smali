.class Lcom/avast/android/generic/app/account/p;
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
    .line 99
    iput-object p1, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/p;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

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

    .line 110
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 111
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->b(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v4

    .line 113
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->c(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v3, :cond_2

    .line 114
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->d(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    const/4 v0, 0x7

    if-ge v3, v0, :cond_3

    move v0, v1

    .line 122
    :goto_0
    const-string v5, "0000"

    iget-object v6, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v6}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 125
    if-nez v0, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    move v0, v1

    .line 127
    :goto_1
    if-eqz v0, :cond_5

    .line 128
    iget-object v6, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v6}, Lcom/avast/android/generic/app/account/AccountFragment;->d(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :goto_2
    if-lt v4, v3, :cond_6

    if-lez v4, :cond_6

    .line 134
    iget-object v3, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/AccountFragment;->f(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :goto_3
    if-lez v4, :cond_7

    iget-object v3, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v4}, Lcom/avast/android/generic/app/account/AccountFragment;->b(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 142
    :goto_4
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->c(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 144
    :cond_1
    if-eqz v1, :cond_8

    .line 145
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v1, Lcom/avast/android/generic/z;->ab:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_5
    iget-object v1, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->e(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->e(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->f(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_6
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->d(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->e(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_3
    move v0, v2

    .line 121
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 125
    goto/16 :goto_1

    .line 130
    :cond_5
    iget-object v6, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v6}, Lcom/avast/android/generic/app/account/AccountFragment;->d(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 136
    :cond_6
    iget-object v3, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/AccountFragment;->f(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    move v1, v2

    .line 139
    goto :goto_4

    .line 146
    :cond_8
    if-eqz v5, :cond_9

    .line 147
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v1, Lcom/avast/android/generic/z;->G:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v1, Lcom/avast/android/generic/z;->cN:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 156
    :cond_a
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->e(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/avast/android/generic/app/account/p;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->f(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    return-void
.end method
