.class final Lcom/ijinshan/kinghelper/firewall/ao;
.super Ljava/lang/Object;
.source "FirewallSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ao;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ao;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ao;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 203
    return-void
.end method
