.class final Lcom/keniu/security/protection/ui/ac;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const v0, 0x7f0b07bd

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    return-void

    .line 334
    :cond_0
    const-string v1, "1[0-9]{10}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 337
    if-nez v1, :cond_1

    .line 338
    const v0, 0x7f0b07be

    goto :goto_0

    .line 341
    :cond_1
    const v1, 0x7f0b07c0

    .line 342
    iget-object v2, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v2, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->b(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/protection/ui/ac;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0
.end method
