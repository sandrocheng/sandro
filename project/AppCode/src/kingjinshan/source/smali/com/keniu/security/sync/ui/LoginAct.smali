.class public Lcom/keniu/security/sync/ui/LoginAct;
.super Lcom/keniu/security/sync/ui/HelperBaseTitleAct;
.source "LoginAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/AutoCompleteTextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;-><init>()V

    .line 98
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/keniu/security/sync/c/f;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->d:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/sync/c/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/keniu/security/sync/ui/LoginAct;->g:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_1
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/LoginAct;->finish()V

    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v1, "http://i.ijinshan.com/jump.php?act=forget_mobile&source=mosecurity&mobile="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const v0, 0x7f0b0872

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 165
    :cond_2
    const v0, 0x7f0b0873

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 168
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/keniu/security/sync/r;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/keniu/security/sync/c/f;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/LoginAct;->d:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/c/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "true"

    :goto_1
    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/c/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const v0, 0x7f0b086c

    invoke-static {p0, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 168
    :cond_4
    :try_start_1
    const-string v1, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x7f080233
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0x1b

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const v0, 0x7f030082

    const v1, 0x7f0b0840

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(Landroid/os/Bundle;II)V

    .line 46
    new-instance v0, Lcom/keniu/security/sync/j;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/sync/j;-><init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;B)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->d:Landroid/os/Handler;

    .line 48
    const v0, 0x7f080234

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->a:Landroid/widget/Button;

    .line 49
    const v0, 0x7f08022f

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->b:Landroid/widget/AutoCompleteTextView;

    .line 50
    const v0, 0x7f080231

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->c:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->g:Landroid/widget/CheckBox;

    .line 53
    const v0, 0x7f080233

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->h:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    .line 63
    invoke-static {p0}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    aput-object v1, v0, v4

    .line 69
    :cond_1
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v2

    .line 70
    invoke-virtual {v2, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 71
    const-string v3, "user_name"

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const-string v3, "user_name"

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    aget-object v1, v0, v4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    aput-object v2, v0, v4

    .line 81
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000a

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/LoginAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    const v0, 0x7f080235

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/LoginAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->i:Landroid/widget/TextView;

    .line 86
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b0845

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/LoginAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v1, Lcom/keniu/security/sync/ui/g;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/g;-><init>(Lcom/keniu/security/sync/ui/LoginAct;)V

    .line 89
    const/16 v2, 0x11

    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/LoginAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->i:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    return-void

    .line 77
    :cond_3
    aput-object v2, v0, v5

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    .line 144
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    .line 131
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onPause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/keniu/security/sync/ui/LoginAct;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/LoginAct;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-super {p0}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->onResume()V

    .line 139
    return-void
.end method
