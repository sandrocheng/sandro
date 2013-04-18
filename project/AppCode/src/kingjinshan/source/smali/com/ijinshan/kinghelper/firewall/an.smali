.class final Lcom/ijinshan/kinghelper/firewall/an;
.super Ljava/lang/Object;
.source "FirewallSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/an;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

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

    .line 159
    check-cast p1, Lcom/ijinshan/kpref/ListPreference;

    .line 160
    invoke-virtual {p1}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 163
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/an;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    const v2, 0x7f0b0027

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/ListPreference;->b(Ljava/lang/String;)V

    .line 167
    return v4
.end method
