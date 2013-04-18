.class final Lcom/ijinshan/kinghelper/firewall/am;
.super Ljava/lang/Object;
.source "FirewallSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/am;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/am;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 137
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/am;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    const-string v1, "set_uncklj"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/am;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/am;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
