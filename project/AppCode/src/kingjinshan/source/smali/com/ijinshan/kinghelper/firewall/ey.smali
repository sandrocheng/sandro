.class final Lcom/ijinshan/kinghelper/firewall/ey;
.super Ljava/lang/Object;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ey;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ey;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ey;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f080094
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
