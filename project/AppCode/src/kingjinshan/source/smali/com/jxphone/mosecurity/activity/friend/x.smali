.class final Lcom/jxphone/mosecurity/activity/friend/x;
.super Ljava/lang/Thread;
.source "FriendCallLogActivity.java"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/jxphone/mosecurity/activity/friend/t;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/t;Ljava/util/List;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/x;->c:Lcom/jxphone/mosecurity/activity/friend/t;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/x;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/friend/x;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 757
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/x;->c:Lcom/jxphone/mosecurity/activity/friend/t;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->d(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v2

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/x;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    invoke-interface {v2, v0}, Lcom/jxphone/mosecurity/logic/a/g;->b(Lcom/jxphone/mosecurity/c/j;)Z

    .line 759
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/x;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 757
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/x;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 762
    return-void
.end method