.class final Lcom/keniu/security/protection/ui/j;
.super Ljava/lang/Object;
.source "PreventTheftGuideECActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    iget-object v0, v0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const v0, 0x7f0b07bd

    move v1, v0

    move v0, v2

    .line 97
    :goto_0
    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    const v1, 0x7f0b07c1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    :goto_1
    return-void

    .line 80
    :cond_0
    const-string v1, "1[0-9]{10}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    const v0, 0x7f0b07be

    move v1, v0

    move v0, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-virtual {v1}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    move v1, v2

    .line 94
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/ui/j;->a:Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
