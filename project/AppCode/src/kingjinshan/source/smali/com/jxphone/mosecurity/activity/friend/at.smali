.class final Lcom/jxphone/mosecurity/activity/friend/at;
.super Ljava/lang/Thread;
.source "FriendSmsActivity.java"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/jxphone/mosecurity/activity/friend/ap;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/ap;Ljava/util/List;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/at;->c:Lcom/jxphone/mosecurity/activity/friend/ap;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/at;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/friend/at;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 731
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/at;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/at;->c:Lcom/jxphone/mosecurity/activity/friend/ap;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->d(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v2

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/at;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/l;

    invoke-interface {v2, v0}, Lcom/jxphone/mosecurity/logic/a/j;->d(Lcom/jxphone/mosecurity/c/l;)Z

    .line 733
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/at;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 731
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/at;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 736
    return-void
.end method
