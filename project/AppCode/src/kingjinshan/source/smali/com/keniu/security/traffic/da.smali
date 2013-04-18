.class final Lcom/keniu/security/traffic/da;
.super Ljava/lang/Object;
.source "TrafficTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficTabActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/keniu/security/traffic/da;->a:Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    sparse-switch p2, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 110
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/da;->a:Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->a(Lcom/keniu/security/traffic/TrafficTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab_traffic_main"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/da;->a:Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->a(Lcom/keniu/security/traffic/TrafficTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab_soft_traffic"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/da;->a:Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->a(Lcom/keniu/security/traffic/TrafficTabActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab_traffic_settings"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x7f080138 -> :sswitch_0
        0x7f080139 -> :sswitch_1
        0x7f080141 -> :sswitch_2
    .end sparse-switch
.end method
