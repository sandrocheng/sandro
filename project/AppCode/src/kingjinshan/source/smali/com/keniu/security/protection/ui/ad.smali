.class final Lcom/keniu/security/protection/ui/ad;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ad;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/keniu/security/protection/ui/ad;->b:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/keniu/security/protection/ui/ad;->c:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 128
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 129
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/ad;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 132
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 133
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 134
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ad;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/ae;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/ae;-><init>(Lcom/keniu/security/protection/ui/ad;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 144
    iget-object v1, p0, Lcom/keniu/security/protection/ui/ad;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const v2, 0x7f0b0218

    invoke-virtual {v1, v2}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/af;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/protection/ui/af;-><init>(Lcom/keniu/security/protection/ui/ad;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 153
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    move v0, v3

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
