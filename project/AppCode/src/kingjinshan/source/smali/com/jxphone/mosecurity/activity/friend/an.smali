.class final Lcom/jxphone/mosecurity/activity/friend/an;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/am;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/am;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/an;->a:Lcom/jxphone/mosecurity/activity/friend/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/an;->a:Lcom/jxphone/mosecurity/activity/friend/am;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/am;->b:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/an;->a:Lcom/jxphone/mosecurity/activity/friend/am;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/am;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)V

    .line 601
    return-void
.end method
