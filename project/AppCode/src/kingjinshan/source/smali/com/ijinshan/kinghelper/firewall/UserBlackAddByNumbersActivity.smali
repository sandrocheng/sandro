.class public Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;
.super Landroid/app/Activity;
.source "UserBlackAddByNumbersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "UserWhiteBlackAddActivity_rule"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ijinshan/kinghelper/firewall/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const v0, 0x7f0b00da

    new-array v1, v9, [Ljava/lang/Object;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v8

    .line 120
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v6, v0

    :goto_1
    invoke-static {v2, v6, v7}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const v0, 0x7f0b00dc

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v8

    .line 89
    goto :goto_0

    .line 82
    :cond_1
    const-wide/16 v6, -0x1

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const v4, 0x7f0b00c5

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v9

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v0, :cond_5

    .line 106
    invoke-static {v1, v2, v3, v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    .line 114
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 115
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    move v0, v9

    goto :goto_0

    .line 97
    :cond_3
    const v4, 0x7f0b00c6

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const v4, 0x7f0b00c7

    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const/4 v0, 0x3

    move v4, v0

    goto :goto_2

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 117
    :cond_6
    const v2, 0x7f0b05ca

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_7
    move v0, v8

    .line 120
    goto/16 :goto_0

    :cond_8
    move v4, v9

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v8, -0x1

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f08002f

    if-ne v0, v2, :cond_9

    .line 127
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00da

    new-array v1, v7, [Ljava/lang/Object;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    move v0, v6

    :goto_1
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->finish()V

    .line 134
    :cond_1
    :goto_2
    return-void

    .line 127
    :cond_2
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v3, v0

    :goto_3
    invoke-static {v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b00dc

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const-wide/16 v3, -0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b00c5

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v4, v7

    :goto_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v8, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v7

    goto :goto_1

    :cond_5
    const v3, 0x7f0b00c6

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    const v3, 0x7f0b00c7

    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    move v4, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(IILjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_5

    :cond_8
    const v2, 0x7f0b05ca

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 131
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080030

    if-ne v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->finish()V

    goto/16 :goto_2

    :cond_a
    move v4, v7

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->setResult(I)V

    .line 36
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->d:Landroid/widget/Button;

    .line 41
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->e:Landroid/widget/Button;

    .line 43
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->f:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    .line 48
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    .line 50
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    if-ne v0, v4, :cond_1

    .line 57
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->g:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
