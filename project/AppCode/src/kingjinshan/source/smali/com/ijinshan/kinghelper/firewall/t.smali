.class final Lcom/ijinshan/kinghelper/firewall/t;
.super Ljava/lang/Object;
.source "FirewallDeskSMSActivityApiLevel4.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/t;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/t;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/t;->a:Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;

    const-string v1, "0"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;->a(Lcom/ijinshan/kinghelper/firewall/FirewallDeskSMSActivityApiLevel4;I)V

    .line 162
    :cond_0
    return-void
.end method
