.class final Lcom/keniu/security/main/ci;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/SettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    iget-object v0, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-static {v0}, Lcom/keniu/security/main/SettingActivity;->a(Lcom/keniu/security/main/SettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-boolean v3, v0, Lcom/keniu/security/traffic/y;->b:Z

    .line 74
    iget-object v0, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-static {v0}, Lcom/keniu/security/main/SettingActivity;->a(Lcom/keniu/security/main/SettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    const v2, 0x7f0b03c1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 76
    sput-boolean v3, Lcom/keniu/security/traffic/dd;->b:Z

    .line 77
    iget-object v0, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    move v0, v3

    .line 120
    :goto_0
    return v0

    .line 82
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 84
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 85
    const v1, 0x7f0b02a7

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 86
    const v1, 0x7f0b042d

    new-instance v2, Lcom/keniu/security/main/cj;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/cj;-><init>(Lcom/keniu/security/main/ci;Lcom/ijinshan/kpref/Preference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 106
    const v1, 0x7f0b021a

    new-instance v2, Lcom/keniu/security/main/ck;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/ck;-><init>(Lcom/keniu/security/main/ci;Lcom/ijinshan/kpref/Preference;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 118
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    move v0, v4

    .line 120
    goto :goto_0
.end method
