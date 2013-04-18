.class final Lcom/keniu/security/commumgr/d;
.super Ljava/lang/Object;
.source "CallLocateSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/CallLocateSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/CallLocateSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/keniu/security/commumgr/d;->a:Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/keniu/security/commumgr/d;->a:Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    const-string v1, "IsLockedinCalling"

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/CallLocateSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 60
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IsLockedinCalling"

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/keniu/security/commumgr/d;->a:Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v4}, Lcom/keniu/security/a;->b(Z)V

    .line 72
    :cond_0
    :goto_0
    check-cast p1, Lcom/ijinshan/kpref/ListPreference;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->c(Ljava/lang/String;)I

    move-result v0

    .line 76
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 81
    return v4

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/commumgr/d;->a:Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Lcom/keniu/security/a;->b(Z)V

    goto :goto_0
.end method
