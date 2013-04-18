.class final Lcom/ijinshan/kinghelper/firewall/ae;
.super Ljava/lang/Object;
.source "FirewallLogTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TabHost;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;Landroid/widget/TabHost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ae;->b:Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    sparse-switch p2, :sswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 175
    :sswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 181
    :sswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 184
    :sswitch_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 187
    :sswitch_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ae;->a:Landroid/widget/TabHost;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080138 -> :sswitch_0
        0x7f080139 -> :sswitch_1
        0x7f080141 -> :sswitch_2
        0x7f080142 -> :sswitch_4
        0x7f080155 -> :sswitch_3
    .end sparse-switch
.end method
