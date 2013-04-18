.class final Lcom/ijinshan/kinghelper/firewall/fb;
.super Ljava/lang/Object;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/fb;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/fb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/fb;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/fb;->a:I

    invoke-static {v0, p2, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;II)V

    .line 442
    return-void
.end method
