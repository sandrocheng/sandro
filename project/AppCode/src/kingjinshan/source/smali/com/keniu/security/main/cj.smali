.class final Lcom/keniu/security/main/cj;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/Preference;

.field final synthetic b:Lcom/keniu/security/main/ci;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/ci;Lcom/ijinshan/kpref/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/keniu/security/main/cj;->b:Lcom/keniu/security/main/ci;

    iput-object p2, p0, Lcom/keniu/security/main/cj;->a:Lcom/ijinshan/kpref/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/keniu/security/main/cj;->a:Lcom/ijinshan/kpref/Preference;

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/keniu/security/main/cj;->b:Lcom/keniu/security/main/ci;

    iget-object v0, v0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-static {v0}, Lcom/keniu/security/main/SettingActivity;->a(Lcom/keniu/security/main/SettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->b:Z

    .line 96
    iget-object v0, p0, Lcom/keniu/security/main/cj;->b:Lcom/keniu/security/main/ci;

    iget-object v0, v0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-static {v0}, Lcom/keniu/security/main/SettingActivity;->a(Lcom/keniu/security/main/SettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/cj;->b:Lcom/keniu/security/main/ci;

    iget-object v1, v1, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    const v2, 0x7f0b03c1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/keniu/security/main/cj;->b:Lcom/keniu/security/main/ci;

    iget-object v0, v0, Lcom/keniu/security/main/ci;->a:Lcom/keniu/security/main/SettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 104
    return-void
.end method
