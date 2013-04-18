.class final Lcom/ijinshan/kinghelper/firewall/ds;
.super Ljava/lang/Object;
.source "ServicesSmsDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ds;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    packed-switch p2, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ds;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
