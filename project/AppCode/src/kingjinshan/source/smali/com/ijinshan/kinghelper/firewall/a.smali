.class final Lcom/ijinshan/kinghelper/firewall/a;
.super Ljava/lang/Object;
.source "DeskSmsSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/a;->a:Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 41
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/a;->a:Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;

    const-string v1, "set_unckdesk"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
