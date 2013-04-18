.class final Lcom/jxphone/mosecurity/activity/friend/aa;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/b;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/z;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/z;Lcom/jxphone/mosecurity/activity/friend/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/aa;->b:Lcom/jxphone/mosecurity/activity/friend/z;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/aa;->a:Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/aa;->a:Lcom/jxphone/mosecurity/activity/friend/b;

    iput-boolean p2, v0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 417
    return-void
.end method
