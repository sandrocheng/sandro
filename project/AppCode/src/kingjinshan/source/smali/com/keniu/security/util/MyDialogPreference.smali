.class public Lcom/keniu/security/util/MyDialogPreference;
.super Lcom/keniu/security/util/CustomDialogPreference;
.source "MyDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/util/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-super {p0, p1, p2}, Lcom/keniu/security/util/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 23
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/keniu/security/util/MyDialogPreference;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traffic_clear_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sput-boolean v2, Lcom/keniu/security/traffic/dd;->g:Z

    .line 26
    invoke-virtual {p0}, Lcom/keniu/security/util/MyDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->c(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/keniu/security/util/MyDialogPreference;->D()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 29
    sput-boolean v2, Lcom/keniu/security/traffic/TrafficSoftListActivity2;->a:Z

    .line 34
    :cond_0
    return-void
.end method
