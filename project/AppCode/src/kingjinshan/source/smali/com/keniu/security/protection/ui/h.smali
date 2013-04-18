.class final Lcom/keniu/security/protection/ui/h;
.super Ljava/lang/Object;
.source "PreventTheftGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0604

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    iget-object v0, v0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    iget-object v1, v1, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const v0, 0x7f0b0605

    move v1, v0

    move v0, v3

    .line 107
    :goto_0
    if-eqz v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    :goto_1
    return-void

    .line 78
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const v0, 0x7f0b0606

    move v1, v0

    move v0, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    const v0, 0x7f0b060a

    move v1, v0

    move v0, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 85
    const v0, 0x7f0b0607

    move v1, v0

    move v0, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_4

    .line 88
    const v0, 0x7f0b0608

    move v1, v0

    move v0, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const-string v1, "########"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v4

    move v1, v5

    .line 92
    goto :goto_0

    .line 94
    :cond_5
    const-string v1, "[A-Za-z0-9]{6,12}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 97
    if-nez v1, :cond_6

    .line 98
    const v0, 0x7f0b0611

    move v1, v0

    move v0, v3

    .line 99
    goto :goto_0

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->d(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v4

    move v1, v5

    .line 104
    goto :goto_0

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/protection/ui/h;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
