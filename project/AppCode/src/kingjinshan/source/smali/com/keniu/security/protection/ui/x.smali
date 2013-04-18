.class final Lcom/keniu/security/protection/ui/x;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    iput-object p2, p0, Lcom/keniu/security/protection/ui/x;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/keniu/security/protection/ui/x;->a:Landroid/view/View;

    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-object v1, p0, Lcom/keniu/security/protection/ui/x;->a:Landroid/view/View;

    const v2, 0x7f080352

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    iget-object v2, p0, Lcom/keniu/security/protection/ui/x;->a:Landroid/view/View;

    const v3, 0x7f080354

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const v0, 0x7f0b060b

    move v2, v0

    move v0, v4

    .line 257
    :goto_0
    if-eqz v0, :cond_8

    .line 258
    iget-object v0, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {p1, v5}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 259
    iget-object v0, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {v3, v0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const v0, 0x7f0b060c

    move v2, v0

    move v0, v4

    .line 229
    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const v0, 0x7f0b060d

    move v2, v0

    move v0, v4

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const v0, 0x7f0b060e

    move v2, v0

    move v0, v4

    .line 235
    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    const v0, 0x7f0b0612

    move v2, v0

    move v0, v4

    .line 238
    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_5

    .line 240
    const v0, 0x7f0b060f

    move v2, v0

    move v0, v4

    .line 241
    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_6

    .line 243
    const v0, 0x7f0b0610

    move v2, v0

    move v0, v4

    .line 244
    goto :goto_0

    .line 246
    :cond_6
    const-string v0, "[A-Za-z0-9]{6,12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 249
    if-nez v0, :cond_7

    .line 250
    const v0, 0x7f0b0611

    move v2, v0

    move v0, v4

    .line 251
    goto :goto_0

    .line 253
    :cond_7
    const v0, 0x7f0b0604

    move v2, v0

    move v0, v5

    .line 254
    goto :goto_0

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/protection/ui/x;->b:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-static {p1, v4}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Landroid/content/DialogInterface;Z)V

    goto :goto_1
.end method
