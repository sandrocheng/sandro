.class final Lcom/ijinshan/kinghelper/firewall/cr;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cr;->b:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/cr;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->f()V

    .line 223
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cr;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    return-void
.end method
